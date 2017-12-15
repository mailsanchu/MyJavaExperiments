package com.att.eg.catalog.cms.ingest.gitignore;

import com.couchbase.client.deps.io.netty.buffer.SwappedByteBuf;
import org.apache.wss4j.dom.engine.WSSConfig;
import org.apache.xml.security.encryption.EncryptedData;
import org.apache.xml.security.encryption.EncryptedKey;
import org.apache.xml.security.encryption.XMLCipher;
import org.joda.time.LocalDateTime;
import org.springframework.core.io.FileSystemResource;
import org.springframework.ws.soap.security.wss4j2.callback.KeyStoreCallbackHandler;
import org.springframework.ws.soap.security.wss4j2.callback.SimplePasswordValidationCallbackHandler;
import org.springframework.ws.soap.security.wss4j2.support.CryptoFactoryBean;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import sun.security.x509.X509CertImpl;

import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESedeKeySpec;
import javax.xml.crypto.dsig.*;
import javax.xml.crypto.dsig.dom.DOMSignContext;
import javax.xml.crypto.dsig.dom.DOMValidateContext;
import javax.xml.crypto.dsig.keyinfo.KeyInfo;
import javax.xml.crypto.dsig.keyinfo.KeyInfoFactory;
import javax.xml.crypto.dsig.keyinfo.KeyValue;
import javax.xml.crypto.dsig.spec.C14NMethodParameterSpec;
import javax.xml.namespace.QName;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.soap.*;
import javax.xml.transform.*;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.nio.charset.Charset;
import java.security.*;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import static org.apache.wss4j.common.ConfigurationConstants.ENCRYPT;
import static org.apache.wss4j.common.ConfigurationConstants.SIGNATURE;
import static org.apache.wss4j.common.ConfigurationConstants.TIMESTAMP;
import static org.apache.wss4j.dom.WSConstants.BST_DIRECT_REFERENCE;


/**
 * Construct a SOAP message, sign it and then validate the signature.
 * This implementation follows the
 * <a ref="http://www.w3.org/TR/SOAP-dsig/">
 * W3C Note on digital signatures in SOAP messages
 * </a>.
 * The validating key is included in the signature.
 * DOM Level 2 is used throughout.
 * <p>
 * The following SOAP message is signed:
 * <pre><code>
 *
 *     <?xml version="1.0" encoding="UTF-8"?>
 *     <soap-env:Envelope
 *      xmlns:soap-env="http://schemas.xmlsoap.org/soap/envelope/">
 *       <soap-env:Header>
 *         <SOAP-SEC:Signature
 *          mustUnderstand="1"
 *          xmlns:SOAP-SEC="http://schemas.xmlsoap.org/soap/security/2000-12"/>
 *       </soap-env:Header>
 *       <soap-env:Body id="Body">
 *         <m:GetLastTradePrice xmlns:m="http://wombats.ztrade.com">
 *           <symbol>SUNW</symbol>
 *         </m:GetLastTradePrice>
 *       </soap-env:Body>
 *     </soap-env:Envelope>
 *
 * </code></pre>
 */
public class SignedSoap {

    private static boolean debug = true;

