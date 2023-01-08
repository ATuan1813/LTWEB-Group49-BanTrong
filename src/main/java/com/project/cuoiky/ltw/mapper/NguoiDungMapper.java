package com.project.cuoiky.ltw.mapper;

import com.project.cuoiky.ltw.model.NguoiDung;

import java.sql.ResultSet;
import java.sql.SQLException;

public class NguoiDungMapper implements RowMapper<NguoiDung> {

    @Override
    public NguoiDung mapRow(ResultSet resultSet) throws SQLException {
        int idNguoiDung = resultSet.getInt("idNguoiDung");
        String taiKhoan = resultSet.getString("taiKhoan");
        String matKhau = resultSet.getString("matKhau");
        String tenNguoiDung = resultSet.getString("tenNguoiDung");
        int quyen = resultSet.getInt("quyen");
        int sdt = resultSet.getInt("sdt");
        String email = resultSet.getString("email");
        String diaChi = resultSet.getString("diaChi");
        String avartar = resultSet.getString("avartar");
        int tinhTrang = resultSet.getInt("tinhTrang");
        String nguonGoc = resultSet.getString("nguonGoc");

        NguoiDung nguoiDung = new  NguoiDung(idNguoiDung, taiKhoan, matKhau, tenNguoiDung, quyen, sdt,
                email, diaChi, avartar, tinhTrang, nguonGoc);
        return nguoiDung;
    }

    @Override
    public NguoiDung mapRowID(ResultSet resultSet) throws SQLException {
        int idNguoiDung = resultSet.getInt("idNguoiDung");
        String taiKhoan = resultSet.getString("taiKhoan");
        String matKhau = resultSet.getString("matKhau");
        String tenNguoiDung = resultSet.getString("tenNguoiDung");
        int quyen = resultSet.getInt("quyen");
        int sdt = resultSet.getInt("sdt");
        String email = resultSet.getString("email");
        String diaChi = resultSet.getString("diaChi");
        String avartar = resultSet.getString("avartar");
        int tinhTrang = resultSet.getInt("tinhTrang");

        NguoiDung nguoiDung = new  NguoiDung(idNguoiDung, taiKhoan, matKhau, tenNguoiDung, quyen, sdt,
                email, diaChi, avartar, tinhTrang);
        return nguoiDung;
    }

}
