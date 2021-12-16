package com.swe306asg2.dao.factory;

import com.swe306asg2.dao.interfaces.PatientDAO;

import java.sql.Connection;

// base creator
public abstract class DAOFactory {
    public abstract Connection openCon();

    public abstract PatientDAO getPatientDAO();

    // factories getters
    public static DAOFactory getDatabase() {
        return new Mysql();
    }
}