    public static void main(String[] args) throws Exception {

        int argc = args.length;

        if (argc == 1) {
            if (args[0].equalsIgnoreCase("-help")) {
                System.out.println("Usage:  SignedSoap [-debug]");
                System.out.println("    -debug\tactivates debug messages");
                return;
            }
            debug = args[0].equalsIgnoreCase("-debug");
        }

        // Create the SOAP message

        System.out.println("Creating the SOAP message...");
      //  SOAPMessage soapMessage = MessageFactory.newInstance().createMessage();

        MessageFactory factory = MessageFactory.newInstance();
        String xml="<soapenv:Envelope xmlns:dl=\"http://ws.dttas.ie/v1/DL-WS/\" xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\"><soapenv:Header/><soapenv:Body/></soapenv:Envelope>";
        SOAPMessage soapMessage = factory.createMessage(new MimeHeaders(), new ByteArrayInputStream(xml.getBytes(Charset.forName("UTF-8"))));
        soapMessage.writeTo(System.out);
        SOAPPart soapPart =  soapMessage.getSOAPPart();
        SOAPEnvelope soapEnvelope = soapPart.getEnvelope();
/*        soapEnvelope.removeAttributeNS("http://schemas.xmlsoap.org/soap/envelope/","SOAP-ENV");
        soapEnvelope.addNamespaceDeclaration("dl", "http://ws.dttas.ie/v1/DL-WS/");
        soapEnvelope.addNamespaceDeclaration("soapenv", "http://schemas.xmlsoap.org/soap/envelope/");*/

        SOAPHeader soapHeader = soapEnvelope.getHeader();
/*        SOAPHeaderElement headerElement = soapHeader.addHeaderElement(
                soapEnvelope.createName("Signature", "SOAP-SEC",
                        "http://schemas.xmlsoap.org/soap/security/2000-12"));*/

        SOAPHeaderElement security = soapHeader.addHeaderElement(
                soapEnvelope.createName("Security", "wsse", "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"));
        security.addNamespaceDeclaration("wsu", "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd");
       // SOAPElement soapHeaderElement = security.addChildElement(soapEnvelope.createName("Timestamp", "wsu", "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"));
       // soapHeaderElement.addAttribute(soapEnvelope.createName("id", "SOAP-SEC",
             //   "http://schemas.xmlsoap.org/soap/security/2000-12"), "uuid-a4acf53b-0139-4508-ac75-5baacb1e8553-1");
        /*Name created = soapEnvelope.createName("Created", "wsu", "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd");
        SOAPElement createdSoapElement = soapHeaderElement.addChildElement(created);
        LocalDateTime localDateTime = LocalDateTime.now();
        createdSoapElement.addTextNode(DateUtils.add(localDateTime));
        createdSoapElement.addTextNode("2017-12-14T21:23:11.334Z");
        Name expired = soapEnvelope.createName("Expires", "wsu", "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd");
        SOAPElement expiredSoapElement = soapHeaderElement.addChildElement(expired);
        // SOAPElement expiredSoapElement = soapHeaderElement.addChildElement(expired);
        expiredSoapElement.addTextNode("2017-12-14T21:28:11.334Z");
        // timeStamp.addChildElement("")
*/
        SOAPBody soapBody = soapEnvelope.getBody();
   /*     soapBody.addAttribute(soapEnvelope.createName("id", "SOAP-SEC",
                "http://schemas.xmlsoap.org/soap/security/2000-12"), "Body");*/
        Name bodyName = soapEnvelope.createName("GetLastTradePrice", "m",
                "http://wombats.ztrade.com");
        SOAPBodyElement gltp = soapBody.addBodyElement(bodyName);
        Name name = soapEnvelope.createName("symbol");
        SOAPElement symbol = gltp.addChildElement(name);
        symbol.addTextNode("SUNW");

        // Generate a DOM representation of the SOAP message

        System.out.println("Generating the DOM tree...");
        // Get input source
        Source source = soapPart.getContent();
        org.w3c.dom.Node root = null;

        if (source instanceof DOMSource) {
            root = ((DOMSource) source).getNode();

        } else if (source instanceof SAXSource) {
            InputSource inSource = ((SAXSource) source).getInputSource();
            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
            dbf.setNamespaceAware(true);
            DocumentBuilder db = null;

            synchronized (dbf) {
                db = dbf.newDocumentBuilder();
            }
            Document doc = db.parse(inSource);
            root = (org.w3c.dom.Node) doc.getDocumentElement();

        } else {
            System.err.println("error: cannot convert SOAP message (" +
                    source.getClass().getName() + ") into a W3C DOM tree");
            System.exit(-1);
        }

        if (debug) {
            dumpDOMDocument(root);
        }

        // Generate a DSA key pair

        System.out.println("Generating the DSA keypair...");

        KeyStore p12 = KeyStore.getInstance("pkcs12");
        char[] password = "ndlsonline".toCharArray();
        p12.load(new FileInputStream("/home/svarkey/D20160103/BUF/DLWSClientStore.p12"), password);
        PrivateKey privateKey = (PrivateKey) p12.getKey("wsstest", password);
        X509Certificate cert = (X509Certificate) p12.getCertificate("wsstest");
        KeyPair keyPair = new KeyPair(cert.getPublicKey(), privateKey);


        // Assemble the signature parts

        System.out.println("Preparing the signature...");
        String providerName = System.getProperty
                ("jsr105Provider", "org.jcp.xml.dsig.internal.dom.XMLDSigRI");
        XMLSignatureFactory sigFactory = XMLSignatureFactory.getInstance("DOM",
                (Provider) Class.forName(providerName).newInstance());
        Reference bodyRef = sigFactory.newReference("#Body",
                sigFactory.newDigestMethod(DigestMethod.SHA1, null));
        Reference timeStampIdRef = sigFactory.newReference("#uuid-a4acf53b-0139-4508-ac75-5baacb1e8553-1",
                sigFactory.newDigestMethod(DigestMethod.SHA1, null));
        SignedInfo signedInfo = sigFactory.newSignedInfo(
                sigFactory.newCanonicalizationMethod(
                        CanonicalizationMethod.INCLUSIVE_WITH_COMMENTS,
                        (C14NMethodParameterSpec) null),
                sigFactory.newSignatureMethod(SignatureMethod.RSA_SHA1, null),
                Arrays.asList(bodyRef, timeStampIdRef));
        KeyInfoFactory kif = sigFactory.getKeyInfoFactory();
        KeyValue kv = kif.newKeyValue(keyPair.getPublic());
        KeyInfo keyInfo = kif.newKeyInfo(Collections.singletonList(kv));

        XMLSignature sig = sigFactory.newXMLSignature(signedInfo, keyInfo);

        // Insert XML signature into DOM tree and sign

        System.out.println("Signing the SOAP message...");
        Element envelope = getFirstChildElement(root);
        Element header = getFirstChildElement(envelope);


        // Find where to insert signature
 /*
        DOMSignContext sigContext =
                new DOMSignContext(keyPair.getPrivate(), header);
        // Need to distinguish the Signature element in DSIG (from that in SOAP)
        sigContext.putNamespacePrefix(XMLSignature.XMLNS, "ds");
        // register Body ID attribute
        sigContext.setIdAttributeNS
                (getNextSiblingElement(header),
                        "http://schemas.xmlsoap.org/soap/security/2000-12", "id");
        sigContext.setIdAttributeNS
                (soapHeaderElement,
                        "http://schemas.xmlsoap.org/soap/security/2000-12", "id");
        sig.sign(sigContext);*/

        if (debug) {
            dumpDOMDocument(root);
        }

        // Validate the XML signature
        X509Certificate publicCert = (X509Certificate) p12.getCertificate("wsstestservice");
        sun.security.x509.X509CertImpl x509Cert = (X509CertImpl) publicCert;
        x509Cert.derEncode(System.out);
        final String DESEDE_ENCRYPTION_SCHEME = "DESede";
        SecretKeyFactory mySecretKeyFactory;

        DESedeKeySpec myKeySpec = new DESedeKeySpec(publicCert.getEncoded());
        mySecretKeyFactory = SecretKeyFactory.getInstance(DESEDE_ENCRYPTION_SCHEME);
        SecretKey key = mySecretKeyFactory.generateSecret(myKeySpec);

        SanchuTest securityInterceptor = new SanchuTest();
        // securityInterceptor.setSecurementActions(ENCRYPT);
     //   securityInterceptor.setSecurementActions(TIMESTAMP) ;
        securityInterceptor.setSecurementActions(TIMESTAMP + " " + SIGNATURE) ;
        // WSSConfig newInstance = WSSConfig.getNewInstance();
        //securityInterceptor.setWssConfig(newInstance);
        securityInterceptor.setTimestampPrecisionInMilliseconds(true);
        SimplePasswordValidationCallbackHandler samlCallbackHandler = new SimplePasswordValidationCallbackHandler();
//        samlCallbackHandler.setPrivateKeyPassword("ndlsonline");
        //securityInterceptor.setH(samlCallbackHandler);
        securityInterceptor.setSecurementTimeToLive(5000);
        CryptoFactoryBean cryptoFactoryBean  = new CryptoFactoryBean();
        cryptoFactoryBean.setKeyStoreLocation(new FileSystemResource(new File("/home/svarkey/D20160103/BUF/DLWSClientStore.p12")));
        cryptoFactoryBean.setKeyStorePassword("ndlsonline");
        securityInterceptor.setSecurementPassword("ndlsonline");
        cryptoFactoryBean.afterPropertiesSet();
        securityInterceptor.setSecurementSignatureCrypto(cryptoFactoryBean.getObject());
        securityInterceptor.setSecurementUsername("wsstest");
        //This will generate binarySecurityToken in header
        securityInterceptor.setSecurementSignatureKeyIdentifier("DirectReference");
        securityInterceptor.setSecurementSignatureParts("{Element}{http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd}Timestamp;{Element}{http://schemas.xmlsoap.org/soap/envelope/}Body");
        //securityInterceptor.setDerivedTokenReference
     //   securityInterceptor.setValidateRequest(true);
        securityInterceptor.testA(soapMessage,samlCallbackHandler);
//        soapMessage.writeTo(System.out);

        // encryptUsingDOM(soapEnvelope.getOwnerDocument(), Arrays.asList(soapBody.getElementQName()),
        //     TRIPLEDES.toString(), key,
        //   null, null, true);

        System.exit(0);
        // Locate the signature element
        Element sigElement = getFirstChildElement(header);
        // Validate the signature using the public key generated above
        DOMValidateContext valContext =
                new DOMValidateContext(keyPair.getPublic(), sigElement);
        // register Body ID attribute
        valContext.setIdAttributeNS
                (getNextSiblingElement(header),
                        "http://schemas.xmlsoap.org/soap/security/2000-12", "id");
        boolean isValid = sig.validate(valContext);
        System.out.println("Validating the signature... " +
                (isValid ? "valid" : "invalid"));

    }

