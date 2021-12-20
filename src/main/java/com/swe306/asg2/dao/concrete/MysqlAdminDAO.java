package com.swe306.asg2.dao.concrete;

import com.swe306.asg2.dao.factory.DAOFactory;
import com.swe306.asg2.dao.interfaces.AdminDAO;
import com.swe306.asg2.dao.model.Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MysqlAdminDAO implements AdminDAO {
    private static final String SQL_INSERT_ADMIN = "INSERT INTO admin (username, password) VALUES (?, ?)";
    private static final String SQL_DELETE_ADMIN = "DELETE FROM admin WHERE username = ?";
    private static final String SQL_UPDATE_ADMIN = "UPDATE admin SET password = ? WHERE username = ?";
    private static final String SQL_SELECT_ADMIN = "SELECT * FROM admin WHERE username = ?";
    private static final String SQL_SELECT_ALL_ADMINS = "SELECT * FROM admin";

    // useless
    public ResultSet insert(String username, String password) throws SQLException {
        Connection c = DAOFactory.getDatabase().openCon();
        PreparedStatement pstmt = c.prepareStatement(SQL_INSERT_ADMIN);
        pstmt.setString(1, username);
        pstmt.setString(2, password);
        ResultSet status = pstmt.executeQuery();
        // FIXME int or ResultSet?
        pstmt.close();
        c.close();
        return status;
    }

    public static Admin select(String username) throws SQLException {
        Connection c = DAOFactory.getDatabase().openCon();
        PreparedStatement pstmt = c.prepareStatement(SQL_SELECT_ADMIN);
        pstmt.setString(1, username);
        ResultSet rs = pstmt.executeQuery();
        Admin admin = new Admin();
        if (rs.next()) {
            admin.setUsername(rs.getString("username"));
            admin.setPassword(rs.getString("password"));
        }
        pstmt.close();
        c.close();
        return admin;
    }

}
