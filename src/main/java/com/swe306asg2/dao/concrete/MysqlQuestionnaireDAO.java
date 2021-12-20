package com.swe306asg2.dao.concrete;

import com.swe306asg2.dao.factory.DAOFactory;
import com.swe306asg2.dao.interfaces.QuestionnaireDAO;
import com.swe306asg2.dao.model.Questionnaire;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class MysqlQuestionnaireDAO implements QuestionnaireDAO {

    private static final String ALL = "SELECT * FROM questionnaire";

    @Override
    public Questionnaire insert(Questionnaire questionnaire) throws SQLException {
        return null;
    }

    @Override
    public List<Questionnaire> all() throws SQLException {
        ArrayList<Questionnaire> questionnaires = new ArrayList<Questionnaire>();

        Connection c = DAOFactory.getDatabase().openCon();
        PreparedStatement pstmt = c.prepareStatement(ALL);

        ResultSet rset = pstmt.executeQuery();
        while (rset.next()) {
            questionnaires.add(createQuestionnaire(rset));
        }
        pstmt.close();
        c.close();

        return questionnaires;
    }

    private Questionnaire createQuestionnaire(ResultSet rset) throws SQLException {
        Questionnaire questionnaire = new Questionnaire(
                // get columns from database
                rset.getInt("id"),
                rset.getString("ic_number"),
                rset.getString("q1"),
                rset.getString("q2"),
                rset.getString("q3"),
                rset.getString("q4"),
                rset.getString("q5")
        );
        return questionnaire;
    }

    @Override
    public int deleteAll() throws SQLException {
        return 0;
    }

    @Override
    public int delete(Questionnaire questionnaire) throws SQLException {
        return 0;
    }

    @Override
    public int findByIcNumber(int icNumber) throws SQLException {
        return 0;
    }
}
