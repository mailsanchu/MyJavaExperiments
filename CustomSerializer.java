package com.att.eg.catalog.cms.ingest.gitignore;

import com.att.ajsc.common.dto.SortAttribute;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;

import java.io.IOException;

public class CustomSerializer extends StdSerializer<SortAttribute> {
    public CustomSerializer(Class<SortAttribute> t) {
        super(t);
    }

    @Override
    public void serialize(SortAttribute sortAttribute, JsonGenerator gen, SerializerProvider provider) throws IOException {
        gen.writeStartObject();
        gen.writeBooleanField("descending", sortAttribute.isDescending());
        gen.writeStringField("name",sortAttribute.getName());
        gen.writeEndObject();
    }
}