package com.project.cuoiky.ltw.utils;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Md5Util {

    public static String hashMD5(String text) {
        MessageDigest md = null;
        try {
            md = MessageDigest.getInstance("MD5");
            md.update(text.getBytes());
            byte[] hashedData = md.digest();
            BigInteger number = new BigInteger(1, hashedData);
            String hashtext = number.toString(16);
            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
            return hashtext;
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

}
