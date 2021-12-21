package com.swe306.asg2.dao.interfaces;

import com.swe306.asg2.dao.model.Questionnaire;

import java.sql.SQLException;
import java.util.List;

public interface QuestionnaireDAO {

    List<Questionnaire> all() throws SQLException;

    int deleteAll() throws SQLException;

    int delete(Questionnaire questionnaire) throws SQLException;

}
