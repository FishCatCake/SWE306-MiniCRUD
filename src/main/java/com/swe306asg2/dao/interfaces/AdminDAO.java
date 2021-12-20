package com.swe306asg2.dao.interfaces;

import com.swe306asg2.dao.model.Patient;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public interface AdminDAO {
    ResultSet insert(String username, String password) throws SQLException;

    
}
