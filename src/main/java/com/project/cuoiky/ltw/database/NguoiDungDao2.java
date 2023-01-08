package com.project.cuoiky.ltw.database;

import com.project.cuoiky.ltw.mapper.NguoiDungMapper;
import com.project.cuoiky.ltw.model.NguoiDung;

import java.util.ArrayList;
import java.util.List;

public class NguoiDungDao2 extends AbsDao {


    public int adduser(NguoiDung nguoiDung) {
        String query = "INSERT INTO nguoidung(taiKhoan, MatKhau, TenNguoiDung, Quyen, sdt, Email, DiaChi, avartar, tinhTrang) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?)";
        return insert(query, nguoiDung.getTaiKhoan(), nguoiDung.getMatKhau(), nguoiDung.getTenNguoiDung(), nguoiDung.getQuyen(), nguoiDung.getSdt(),
                nguoiDung.getEmail(), nguoiDung.getDiaChi(), nguoiDung.getAvartar(), nguoiDung.getTinhtrang());
    }

    public int updateUser(NguoiDung nguoiDung) {
        String query = "UPDATE nguoidung SET matKhau = ?, TenNguoiDung = ?, sdt = ?, Email = ?, DiaChi = ?, tinhTrang = ? WHERE IDNGUOIDUNG = ?";
        return update(query, nguoiDung.getMatKhau(), nguoiDung.getTenNguoiDung(), nguoiDung.getSdt()
                , nguoiDung.getEmail(), nguoiDung.getDiaChi(), nguoiDung.getTinhtrang(), nguoiDung.getIdNguoiDung());
    }
    public int deleteUser(int idnd) {
        String query = "DELETE FROM nguoidung WHERE IDNGUOIDUNG = ?";
        return insert(query, idnd);
    }

    public ArrayList<NguoiDung> getListND(){
        ArrayList<NguoiDung> nguoiDungs = new ArrayList<>();
        String sql = "SELECT * FROM NGUOIDUNG nd WHERE nd.Quyen = '2'"; // 2 user, 1 admin
        nguoiDungs = queryHasId(sql, new NguoiDungMapper());
        return nguoiDungs;
    }

    public ArrayList<NguoiDung> getListAdmin(){
        ArrayList<NguoiDung> nguoiDungs = new ArrayList<>();
        String sql = "SELECT * FROM NGUOIDUNG nd WHERE nd.Quyen = 1"; // 2 user, 1 admin
        nguoiDungs = queryHasId(sql, new NguoiDungMapper());
        return nguoiDungs;
    }

    // find one by id
    public NguoiDung findonend(int idnd){
        String sql = "Select * FROM NGUOIDUNG nd WHERE nd.IDNGUOIDUNG = ?";

        ArrayList<NguoiDung> nguoiDungs = queryHasId(sql, new NguoiDungMapper(), idnd);

        System.out.println("find tài khoản : " + nguoiDungs.get(0).getTaiKhoan());
        return nguoiDungs.isEmpty() ? null : nguoiDungs.get(0);
    }

}
