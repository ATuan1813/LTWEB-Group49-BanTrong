package com.project.cuoiky.ltw.model;

public class PhanLoaiCap1 {
    private int IdPLC1;
    private String TenPLC1;
    private String MoTa;

    public PhanLoaiCap1(String tenPLC1, String moTa) {
        TenPLC1 = tenPLC1;
        MoTa = moTa;
    }

    public PhanLoaiCap1(int idPLC1, String tenPLC1, String moTa) {
        IdPLC1 = idPLC1;
        TenPLC1 = tenPLC1;
        MoTa = moTa;
    }

    public int getIdPLC1() {
        return IdPLC1;
    }

    public String getTenPLC1() {
        return TenPLC1;
    }

    public String getMoTa() {
        return MoTa;
    }

    public void setIdPLC1(int idPLC1) {
        IdPLC1 = idPLC1;
    }

    public void setTenPLC1(String tenPLC1) {
        TenPLC1 = tenPLC1;
    }

    public void setMoTa(String moTa) {
        MoTa = moTa;
    }
}
