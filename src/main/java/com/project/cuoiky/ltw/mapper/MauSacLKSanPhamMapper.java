package com.project.cuoiky.ltw.mapper;

import com.project.cuoiky.ltw.model.MauSacLKSanPham;

import java.sql.ResultSet;
import java.sql.SQLException;

public class MauSacLKSanPhamMapper implements RowMapper<MauSacLKSanPham>{


    @Override
    public MauSacLKSanPham mapRow(ResultSet resultSet) throws SQLException {

        int MaViTriMS = resultSet.getInt("MaViTriMS");
        int IdSP = resultSet.getInt("IdSP");
        int IdMS = resultSet.getInt("IdMS");
        int IdHA = resultSet.getInt("IdHA");
        int SoLuongTrongKhoMS = resultSet.getInt("SoLuongTrongKhoMS");
        int SoLuongDaBanMS = resultSet.getInt("SoLuongDaBanMS");


        MauSacLKSanPham mauSacLKSanPham = new MauSacLKSanPham(MaViTriMS,IdSP,IdMS,IdHA,SoLuongTrongKhoMS,SoLuongDaBanMS);
        return mauSacLKSanPham;
    }

    @Override
    public MauSacLKSanPham mapRowID(ResultSet resultSet) throws SQLException {
        return null;
    }
}