    /**
     * Encrypt the document using the DOM API of Apache Santuario - XML Security for Java.
     * It encrypts a list of QNames that it finds in the Document via XPath. If a wrappingKey
     * is supplied, this is used to encrypt the encryptingKey + place it in an EncryptedKey
     * structure.
     */
    public static void encryptUsingDOM(
            Document document,
            List<QName> namesToEncrypt,
            String algorithm,
            Key encryptingKey,
            String keyTransportAlgorithm,
            PublicKey wrappingKey,
            boolean content
    ) throws Exception {
        org.apache.xml.security.Init.init();
        System.out.println(encryptingKey.getAlgorithm());
        System.out.println(encryptingKey.getClass());
        XMLCipher xmlCipher = XMLCipher.getInstance(XMLCipher.TRIPLEDES);
        xmlCipher.init(XMLCipher.ENCRYPT_MODE, encryptingKey);

        if (wrappingKey != null) {
            XMLCipher newCipher = XMLCipher.getInstance(keyTransportAlgorithm);
            newCipher.init(XMLCipher.WRAP_MODE, wrappingKey);

            EncryptedKey encryptedKey = newCipher.encryptKey(document, encryptingKey);
            // Create a KeyInfo for the EncryptedKey
            org.apache.xml.security.keys.KeyInfo encryptedKeyKeyInfo = encryptedKey.getKeyInfo();
            if (encryptedKeyKeyInfo == null) {
                encryptedKeyKeyInfo = new org.apache.xml.security.keys.KeyInfo(document);
                encryptedKeyKeyInfo.getElement().setAttributeNS(
                        "http://www.w3.org/2000/xmlns/", "xmlns:dsig", "http://www.w3.org/2000/09/xmldsig#"
                );
                encryptedKey.setKeyInfo(encryptedKeyKeyInfo);
            }
            encryptedKeyKeyInfo.add(wrappingKey);

            // Create a KeyInfo for the EncryptedData
            EncryptedData builder = xmlCipher.getEncryptedData();
            org.apache.xml.security.keys.KeyInfo builderKeyInfo = builder.getKeyInfo();
            if (builderKeyInfo == null) {
                builderKeyInfo = new org.apache.xml.security.keys.KeyInfo(document);
                builderKeyInfo.getElement().setAttributeNS(
                        "http://www.w3.org/2000/xmlns/", "xmlns:dsig", "http://www.w3.org/2000/09/xmldsig#"
                );
                builder.setKeyInfo(builderKeyInfo);
            }

            builderKeyInfo.add(encryptedKey);
        }

        XPathFactory xpf = XPathFactory.newInstance();
        XPath xpath = xpf.newXPath();
        // xpath.setNamespaceContext(new DSNamespaceContext());

        for (QName nameToEncrypt : namesToEncrypt) {
            String expression = "//*[local-name()='" + nameToEncrypt.getLocalPart() + "']";
            NodeList elementsToEncrypt =
                    (NodeList) xpath.evaluate(expression, document, XPathConstants.NODESET);
            for (int i = 0; i < elementsToEncrypt.getLength(); i++) {
                Element elementToEncrypt = (Element) elementsToEncrypt.item(i);
                //Assert.assertNotNull(elementToEncrypt);
                document = xmlCipher.doFinal(document, elementToEncrypt, content);
                dumpDOMDocument(document);
            }
        }

        String expression = "//xenc:EncryptedData[1]";
        Element encElement =
                (Element) xpath.evaluate(expression, document, XPathConstants.NODE);
//        Assert.assertNotNull(encElement);
    }


