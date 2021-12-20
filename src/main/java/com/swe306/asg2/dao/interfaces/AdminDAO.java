package com.swe306.asg2.dao.interfaces;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface AdminDAO {
    ResultSet insert(String username, String password) throws SQLException;

    
}
