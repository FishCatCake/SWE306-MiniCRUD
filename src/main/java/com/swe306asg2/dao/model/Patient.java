package com.swe306asg2.dao.model;

import com.swe306asg2.dao.factory.DAOFactory;
import com.swe306asg2.dao.interfaces.PatientDAO;

import java.sql.SQLException;
import java.util.List;

public class Patient {
    private int id;
    private String fullname, icNumber, telNo, address;

    public Patient(int id, String fullname, String icNumber, String telNo, String address) {
        this.id = id;
        this.fullname = fullname;
        this.icNumber = icNumber;
        this.telNo = telNo;
        this.address = address;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getIcNumber() {
        return icNumber;
    }

    public void setIcNumber(String icNumber) {
        this.icNumber = icNumber;
    }

    public String getTelNo() {
        return telNo;
    }

    public void setTelNo(String telNo) {
        this.telNo = telNo;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    // DAO Methods
    private static PatientDAO patientDAO() {
        DAOFactory dao = DAOFactory.getDatabase();
        return dao.getPatientDAO();
    }

    public static List<Patient> all() throws SQLException{
        return patientDAO().all();
    }

    // save current patient to the database
    public void save() throws SQLException {
        patientDAO().insert(this);
    }

    // delete current patient in the database

}