    /*
    void encryptElement(Document xmlDocument, Key encryptSymmetricKey,
                        EncryptedKey encryptedKey, Element element)
            throws XMLEncryptionException, Exception {

        String algorithmURI = XMLCipher.AES_128;

        XMLCipher xmlCipher = XMLCipher.getInstance(algorithmURI);
        xmlCipher.init(XMLCipher.ENCRYPT_MODE, encryptSymmetricKey);

	*//*
     * Setting keyinfo inside the encrypted data being prepared.
	 *//*
        EncryptedData encryptedData = xmlCipher.getEncryptedData();
        KeyInfo keyInfo = new DOMKeyInfo(xmlDocument);
        keyInfo.add(encryptedKey);
        encryptedData.setKeyInfo(keyInfo);

        xmlCipher.doFinal(xmlDocument, element, true);
    }*/
    /*
     * Outputs DOM representation to the standard output stream.
     *
     * @param root The DOM representation to be outputted
     */
    private static void dumpDOMDocument(org.w3c.dom.Node root)
            throws TransformerException, TransformerConfigurationException, ParserConfigurationException {

        System.out.println("\n");
        // Create a new transformer object
        Transformer transformer =
                TransformerFactory.newInstance().newTransformer();
        transformer.setOutputProperty(OutputKeys.INDENT, "yes");
        // Dump the DOM representation to standard output
        transformer.transform(new DOMSource(root), new StreamResult(System.out));
        System.out.println(root.getOwnerDocument());
       /* DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        factory.setNamespaceAware(true);
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document newDocument = builder.newDocument();
        org.w3c.dom.Node importedNode = newDocument.importNode(root, true);
        newDocument.appendChild(importedNode);
        .PrettyDocumentToString(newDocument);*/
        System.out.println("\n");
    }

    /**
     * Returns the first child element of the specified node, or null if there
     * is no such element.
     *
     * @param node the node
     * @return the first child element of the specified node, or null if there
     * is no such element
     * @throws NullPointerException if <code>node == null</code>
     */
    private static Element getFirstChildElement(org.w3c.dom.Node node) {
        org.w3c.dom.Node child = node.getFirstChild();
        while (child != null &&
                child.getNodeType() != org.w3c.dom.Node.ELEMENT_NODE) {
            child = child.getNextSibling();
        }
        return (Element) child;
    }

    /**
     * Returns the next sibling element of the specified node, or null if there
     * is no such element.
     *
     * @param node the node
     * @return the next sibling element of the specified node, or null if there
     * is no such element
     * @throws NullPointerException if <code>node == null</code>
     */
    public static Element getNextSiblingElement(org.w3c.dom.Node node) {
        org.w3c.dom.Node sibling = node.getNextSibling();
        while (sibling != null &&
                sibling.getNodeType() != org.w3c.dom.Node.ELEMENT_NODE) {
            sibling = sibling.getNextSibling();
        }
        return (Element) sibling;
    }
}