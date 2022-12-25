package com.project.cuoiky.ltw.model;

public class NguoiDung {
    private int IdNguoiDung;
    private String TaiKhoan;
    private String MatKhau;
    private String TenNguoiDung;
    private int quyen;
    private int sdt;
    private String Email;
    private String DiaChi;
    private String avartar;
    private int tinhtrang;

    public NguoiDung(String taiKhoan, String matKhau, String tenNguoiDung, int quyen, int sdt, String email, String diaChi, String avartar, int tinhtrang) {
        TaiKhoan = taiKhoan;
        MatKhau = matKhau;
        TenNguoiDung = tenNguoiDung;
        this.quyen = quyen;
        this.sdt = sdt;
        Email = email;
        DiaChi = diaChi;
        this.avartar = avartar;
        this.tinhtrang = tinhtrang;
    }

    public int getIdNguoiDung() {
        return IdNguoiDung;
    }

    public String getTaiKhoan() {
        return TaiKhoan;
    }

    public String getMatKhau() {
        return MatKhau;
    }

    public String getTenNguoiDung() {
        return TenNguoiDung;
    }

    public int getQuyen() {
        return quyen;
    }

    public int getSdt() {
        return sdt;
    }

    public String getEmail() {
        return Email;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public String getAvartar() {
        return avartar;
    }

    public int getTinhtrang() {
        return tinhtrang;
    }
}
