package com.swe306.asg2.dao.model;

import com.swe306.asg2.dao.factory.DAOFactory;
import com.swe306.asg2.dao.interfaces.AdminDAO;

import java.sql.SQLException;

public class Admin {
    private String username;
    private String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    // DAO methods

    private static AdminDAO adminDAO() {
        DAOFactory dao = DAOFactory.getDatabase();
        return dao.getAdminDAO();
    }

    private void save() throws SQLException {
        adminDAO().insert(this.username, this.password);
    }
}
