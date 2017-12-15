package com.att.eg.catalog.cms.ingest.gitignore;

import com.sun.xml.internal.messaging.saaj.soap.MessageFactoryImpl;
import org.springframework.ws.context.DefaultMessageContext;
import org.springframework.ws.context.MessageContext;
import org.springframework.ws.soap.SoapMessage;
import org.springframework.ws.soap.saaj.SaajSoapMessage;
import org.springframework.ws.soap.saaj.SaajSoapMessageFactory;
import org.springframework.ws.soap.security.WsSecuritySecurementException;
import org.springframework.ws.soap.security.wss4j2.Wss4jSecurityInterceptor;
import org.springframework.ws.soap.security.wss4j2.callback.SimplePasswordValidationCallbackHandler;

import java.io.FileOutputStream;
import java.io.IOException;

public class SanchuTest extends Wss4jSecurityInterceptor {
    private SimplePasswordValidationCallbackHandler samlCallbackHandler;

    public void testA(javax.xml.soap.SOAPMessage soapMessage, SimplePasswordValidationCallbackHandler samlCallbackHandler) {
        this.samlCallbackHandler = samlCallbackHandler;
        SaajSoapMessage request = new SaajSoapMessage(soapMessage, (new MessageFactoryImpl()));
        secureMessage(request, new DefaultMessageContext(request, new SaajSoapMessageFactory(new MessageFactoryImpl())));

    }

    @Override
    protected void secureMessage(SoapMessage soapMessage, MessageContext messageContext) throws WsSecuritySecurementException {
        try {
            soapMessage.writeTo(new FileOutputStream("/tmp/b.xml"));
            messageContext.setProperty("derivedTokenKeyIdentifier","IssuerSerialL");
            super.secureMessage(soapMessage, messageContext);
            soapMessage.writeTo(new FileOutputStream("/tmp/q.xml"));
        } catch (IOException e) {
            e.printStackTrace();

        }
    }


}
