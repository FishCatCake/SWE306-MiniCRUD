package com.swe306asg2.dao.interfaces;

import com.swe306asg2.dao.model.Questionnaire;

import java.sql.SQLException;
import java.util.List;

public interface QuestionnaireDAO {
    Questionnaire insert(Questionnaire questionnaire) throws SQLException;
    List<Questionnaire> all() throws SQLException;
    int deleteAll() throws SQLException;
    int delete(Questionnaire questionnaire) throws SQLException;
    int findByIcNumber(int icNumber) throws SQLException;
}
