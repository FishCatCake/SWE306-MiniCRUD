package com.swe306asg2.dao.factory;

import com.swe306asg2.dao.concrete.MysqlPatientDAO;
import com.swe306asg2.dao.interfaces.PatientDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Mysql extends DAOFactory {
    private static String baseUrl = "jdbc:mysql://localhost:3306/";
    private static String database = "asg2";
    private static String user = "root";
    private static String password = "password";
    private static String driver = "com.mysql.cj.jdbc.Driver";
    private static String postfix = "?useSSL=false";

    private static String connectionUrl = baseUrl + database + postfix;

    public Connection openCon() {
        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(connectionUrl, user, password);
            System.out.println("Connected to database");
            return con;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (Exception e) {
            System.err.println("exception caught.");
        }
        return null;
    }

    @Override
    public PatientDAO getPatientDAO() {
        return new MysqlPatientDAO();
    }
}
