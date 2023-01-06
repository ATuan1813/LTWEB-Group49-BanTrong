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

    public HinhAnh(int idHA, int maViTriHA, int idSP, String urlHA) {
        IdHA = idHA;
        MaViTriHA = maViTriHA;
        IdSP = idSP;
        UrlHA = urlHA;
    }

    public void setIdHA(int idHA) {
        IdHA = idHA;
    }

    public void setMaViTriHA(int maViTriHA) {
        MaViTriHA = maViTriHA;
    }

    public void setIdSP(int idSP) {
        IdSP = idSP;
    }

    public void setUrlHA(String urlHA) {
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
