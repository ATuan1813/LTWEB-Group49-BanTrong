package com.project.cuoiky.ltw.model;

public class MauSacLKSanPham {
    private int IdMSSP;
    private int MaVitriMS;
    private int IdSP;
    private int IdMS;
    private int IdHA;
    private int SoLuongTrongKhoMS;
    private int SoLuongDaBanMS;

    public MauSacLKSanPham(int maVitriMS, int idSP, int idMS, int idHA, int soLuongTrongKhoMS, int soLuongDaBanMS) {
        MaVitriMS = maVitriMS;
        IdSP = idSP;
        IdMS = idMS;
        IdHA = idHA;
        SoLuongTrongKhoMS = soLuongTrongKhoMS;
        SoLuongDaBanMS = soLuongDaBanMS;
    }

    public MauSacLKSanPham() {
    }

    public int getIdMSSP() {
        return IdMSSP;
    }

    public int getMaVitriMS() {
        return MaVitriMS;
    }

    public int getIdSP() {
        return IdSP;
    }

    public int getIdMS() {
        return IdMS;
    }

    public int getIdHA() {
        return IdHA;
    }

    public int getSoLuongTrongKhoMS() {
        return SoLuongTrongKhoMS;
    }

    public int getSoLuongDaBanMS() {
        return SoLuongDaBanMS;
    }
}
