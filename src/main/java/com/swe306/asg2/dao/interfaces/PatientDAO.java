package com.swe306.asg2.dao.interfaces;

import com.swe306.asg2.dao.model.Patient;

import java.sql.SQLException;
import java.util.List;

public interface PatientDAO {
    int insert(Patient patient) throws SQLException;

    List<Patient> all() throws SQLException;

    int deleteAll() throws SQLException;

    int delete(Patient patient) throws SQLException;

    int findByIcNumber(Long icNumber) throws SQLException;
}
