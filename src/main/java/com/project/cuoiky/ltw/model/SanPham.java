package com.project.cuoiky.ltw.model;

public class SanPham {
    private int IdSP;
    private String TenSP;
    private String MotaSP;
    private int IdPLC2;
    private String Hang;
    private String ThongSoKyThuat;
    private Double KickThuoc;
    private String VatLieu;
    private Double KhuyenMai;
    private int SoLuongTrongKho;
    private int SoLuongDaBan;
    private Double GiaBan;
    private String TinhTrang;

    public SanPham(String tenSP, String motaSP, int idPLC2, String hang, String thongSoKyThuat, Double kickThuoc, String vatLieu, Double khuyenMai, int soLuongTrongKho, int soLuongDaBan, Double giaBan, String tinhTrang) {
        TenSP = tenSP;
        MotaSP = motaSP;
        IdPLC2 = idPLC2;
        Hang = hang;
        ThongSoKyThuat = thongSoKyThuat;
        KickThuoc = kickThuoc;
        VatLieu = vatLieu;
        KhuyenMai = khuyenMai;
        SoLuongTrongKho = soLuongTrongKho;
        SoLuongDaBan = soLuongDaBan;
        GiaBan = giaBan;
        TinhTrang = tinhTrang;
    }

    public SanPham() {

    }

    public int getIdSP() {
        return IdSP;
    }

    public String getTenSP() {
        return TenSP;
    }

    public String getMotaSP() {
        return MotaSP;
    }

    public int getIdPLC2() {
        return IdPLC2;
    }

    public String getHang() {
        return Hang;
    }

    public String getThongSoKyThuat() {
        return ThongSoKyThuat;
    }

    public Double getKickThuoc() {
        return KickThuoc;
    }

    public String getVatLieu() {
        return VatLieu;
    }

    public Double getKhuyenMai() {
        return KhuyenMai;
    }

    public int getSoLuongTrongKho() {
        return SoLuongTrongKho;
    }

    public int getSoLuongDaBan() {
        return SoLuongDaBan;
    }

    public Double getGiaBan() {
        return GiaBan;
    }

    public String getTinhTrang() {
        return TinhTrang;
    }
}
