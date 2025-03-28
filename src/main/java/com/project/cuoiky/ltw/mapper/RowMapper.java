package com.project.cuoiky.ltw.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface RowMapper<T> {
    T mapRow(ResultSet resultSet) throws SQLException;
    T mapRowID(ResultSet resultSet) throws SQLException;

}
