package com.project.cuoiky.ltw.database;

import com.project.cuoiky.ltw.mapper.NguoiDungMapper;
import com.project.cuoiky.ltw.model.NguoiDung;

import java.util.List;

public class NguoiDungDao extends AbsDao {

    public NguoiDung findTaiKhoan(String taiKhoan) {
        String query = "SELECT * FROM nguoidung WHERE taiKhoan = ?";
        List<NguoiDung> news2 = query(query, new NguoiDungMapper(), taiKhoan);
        return news2.isEmpty() ? null : news2.get(0); 
    }

    public NguoiDung findEmail(String email) {
        String query = "SELECT * FROM nguoidung WHERE email = ?";
        List<NguoiDung> news2 = query(query, new NguoiDungMapper(), email);
        return news2.isEmpty() ? null : news2.get(0);
    }

    public int register(NguoiDung nguoiDung) {
        String query = "INSERT INTO nguoidung(taiKhoan, MatKhau, email, Quyen, tinhTrang, nguonGoc) VALUES (?, ?, ?, ?, ?, ?)";
        return insert(query, nguoiDung.getTaiKhoan(), nguoiDung.getMatKhau(), nguoiDung.getEmail(), nguoiDung.getQuyen(), nguoiDung.getTinhtrang(), "MYAPP");
    }

    public int registerWithSocial(NguoiDung nguoiDung) {
        String query = "INSERT INTO nguoidung(taiKhoan, MatKhau, email, Quyen, tinhTrang, TenNguoiDung, nguonGoc, avartar) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        return insert(query, nguoiDung.getTaiKhoan(), nguoiDung.getMatKhau(), nguoiDung.getEmail(), nguoiDung.getQuyen(), nguoiDung.getTinhtrang(),
                nguoiDung.getTenNguoiDung(), nguoiDung.getNguonGoc(), nguoiDung.getAvartar());
    }

    public int update(NguoiDung nguoiDung) {
        String query = "UPDATE nguoidung SET matKhau = ? WHERE idNguoiDung = ?";
        return insert(query, nguoiDung.getMatKhau(), nguoiDung.getIdNguoiDung());
    }

}
