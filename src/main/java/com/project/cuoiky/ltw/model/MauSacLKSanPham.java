package com.project.cuoiky.ltw.model;

public class MauSacLKSanPham {
    private int IdMSSP;
    private int IdSP;
    private int IdMS;
    private int SoLuongTrongKhoMS;
    private int SoLuongDaBanMS;

    public MauSacLKSanPham(int idSP, int idMS, int soLuongTrongKhoMS, int soLuongDaBanMS) {
        IdSP = idSP;
        IdMS = idMS;
        SoLuongTrongKhoMS = soLuongTrongKhoMS;
        SoLuongDaBanMS = soLuongDaBanMS;
    }

    public int getIdMSSP() {
        return IdMSSP;
    }

    public int getIdSP() {
        return IdSP;
    }

    public int getIdMS() {
        return IdMS;
    }

    public int getSoLuongTrongKhoMS() {
        return SoLuongTrongKhoMS;
    }

    public int getSoLuongDaBanMS() {
        return SoLuongDaBanMS;
    }
}
