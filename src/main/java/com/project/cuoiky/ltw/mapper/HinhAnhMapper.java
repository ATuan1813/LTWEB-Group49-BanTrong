package com.project.cuoiky.ltw.mapper;

import com.project.cuoiky.ltw.model.HinhAnh;

import java.sql.ResultSet;
import java.sql.SQLException;

public class HinhAnhMapper implements RowMapper<HinhAnh>{


    @Override
    public HinhAnh mapRow(ResultSet resultSet) throws SQLException {
        int MaViTriHA = resultSet.getInt("MaViTriHA");
        int IdSP = resultSet.getInt("IdSP");
        String UrlHA = resultSet.getString("UrlHA");

        HinhAnh hinhAnh = new HinhAnh(MaViTriHA,IdSP,UrlHA);

        return hinhAnh;
    }
}
