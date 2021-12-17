package com.swe306asg2.dao.concrete;

import com.swe306asg2.dao.factory.DAOFactory;
import com.swe306asg2.dao.interfaces.PatientDAO;
import com.swe306asg2.dao.model.Patient;
import org.dom4j.rule.RuleSet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

// implementation of PatientDAO to Mysql methods
public class MysqlPatientDAO implements PatientDAO {
    // prepared statements for SQL query
    private static final String ALL = "SELECT * FROM patients";

    @Override
    public Patient insert(Patient Object) throws SQLException {
        return null;
    }

    @Override
    public List<Patient> all() throws SQLException {
        ArrayList<Patient> patients = new ArrayList<Patient>();

        Connection c = DAOFactory.getDatabase().openCon();
        PreparedStatement pstmt = c.prepareStatement(ALL);

        ResultSet rset = pstmt.executeQuery();
        while (rset.next()) {
            patients.add(createPatient(rset));
        }
        pstmt.close();
        c.close();

        return patients;
    }

    @Override
    public int deleteAll() throws SQLException {
        return 0;
    }

    @Override
    public int delete(Patient patient) throws SQLException {
        return 0;
    }

    @Override
    public int findByIcNumber(Long icNumber) throws SQLException {
        return 0;
    }

    private Patient createPatient(ResultSet rset) throws SQLException {
        Patient patient = new Patient(
                rset.getInt("id"),
                rset.getString("fullname"),
                rset.getString("ic_number"),
                rset.getString("tel_no"),
                rset.getString("address")
        );
        return patient;
    }
}
