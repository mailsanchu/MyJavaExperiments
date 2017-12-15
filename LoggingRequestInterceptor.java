package com.att.eg.catalog.cms.ingest.gitignore;

import com.att.ajsc.common.discovery.datastore.rest.Status;
import com.att.ajsc.common.discovery.datastore.utils.ObjectMapperUtils;
import com.att.eg.monitoring.yawl.YawlLogger;
import com.fasterxml.jackson.core.util.DefaultIndenter;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectReader;
import com.fasterxml.jackson.databind.ObjectWriter;
import org.springframework.http.HttpRequest;
import org.springframework.http.client.ClientHttpRequestExecution;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.http.client.ClientHttpResponse;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class LoggingRequestInterceptor implements ClientHttpRequestInterceptor {

    private static final YawlLogger log = new YawlLogger(LoggingRequestInterceptor.class);

    @Override
    public ClientHttpResponse intercept(final HttpRequest request, final byte[] body,
                                        final ClientHttpRequestExecution execution) throws IOException {
        traceRequest(request, body);
        ClientHttpResponse response = execution.execute(request, body);
        traceResponse(response);
        return response;
    }

    private void traceRequest(HttpRequest request, byte[] body) throws IOException {
        log.debug(Status.OK, "", "===========================request begin================================================");
        log.debug(Status.OK, "URI         : {}", request.getURI());
        log.debug(Status.OK, "Method      : {}", request.getMethod());
        ObjectReader objectReader = ObjectMapperUtils.JACKSON.reader();
        DefaultPrettyPrinter prettyPrinter = new DefaultPrettyPrinter();
        prettyPrinter.indentArraysWith( DefaultIndenter.SYSTEM_LINEFEED_INSTANCE );
        ObjectWriter objectWriter = ObjectMapperUtils.JACKSON.writer(prettyPrinter);
        JsonNode jsonNode = objectReader.readTree(new String(body, "UTF-8"));
        System.out.println();
        System.out.println();
        System.out.println();
        log.debug(Status.OK, "Headers     : {}", objectWriter.writeValueAsString(request.getHeaders()));
        log.debug(Status.OK, "Request body: {}", objectWriter.writeValueAsString(jsonNode));
        System.out.println();
        System.out.println();
        System.out.println();
        log.debug(Status.OK, "", "==========================request end================================================");
    }

    private void traceResponse(ClientHttpResponse response) throws IOException {
        StringBuilder inputStringBuilder = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(response.getBody(), "UTF-8"));
        String line = bufferedReader.readLine();
        while (line != null) {
            inputStringBuilder.append(line);
            inputStringBuilder.append(System.lineSeparator());
            line = bufferedReader.readLine();
        }
        log.debug(Status.OK, "", "============================response begin==========================================");
        log.debug(Status.OK, "Status code  : {}", response.getStatusCode());
        log.debug(Status.OK, "Status text  : {}", response.getStatusText());
        log.debug(Status.OK, "Headers      : {}", response.getHeaders());
        log.debug(Status.OK, "Response body: {}", inputStringBuilder.toString());
        log.debug(Status.OK, "", "=======================response end=================================================");
    }


}