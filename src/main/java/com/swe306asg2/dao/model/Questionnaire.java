package com.swe306asg2.dao.model;

import com.swe306asg2.dao.factory.DAOFactory;
import com.swe306asg2.dao.interfaces.QuestionnaireDAO;

import java.sql.SQLException;

public class Questionnaire {
    private int questionnaire_id;
    private String icNumber;
    private String q1;
    private String q2;
    private String q3;
    private String q4;
    private String q5;


//    public Questionnaire(int id, String icNumber, String q1, String q2, String q3, String q4, String q5) {
//        this.questionnaire_id = id;
//        this.icNumber = icNumber;
//        this.q1 = q1;
//        this.q2 = q2;
//        this.q3 = q3;
//        this.q4 = q4;
//        this.q5 = q5;
//    }

    public void resetQuestionnaire(){
        this.q1 = "";
        this.q2 = "";
        this.q3 = "";
        this.q4 = "";
        this.q5 = "";
    }

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

