package com.project.cuoiky.ltw.model;

public class PhanLoaiCap2 {
    private int IdPLC2;
    private String TenPLC2;
    private int IdPLC1;
    private String MoTa;

    public PhanLoaiCap2(String tenPLC2, int idPLC1, String moTa) {
        TenPLC2 = tenPLC2;
        IdPLC1 = idPLC1;
        MoTa = moTa;
    }

    public PhanLoaiCap2(int idPLC2, String tenPLC2, int idPLC1, String moTa) {
        IdPLC2 = idPLC2;
        TenPLC2 = tenPLC2;
        IdPLC1 = idPLC1;
        MoTa = moTa;
    }

    public int getIdPLC2() {
        return IdPLC2;
    }

    public String getTenPLC2() {
        return TenPLC2;
    }

    public int getIdPLC1() {
        return IdPLC1;
    }

    public String getMoTa() {
        return MoTa;
    }

    public void setIdPLC2(int idPLC2) {
        IdPLC2 = idPLC2;
    }

    public void setTenPLC2(String tenPLC2) {
        TenPLC2 = tenPLC2;
    }

    public void setIdPLC1(int idPLC1) {
        IdPLC1 = idPLC1;
    }

    public void setMoTa(String moTa) {
        MoTa = moTa;
    }
}
