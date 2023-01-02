package com.project.cuoiky.ltw.database;

import com.project.cuoiky.ltw.mapper.ProductMapper;
import com.project.cuoiky.ltw.mapper.RowMapper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AbsDao {
    public Connection getConnection() throws ClassNotFoundException, SQLException {
        String strcnn = "jdbc:mysql://localhost:3306/shopbantrong";
        String user = "root";
        String passwrod = "1234";
        Class.forName("com.mysql.cj.jdbc.Driver");

        return DriverManager.getConnection(strcnn,user,passwrod);
    }
    public void setParameter(PreparedStatement statement, Object... parameters) {
        for(int i = 0; i < parameters.length; i++) {
            Object parameter = parameters[i];
            int index = i + 1;

            // kiểm tra kiểu để add
            if(parameter instanceof Long) {
                try {
                    statement.setLong(index, (Long)parameter);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }else if(parameter instanceof String) {
                try {
                    statement.setString(index, (String)parameter);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }else if(parameter instanceof Integer) {
                try {
                    statement.setInt(index, (Integer)parameter);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }else if(parameter instanceof Timestamp) {
                try {
                    statement.setTimestamp(index, (Timestamp)parameter);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

            // xử lý trường hợp data bị null
            else if(parameter == null) {
                try {
                    statement.setNull(index, java.sql.Types.INTEGER);
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }

        }
    }

    // query để lấy 1 hoặc nhiều element
    public <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters) {

        List<T> results = new ArrayList<T>();

        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null; // lấy các rows thông qua thực hiện câu query
        try {
            connection = getConnection();
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql);
            setParameter(statement, parameters);	// set tham chieu cho câu lệnh sql
            resultSet = statement.executeQuery();

            while(resultSet.next()) {
//				System.out.println("results have values: " + results);
                results.add(rowMapper.mapRow(resultSet)); // used to add value each column of row

            }

            connection.commit();

            return results;

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();

            return results;
        }finally {
            try {
                if(connection != null) {
                    connection.close();
                }if(statement != null) {
                    statement.close();
                }if(resultSet != null) {
                    resultSet.close();
                }

            } catch (SQLException e2) {
                return null;
            }
        }

    }

    // find one by id
//    public Object<T> findbyID(int id, String ele, Object T){
//        String sql = "SELECT * FROM "+ele+" WHERE ID = ?";
//        List news2 = query(sql, new ProductMapper(), id);
//        System.out.println("find id of findOneNew :" + news2.get(0));
//        return news2.isEmpty() ? null : news2.get(0);
//    }



}
