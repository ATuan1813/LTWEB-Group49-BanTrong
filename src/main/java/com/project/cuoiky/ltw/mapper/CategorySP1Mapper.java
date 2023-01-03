package com.project.cuoiky.ltw.mapper;

import com.project.cuoiky.ltw.model.PhanLoaiCap1;
import com.project.cuoiky.ltw.model.PhanLoaiCap2;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CategorySP1Mapper implements RowMapper<PhanLoaiCap1>{

    @Override
    public PhanLoaiCap1 mapRow(ResultSet resultSet) throws SQLException {
        String TenPLC1 = resultSet.getString("TenPLC1");
        String MoTa = resultSet.getString("MoTa");

        PhanLoaiCap1 phanLoaiCap1 = new PhanLoaiCap1(TenPLC1,MoTa);

        return phanLoaiCap1;
    }

    @Override
    public PhanLoaiCap1 mapRowID(ResultSet resultSet) throws SQLException {
        return null;
    }
}
