package com.project.cuoiky.ltw.model;

public class MauSac {
    private int IdMauSac;
    private String TenMauSac;
    private String MaMau;

    public MauSac(String tenMauSac, String maMau) {
        TenMauSac = tenMauSac;
        MaMau = maMau;
    }

    public int getIdMauSac() {
        return IdMauSac;
    }

    public String getTenMauSac() {
        return TenMauSac;
    }

    public String getMaMau() {
        return MaMau;
    }
}
