package com.swe306.asg2.dao.concrete;

import com.swe306.asg2.dao.factory.DAOFactory;
import com.swe306.asg2.dao.interfaces.PatientDAO;
import com.swe306.asg2.dao.model.Patient;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

// implementation of PatientDAO to Mysql methods
public class MysqlPatientDAO implements PatientDAO {
    // prepared statements for SQL query
    private static final String SQL_SELECT_ALL = "SELECT * FROM patients";
    private static final String SQL_INSERT = "INSERT INTO patients (id, full_name, ic_number, tel_no, address) VALUES (?, ?, ?, ?, ?)";
    private static final String SQL_DELETE = "DELETE FROM patients WHERE id=?";
    private static final String SQL_SELECT_ID = "SELECT * FROM patients WHERE id=?";
    private static final String SQL_UPDATE =
            "UPDATE patients set ic_number=?, full_name=?, tel_no=?, address=?, last_visit_date=?, prescription=?, gender=? WHERE id=?";

    @Override
    public Patient insert(Patient patient) throws SQLException {
        // useless
        return null;
    }

    public static int update(Patient p) {
        int status = 0;
        try {
            Connection con = DAOFactory.getDatabase().openCon();
            PreparedStatement pstmt = con.prepareStatement(SQL_UPDATE);
            pstmt.setString(1, p.getIcNumber());
            pstmt.setString(2, p.getFullName());
            pstmt.setString(3, p.getTelNo());
            pstmt.setString(4, p.getAddress());
            pstmt.setDate(5, p.getLastVisitDate());
            pstmt.setString(6, p.getPrescription());
            pstmt.setString(7, p.getGender());
            status = pstmt.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static Patient selectPatientById(int id) throws SQLException {
        Patient patient = new Patient();
        try {
            Connection c = DAOFactory.getDatabase().openCon();
            PreparedStatement pstmt = c.prepareStatement(SQL_SELECT_ID);
            pstmt.setInt(1, id);
            ResultSet rset = pstmt.executeQuery();
            while (rset.next()) {
                patient.setId(rset.getInt("id"));
                patient.setIcNumber(rset.getString("ic_number"));
                patient.setGender(rset.getString("gender"));
                patient.setFullName(rset.getString("full_name"));
                patient.setAddress(rset.getString("address"));
                patient.setLastVisitDate(rset.getDate("last_visit_date"));
                patient.setTelNo(rset.getString("tel_no"));
                patient.setPrescription(rset.getString("prescription"));
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return patient;
    }


    @Override
    public List<Patient> all() throws SQLException {
        ArrayList<Patient> patients = new ArrayList<Patient>();

        Connection c = DAOFactory.getDatabase().openCon();
        PreparedStatement pstmt = c.prepareStatement(SQL_SELECT_ALL);
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
        int status = 0;
        try {
            Connection c = DAOFactory.getDatabase().openCon();
            PreparedStatement pstmt = c.prepareStatement(SQL_DELETE);
            pstmt.setInt(1, patient.getId());
            status = pstmt.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return status;
    }

    @Override
    public int findByIcNumber(Long icNumber) throws SQLException {
        return 0;
    }

    private Patient createPatient(ResultSet rset) throws SQLException {
        Patient patient = new Patient();
        patient.setId(rset.getInt("id"));
        patient.setIcNumber(rset.getString("ic_number"));
        patient.setGender(rset.getString("gender"));
        patient.setFullName(rset.getString("full_name"));
        patient.setAddress(rset.getString("address"));
        patient.setLastVisitDate(rset.getDate("last_visit_date"));
        patient.setTelNo(rset.getString("tel_no"));
        patient.setPrescription(rset.getString("prescription"));

        return patient;
    }
}
