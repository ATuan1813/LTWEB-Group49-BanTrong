package com.project.cuoiky.ltw.database;

import com.project.cuoiky.ltw.mapper.NguoiDungMapper;
import com.project.cuoiky.ltw.model.NguoiDung;

import java.util.List;

public class NguoiDungDao extends AbsDao {

    public NguoiDung findTaiKhoan(String taiKhoan) {
        String query = "SELECT * FROM nguoidung WHERE TAIKHOAN = ?";
        List<NguoiDung> news2 = query(query, new NguoiDungMapper(), taiKhoan);
        return news2.isEmpty() ? null : news2.get(0); 
    }

    public int register(NguoiDung nguoiDung) {
        String query = "INSERT INTO nguoidung(TAIKHOAN, MatKhau, Quyen, tinhTrang) VALUES (?, ?, ?, ?)";
        return insert(query, nguoiDung.getTaiKhoan(), nguoiDung.getMatKhau(), nguoiDung.getQuyen(), nguoiDung.getTinhtrang());
    }
}
