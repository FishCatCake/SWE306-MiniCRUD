package com.swe306.asg2.dao.model;

import com.swe306.asg2.dao.factory.DAOFactory;
import com.swe306.asg2.dao.interfaces.PatientDAO;

import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

public class Patient {
    private int id;
    private String fullName;
    private String icNumber;
    private String telNo;
    private String address;
    private String gender;
    private String prescription;
    private Date lastVisitDate;

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPrescription() {
        return prescription;
    }

    public void setPrescription(String prescription) {
        this.prescription = prescription;
    }

    public Date getLastVisitDate() {
        return lastVisitDate;
    }

    public void setLastVisitDate(Date lastVisitDate) {
        this.lastVisitDate = lastVisitDate;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
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

    public static List<Patient> all() throws SQLException {
        return patientDAO().all();
    }

    // save current patient to the database
    public void save() throws SQLException {
        patientDAO().insert(this);
    }

    // delete current patient in the database
    public void delete() throws SQLException{
        patientDAO().delete(this);
    }

}
