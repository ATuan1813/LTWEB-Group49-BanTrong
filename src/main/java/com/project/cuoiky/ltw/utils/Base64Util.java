package com.project.cuoiky.ltw.utils;

import java.nio.charset.StandardCharsets;
import java.util.Base64;

public class Base64Util {

    public static String encoderStringToBase64(String text) {
        Base64.Encoder encoder = Base64.getEncoder();
        String encodedString = encoder.encodeToString(text.getBytes(StandardCharsets.UTF_8) );
        return encodedString;
    }

    public static String decoderBase64ToString(String text) {
        Base64.Decoder decoder = Base64.getDecoder();
        byte[] decodedByteArray = decoder.decode(text);
        return new String(decodedByteArray);
    }

}
