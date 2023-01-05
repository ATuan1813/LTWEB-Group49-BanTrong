package com.project.cuoiky.ltw.database;

import com.project.cuoiky.ltw.mapper.ProductMapper;
import com.project.cuoiky.ltw.mapper.RowMapper;
import com.project.cuoiky.ltw.model.SanPham;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AbsDao {
    public Connection getConnection() throws ClassNotFoundException, SQLException {
        String strcnn = "jdbc:mysql://localhost:3306/shopbantrong";
        String user = "root";
        String passwrod = "tRu0n927@4!";
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
    public <T> ArrayList<T> query(String sql, RowMapper<T> rowMapper, Object... parameters) {

        ArrayList<T> results = new ArrayList<T>();

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

    //has id to show for do value is id
    public <T> ArrayList<T> queryHasId(String sql, RowMapper<T> rowMapper, Object... parameters) {

        ArrayList<T> results = new ArrayList<T>();

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
                results.add(rowMapper.mapRowID(resultSet)); // used to add value each column of row

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

    // chức năng 4 : cập nhật
    public int update(String sql, Object... parameter) {
        Connection connection = null;
        PreparedStatement statement = null;

        try {
            connection = getConnection();
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
            setParameter(statement, parameter);
            statement.executeUpdate();
            ResultSet rs = statement.getGeneratedKeys();
            int generatedKey = 0;
            if (rs.next()) {
                generatedKey = rs.getInt(1);
            }
            connection.commit();
            System.out.println("id of function insert: " + generatedKey);
            return generatedKey;

        }catch (Exception e) {
            if(connection !=null) {
                try {
                    connection.rollback(); // just any one error is rollback
                } catch (SQLException e1) {
                    // TODO Auto-generated catch block
                    e1.printStackTrace();
                }
            }
        }finally {
            try {
                if(connection != null) {
                    connection.close();
                }if(statement != null) {
                    statement.close();
                }

            } catch (SQLException e2) {
                e2.printStackTrace();
            }
        }
        return 0;
    }

    // chức năng 5: thêm
    public int insert(String sql, Object... parameter) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            connection = getConnection();
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
            setParameter(statement, parameter);
            statement.executeUpdate();

            ResultSet rs = statement.getGeneratedKeys();
            int generatedKey = 0;
            if (rs.next()) {
                generatedKey = rs.getInt(1);
            }
            connection.commit();
            System.out.println("id of function insert: " + generatedKey);
            return generatedKey;

        }catch (Exception e) {
            if(connection !=null) {
                try {
                    connection.rollback(); // just any one error is rollback
                } catch (SQLException e1) {
                    // TODO Auto-generated catch block
                    e1.printStackTrace();
                }
            }
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
                e2.printStackTrace();
            }
        }
        return 0;
    }

    // count all element
    public int count(String sql, Object... parameter) {

        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null; // lấy các rows thông qua thực hiện câu query
        try {

            int count = 0;
            connection = getConnection();
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql);
            setParameter(statement, parameter);	// set tham cho câu lệnh sql
            resultSet = statement.executeQuery();

            while(resultSet.next()) {

                count = resultSet.getInt(1);

            }

            connection.commit();

            return count;

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();

            return 0;
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
                return 0;
            }
        }
    }



}
