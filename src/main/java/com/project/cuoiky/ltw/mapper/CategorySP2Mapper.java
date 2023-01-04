package com.project.cuoiky.ltw.mapper;

import com.project.cuoiky.ltw.model.PhanLoaiCap2;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CategorySP2Mapper implements RowMapper<PhanLoaiCap2>{

    @Override
    public PhanLoaiCap2 mapRow(ResultSet resultSet) throws SQLException {
        String TenPLC2 = resultSet.getString("TenPLC2");
        int IdPLC1 = resultSet.getInt("IdPLC1");
        String MoTa = resultSet.getString("MoTa");

        PhanLoaiCap2 phanLoaiCap2 = new PhanLoaiCap2(TenPLC2,IdPLC1,MoTa);

        return phanLoaiCap2;
    }

    @Override
    public PhanLoaiCap2 mapRowID(ResultSet resultSet) throws SQLException {

        int idPLC2 = resultSet.getInt("IdPLC2");
        String TenPLC2 = resultSet.getString("TenPLC2");
        int IdPLC1 = resultSet.getInt("IdPLC1");
        String MoTa = resultSet.getString("MoTa");

        PhanLoaiCap2 phanLoaiCap2 = new PhanLoaiCap2(idPLC2,TenPLC2,IdPLC1,MoTa);

        return phanLoaiCap2;
    }
}
