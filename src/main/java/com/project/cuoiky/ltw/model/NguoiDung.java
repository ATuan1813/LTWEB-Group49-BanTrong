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
    private String nguonGoc;

    public NguoiDung() {

    }

    public NguoiDung(int idNguoiDung, String taiKhoan, String matKhau, String tenNguoiDung, int quyen,
                     int sdt, String email, String diaChi, String avartar, int tinhtrang, String nguonGoc) {
        IdNguoiDung = idNguoiDung;
        TaiKhoan = taiKhoan;
        MatKhau = matKhau;
        TenNguoiDung = tenNguoiDung;
        this.quyen = quyen;
        this.sdt = sdt;
        Email = email;
        DiaChi = diaChi;
        this.avartar = avartar;
        this.tinhtrang = tinhtrang;
        this.nguonGoc = nguonGoc;
    }

    public NguoiDung(int idNguoiDung, String taiKhoan, String matKhau, String tenNguoiDung, int quyen, int sdt, String email, String diaChi, String avartar, int tinhtrang) {
        IdNguoiDung = idNguoiDung;
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

    public void setIdNguoiDung(int idNguoiDung) {
        IdNguoiDung = idNguoiDung;
    }

    public String getTaiKhoan() {
        return TaiKhoan;
    }

    public void setTaiKhoan(String taiKhoan) {
        TaiKhoan = taiKhoan;
    }

    public String getMatKhau() {
        return MatKhau;
    }

    public void setMatKhau(String matKhau) {
        MatKhau = matKhau;
    }

    public String getTenNguoiDung() {
        return TenNguoiDung;
    }

    public void setTenNguoiDung(String tenNguoiDung) {
        TenNguoiDung = tenNguoiDung;
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
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public void setDiaChi(String diaChi) {
        DiaChi = diaChi;
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

    public String getNguonGoc() {
        return nguonGoc;
    }

    public void setNguonGoc(String nguonGoc) {
        this.nguonGoc = nguonGoc;
    }
}
