package com.att.eg.catalog.cms.ingest.gitignore;

import org.w3c.dom.Element;

import javax.xml.crypto.dsig.*;
import javax.xml.crypto.dsig.dom.DOMSignContext;
import javax.xml.crypto.dsig.keyinfo.KeyInfo;
import javax.xml.crypto.dsig.keyinfo.KeyInfoFactory;
import javax.xml.crypto.dsig.keyinfo.KeyValue;
import javax.xml.crypto.dsig.spec.C14NMethodParameterSpec;
import javax.xml.soap.*;
import javax.xml.transform.stream.StreamSource;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.StringReader;
import java.security.KeyPair;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.cert.*;
import java.util.*;

import static com.sun.org.apache.xml.internal.security.signature.XMLSignature.ALGO_ID_SIGNATURE_RSA_SHA1;

public class TestClass {

    private static String ENVELOPE = "<soapenv:Envelope " +
            "xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\"\n" +
            "xmlns:SOAP-SEC=\"http://schemas.xmlsoap.org/soap/security/2000-12\"\n" +
            "  xmlns:ns=\"http://example.com/ns\">\n" +
            "   <soapenv:Header/>\n" +
            "   <soapenv:Body id=\"Demo\">\n" +
            "     <ns:request>\n" +
            "      <ns:customer>\n" +
            "       <ns:id>123</ns:id>\n" +
            "       <ns:name type=\"NCHZ\">John Brown</ns:name>\n" +
            "      </ns:customer>\n" +
            "     </ns:request>\n" +
            "   </soapenv:Body>\n" +
            "</soapenv:Envelope>";

    public static SOAPMessage readSoapMessage() throws SOAPException,
            FileNotFoundException {
        SOAPMessage message = MessageFactory.newInstance().createMessage();
        SOAPPart soapPart = message.getSOAPPart();
        soapPart.setContent(new StreamSource(new StringReader(ENVELOPE)));
        message.saveChanges();
        return message;
    }

    private static Element getFirstChildElement(Node node) {
        Node child = (Node) node.getFirstChild();
        while ((child != null) && (child.getNodeType() != Node.ELEMENT_NODE)) {
            child = (Node) child.getNextSibling();
        }
        return (Element) child;
    }

    public static Element getNextSiblingElement(Node node) {
        Node sibling = (Node) node.getNextSibling();
        while ((sibling != null) && (sibling.getNodeType() != Node.ELEMENT_NODE)) {
            sibling = (Node) sibling.getNextSibling();
        }
        return (Element) sibling;
    }

