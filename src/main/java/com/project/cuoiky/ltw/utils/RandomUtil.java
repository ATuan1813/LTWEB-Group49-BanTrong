package com.project.cuoiky.ltw.utils;

public class RandomUtil {

    public static final String alphas = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

    public static final String digits = "0123456789";

    public static final String CHARS = alphas.toUpperCase() + alphas.toLowerCase() + digits;

    // tao mat khau
    public static String generatePassword(int n) {
        // create StringBuffer size of AlphaNumericString
        StringBuilder s = new StringBuilder(n);
        int y;
        for (y = 0; y < n; y++) {
            // generating a random number
            int index = (int) (CHARS.length() * Math.random());
            // add Character one by one in end of s
            s.append(CHARS.charAt(index));
        }
        return s.toString();
    }

}
