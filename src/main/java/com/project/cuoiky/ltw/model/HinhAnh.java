package com.project.cuoiky.ltw.model;

public class HinhAnh {
    private int IdHA;
    private int MaViTriHA;
    private int IdSP;
    private String UrlHA;

    public HinhAnh(int maViTriHA, int idSP, String urlHA) {
        MaViTriHA = maViTriHA;
        IdSP = idSP;
        UrlHA = urlHA;
    }

    public int getIdHA() {
        return IdHA;
    }

    public int getMaViTriHA() {
        return MaViTriHA;
    }

    public int getIdSP() {
        return IdSP;
    }

    public String getUrlHA() {
        return UrlHA;
    }
}
