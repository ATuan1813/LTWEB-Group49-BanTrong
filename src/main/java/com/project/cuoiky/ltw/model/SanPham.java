package com.project.cuoiky.ltw.model;

public class SanPham {
    private int IdSP;
    private String TenSP;
    private String MotaSP;
    private int IdPLC2;
    private String Hang;
    private String ThongSoKyThuat;
    private Long KickThuoc;
    private String VatLieu;
    private Long KhuyenMai;
    private int SoLuongTrongKho;
    private int SoLuongDaBan;
    private Long GiaBan;
    private Long GiaVon;
    private String TinhTrang;

    public SanPham(String tenSP, String motaSP, int idPLC2, String hang, String thongSoKyThuat, Long kickThuoc, String vatLieu, Long khuyenMai, int soLuongTrongKho, int soLuongDaBan, Long giaBan, Long giaVon, String tinhTrang) {
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
        GiaVon = giaVon;
        TinhTrang = tinhTrang;
    }

    public SanPham(int idSP, String tenSP, String motaSP, int idPLC2, String hang, String thongSoKyThuat, Long kickThuoc, String vatLieu, Long khuyenMai, int soLuongTrongKho, int soLuongDaBan, Long giaBan, Long giaVon, String tinhTrang) {
        IdSP = idSP;
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
        GiaVon = giaVon;
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

    public Long getKickThuoc() {
        return KickThuoc;
    }

    public String getVatLieu() {
        return VatLieu;
    }

    public Long getKhuyenMai() {
        return KhuyenMai;
    }

    public int getSoLuongTrongKho() {
        return SoLuongTrongKho;
    }

    public int getSoLuongDaBan() {
        return SoLuongDaBan;
    }

    public Long getGiaBan() {
        return GiaBan;
    }

    public Long getGiaVon() {
        return GiaVon;
    }

    public void setIdSP(int idSP) {
        IdSP = idSP;
    }

    public void setTenSP(String tenSP) {
        TenSP = tenSP;
    }

    public void setMotaSP(String motaSP) {
        MotaSP = motaSP;
    }

    public void setIdPLC2(int idPLC2) {
        IdPLC2 = idPLC2;
    }

    public void setHang(String hang) {
        Hang = hang;
    }

    public void setThongSoKyThuat(String thongSoKyThuat) {
        ThongSoKyThuat = thongSoKyThuat;
    }

    public void setKickThuoc(Long kickThuoc) {
        KickThuoc = kickThuoc;
    }

    public void setVatLieu(String vatLieu) {
        VatLieu = vatLieu;
    }

    public void setKhuyenMai(Long khuyenMai) {
        KhuyenMai = khuyenMai;
    }

    public void setSoLuongTrongKho(int soLuongTrongKho) {
        SoLuongTrongKho = soLuongTrongKho;
    }

    public void setSoLuongDaBan(int soLuongDaBan) {
        SoLuongDaBan = soLuongDaBan;
    }

    public void setGiaBan(Long giaBan) {
        GiaBan = giaBan;
    }

    public void setGiaVon(Long giaVon) {
        GiaVon = giaVon;
    }

    public void setTinhTrang(String tinhTrang) {
        TinhTrang = tinhTrang;
    }

    public String getTinhTrang() {
        return TinhTrang;
    }
}
