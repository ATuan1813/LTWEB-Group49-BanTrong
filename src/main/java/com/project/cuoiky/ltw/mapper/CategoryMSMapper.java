package com.project.cuoiky.ltw.mapper;

import com.project.cuoiky.ltw.model.MauSac;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryMSMapper implements RowMapper<MauSac>{

    @Override
    public MauSac mapRow(ResultSet resultSet) throws SQLException {
        String TenMauSac = resultSet.getString("TenMauSac");
        String MaMau = resultSet.getString("MaMau");

        MauSac mauSac = new MauSac(TenMauSac,MaMau);

        return mauSac;
    }
}