    public static void main(String[] args) throws Exception {

        KeyStore p12 = KeyStore.getInstance("pkcs12");
        char[] password = "ndlsonline".toCharArray();
        p12.load(new FileInputStream("/home/svarkey/D20160103/BUF/DLWSClientStore.p12"), password);
       // p12.load(new FileInputStream("//home/svarkey/D20160103/BUF/DLWSClientSSLStore.pfx"), password);

        X509Certificate cert = (X509Certificate) p12.getCertificate("wsstestservice");
        System.out.println(cert.getSerialNumber());
        System.out.println(new String(Base64.getEncoder().encode(cert.getEncoded())));

        System.out.println();
        System.out.println();
        System.out.println();
        System.out.println();
        System.out.println();
        System.out.println();
/*
        //System.exit(0);
        List<X509Certificate> certs = new ArrayList<>();
        Enumeration e = p12.aliases();
        while (e.hasMoreElements()) {
            String alias = (String) e.nextElement();
            X509Certificate c = (X509Certificate) p12.getCertificate(alias);
            certs.add(c);
        }*/

        java.security.cert.Certificate[] cchain = p12.getCertificateChain("wsstest");
        List<Certificate> mylist = new ArrayList();
        for (int i = 0; i < cchain.length; i++) {
            mylist.add(cchain[i]);
        }
        CertificateFactory cf = CertificateFactory.getInstance("X.509");
        CertPath cp = cf.generateCertPath(mylist);
        //System.out.println(cp.getEncoded());
        System.out.println(new String(Base64.getEncoder().encode(cp.getEncoded())));
       //System.out.println(new String(Base64.getEncoder().encode(mylist.get(0).getEncoded())));

        System.exit(0);

/*

        Set trust = new HashSet();
        trust.add(new TrustAnchor(cert, null));


        CollectionCertStoreParameters certStoreParams = new CollectionCertStoreParameters(certs);
        CertStore certStore = CertStore.getInstance("Collection", certStoreParams);

        // specify the target certificate via a CertSelector
        X509CertSelector certSelector = new X509CertSelector();
        X509Certificate userCert = (X509Certificate)p12.getCertificate("wsstest");
        certSelector.setCertificate(userCert);
        certSelector.setSubject(userCert.getSubjectDN().getName()); // seems to be required

        // build a valid cerificate path
        CertPathBuilder certPathBuilder = CertPathBuilder.getInstance("PKIX", "SUN");
        PKIXBuilderParameters certPathBuilderParams = new PKIXBuilderParameters(trust, certSelector);
        certPathBuilderParams.addCertStore(certStore);
        certPathBuilderParams.setRevocationEnabled(false);
        CertPathBuilderResult result = certPathBuilder.build(certPathBuilderParams);
        CertPath                  path = result.getCertPath();
*/

        //System.out.println(new String(Base64.getEncoder().encode(path.getEncoded())));

        //CertPathBuilderResult a = cpb.build(cpp);
        //CertPath certPath = a.getCertPath();

       /* CollectionCertStoreParameters certStoreParams = new CollectionCertStoreParameters(certs);
        CertStore certStore = CertStore.getInstance("Collection", certStoreParams);

        // specify the target certificate via a CertSelector
        X509CertSelector certSelector = new X509CertSelector();
        certSelector.setCertificate(userCert);
        certSelector.setSubject(userCert.getSubjectDN().getName()); // seems to be required

        // build a valid cerificate path
        CertPathBuilder certPathBuilder = CertPathBuilder.getInstance("PKIX", "SUN");
        PKIXBuilderParameters certPathBuilderParams = new PKIXBuilderParameters(trustAnchors, certSelector);
        certPathBuilderParams.addCertStore(certStore);
        certPathBuilderParams.setRevocationEnabled(false);
        CertPathBuilderResult result = certPathBuilder.build(certPathBuilderParams);*/


        System.exit(0);
        Enumeration e = p12.aliases();
        while (e.hasMoreElements()) {
            String alias = (String) e.nextElement();
            X509Certificate c = (X509Certificate) p12.getCertificate(alias);
            PrivateKey privateKey = (PrivateKey) p12.getKey(alias, password);
            System.out.println(alias + " alias " + (privateKey != null ? privateKey.getFormat() : null));
            X509Certificate cert1 = (X509Certificate) p12.getCertificate("wsstestservice");

            System.out.println(new String(Base64.getEncoder().encode(cert.getEncoded())));
            if (true) {
                continue;
            }
            KeyPair keyPair = new KeyPair(cert.getPublicKey(), privateKey);

            XMLSignatureFactory sigFactory = XMLSignatureFactory.getInstance();
            Reference ref = sigFactory.newReference("#Demo", sigFactory.newDigestMethod(DigestMethod.SHA1, null));
            SignedInfo signedInfo = sigFactory.newSignedInfo(sigFactory.newCanonicalizationMethod(
                    CanonicalizationMethod.INCLUSIVE_WITH_COMMENTS, (C14NMethodParameterSpec) null), sigFactory
                    .newSignatureMethod(SignatureMethod.DSA_SHA1, null), Collections.singletonList(ref));
            KeyInfoFactory kif = sigFactory.getKeyInfoFactory();
            KeyValue kv = kif.newKeyValue(keyPair.getPublic());
            KeyInfo keyInfo = kif.newKeyInfo(Collections.singletonList(kv));
            XMLSignature xmlSig = sigFactory.newXMLSignature(signedInfo, keyInfo);
            SOAPMessage envelope = readSoapMessage();
            SOAPEnvelope soapEnvelope = envelope.getSOAPPart().getEnvelope();
            System.out.println(soapEnvelope.getBody());
            System.out.println(soapEnvelope.getHeader());
            DOMSignContext sigContext = new DOMSignContext(privateKey, soapEnvelope.getBody());
            sigContext.putNamespacePrefix(XMLSignature.XMLNS, "SOAP-SEC");
            //sigContext.setIdAttributeNS(getNextSiblingElement(header),
            //a "http://schemas.xmlsoap.org/soap/security/2000-12", "id");
            xmlSig.sign(sigContext);


   /*         Principal subject = c.getSubjectDN();

            String subjectArray[] = subject.toString().split(",");
            for (String s : subjectArray) {
                String[] str = s.trim().split("=");
                String key = str[0];
                String value = str[1];
                //System.out.println(key + " - " + value);

            }*/
        }
    }
}
