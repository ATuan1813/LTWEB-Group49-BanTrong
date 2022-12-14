package com.project.cuoiky.ltw.model;

public class MauSac {
    private String IdMauSac;
    private String TenMauSac;

    public MauSac(String idMauSac, String tenMauSac) {
        IdMauSac = idMauSac;
        TenMauSac = tenMauSac;
    }

    public MauSac() {
    }

    public String getIdMauSac() {
        return IdMauSac;
    }

    public String getTenMauSac() {
        return TenMauSac;
    }

}
