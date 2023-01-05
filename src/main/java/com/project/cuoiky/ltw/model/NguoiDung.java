package com.project.cuoiky.ltw.model;

public class NguoiDung {
    private int idNguoiDung;
    private String taiKhoan;
    private String matKhau;
    private String tenNguoiDung;
    private int quyen;
    private int sdt;
    private String email;
    private String diaChi;
    private String avartar;
    private int tinhtrang;

    public NguoiDung() {
    }

    public NguoiDung(int idNguoiDung, String taiKhoan, String matKhau, String tenNguoiDung, int quyen, int sdt, String email, String diaChi, String avartar, int tinhtrang) {
        this.idNguoiDung = idNguoiDung;
        this.taiKhoan = taiKhoan;
        this.matKhau = matKhau;
        this.tenNguoiDung = tenNguoiDung;
        this.quyen = quyen;
        this.sdt = sdt;
        this.email = email;
        this.diaChi = diaChi;
        this.avartar = avartar;
        this.tinhtrang = tinhtrang;
    }

    public int getIdNguoiDung() {
        return idNguoiDung;
    }

    public void setIdNguoiDung(int idNguoiDung) {
        this.idNguoiDung = idNguoiDung;
    }

    public String getTaiKhoan() {
        return taiKhoan;
    }

    public void setTaiKhoan(String taiKhoan) {
        this.taiKhoan = taiKhoan;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getTenNguoiDung() {
        return tenNguoiDung;
    }

    public void setTenNguoiDung(String tenNguoiDung) {
        this.tenNguoiDung = tenNguoiDung;
    }

    public int getQuyen() {
        return quyen;
    }

    public void setQuyen(int quyen) {
        this.quyen = quyen;
    }

    public int getSdt() {
        return sdt;
    }

    public void setSdt(int sdt) {
        this.sdt = sdt;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getAvartar() {
        return avartar;
    }

    public void setAvartar(String avartar) {
        this.avartar = avartar;
    }

    public int getTinhtrang() {
        return tinhtrang;
    }

    public void setTinhtrang(int tinhtrang) {
        this.tinhtrang = tinhtrang;
    }
}
