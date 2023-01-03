package com.project.cuoiky.ltw.controller;

public class HandleInput {
    // convert get number in last string
    public int getnumberInString(String str){
        StringBuilder sb = new StringBuilder();
        for (int i = str.length() - 1; i >= 0; i --) {
            char c = str.charAt(i);
            if (Character.isDigit(c)) {
                sb.insert(0, c);
            } else {
                break;
            }
        }
        int result = Integer.parseInt(sb.toString());

        return result;
    }
}
