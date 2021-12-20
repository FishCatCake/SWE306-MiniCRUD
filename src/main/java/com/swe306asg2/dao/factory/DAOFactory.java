package com.swe306asg2.dao.factory;

import com.swe306asg2.dao.interfaces.AdminDAO;
import com.swe306asg2.dao.interfaces.PatientDAO;
import com.swe306asg2.dao.interfaces.QuestionnaireDAO;
import com.swe306asg2.dao.model.Questionnaire;

import java.sql.Connection;

// base creator
public abstract class DAOFactory {
    public abstract Connection openCon();

    public abstract PatientDAO getPatientDAO();

    public abstract QuestionnaireDAO getQuestionnaireDAO();

    public abstract AdminDAO getAdminDAO();

    // factories getters
    public static DAOFactory getDatabase() {
        return new Mysql();
    }
}
