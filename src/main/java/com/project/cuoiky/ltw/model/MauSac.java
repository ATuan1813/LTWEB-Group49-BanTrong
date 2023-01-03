package com.project.cuoiky.ltw.model;

public class MauSac {
    private int IdMauSac;
    private String TenMauSac;
    private String MaMau;

    public MauSac(String tenMauSac, String maMau) {
        TenMauSac = tenMauSac;
        MaMau = maMau;
    }

    public MauSac(int idMauSac, String tenMauSac, String maMau) {
        IdMauSac = idMauSac;
        TenMauSac = tenMauSac;
        MaMau = maMau;
    }

    public int getIdMauSac() {
        return IdMauSac;
    }

    public void setIdMauSac(int idMauSac) {
        IdMauSac = idMauSac;
    }

    public String getTenMauSac() {
        return TenMauSac;
    }

    public void setTenMauSac(String tenMauSac) {
        TenMauSac = tenMauSac;
    }

    public String getMaMau() {
        return MaMau;
    }

    public void setMaMau(String maMau) {
        MaMau = maMau;
    }
}
