package com.swe306.asg2.login.database;

import com.swe306.asg2.login.bean.loginBean;

import java.sql.*;

public class loginDao {
    public boolean validate(loginBean loginBean) throws ClassNotFoundException {
        boolean status = false;

        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/asg2?useSSL=false";
        String uname = "root";
        String password = "password";
        String query;
        query = "select * from admin where username = ? and password = ?";

        try (Connection connection = DriverManager
                .getConnection(url, uname, password);

             // Create a statement using connection object
             PreparedStatement preparedStatement = connection
                     .prepareStatement(query)) {
            preparedStatement.setString(1, loginBean.getUsername());
            preparedStatement.setString(2, loginBean.getPassword());

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return status;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
