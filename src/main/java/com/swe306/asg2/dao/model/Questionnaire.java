package com.swe306.asg2.dao.model;

import com.swe306.asg2.dao.factory.DAOFactory;
import com.swe306.asg2.dao.interfaces.QuestionnaireDAO;

import java.sql.SQLException;

public class Questionnaire {
    private int questionnaire_id;
    private String icNumber;

    public String getQ1() {
        return q1;
    }

    public void setQ1(String q1) {
        this.q1 = q1;
    }

    public String getQ2() {
        return q2;
    }

    public void setQ2(String q2) {
        this.q2 = q2;
    }

    public String getQ3() {
        return q3;
    }

    public void setQ3(String q3) {
        this.q3 = q3;
    }

    public String getQ4() {
        return q4;
    }

    public void setQ4(String q4) {
        this.q4 = q4;
    }

    public String getQ5() {
        return q5;
    }

    public void setQ5(String q5) {
        this.q5 = q5;
    }

    private String q1;
    private String q2;
    private String q3;
    private String q4;
    private String q5;
//
//    public void resetQuestionnaire(){
//        this.q1 = "";
//        this.q2 = "";
//        this.q3 = "";
//        this.q4 = "";
//        this.q5 = "";
//    }

    public String getIcNumber() {
        return icNumber;
    }

    public void setIcNumber(String icNumber) {
        this.icNumber = icNumber;
    }

    private static QuestionnaireDAO questionnaireDAO() {
        DAOFactory dao = DAOFactory.getDatabase();
        return dao.getQuestionnaireDAO();
    }
    public void save() throws SQLException {
        questionnaireDAO().insert(this);
    }
}

