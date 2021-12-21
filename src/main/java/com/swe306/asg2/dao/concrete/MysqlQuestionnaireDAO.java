package com.swe306.asg2.dao.concrete;

import com.swe306.asg2.dao.interfaces.QuestionnaireDAO;
import com.swe306.asg2.dao.factory.DAOFactory;
import com.swe306.asg2.dao.model.Questionnaire;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class MysqlQuestionnaireDAO implements QuestionnaireDAO {

    private static final String SQL_SELECT_ALL = "SELECT * FROM questionnaire";
    private static final String SQL_SELECT_IC_NO = "SELECT * FROM questionnaire WHERE ic_number=?";
    private static final String SQL_UPDATE = "UPDATE questionnaire set ic_number=?, q1=?, q2=?, q3=?, q4=?, q5=?";
    private static final String SQL_INSERT = "INSERT INTO questionnaire (ic_number, q1, q2, q3, q4, q5) VALUES (?, ?, ?, ?, ?, ?)";

    public static int insert(Questionnaire questionnaire) throws SQLException {
        int status = 0;
        try {
            Connection con = DAOFactory.getDatabase().openCon();
            PreparedStatement pstmt = con.prepareStatement(SQL_INSERT);
            pstmt.setString(1, questionnaire.getIcNumber());
            pstmt.setString(2, questionnaire.getQ1());
            pstmt.setString(3, questionnaire.getQ2());
            pstmt.setString(4, questionnaire.getQ3());
            pstmt.setString(5, questionnaire.getQ4());
            pstmt.setString(6, questionnaire.getQ5());
            status = pstmt.executeUpdate();
        } catch (Exception e){
            System.out.println(e.getMessage());
        }
        return status;
    }

    @Override
    public List<Questionnaire> all() throws SQLException {
        ArrayList<Questionnaire> questionnaires = new ArrayList<Questionnaire>();

        Connection c = DAOFactory.getDatabase().openCon();
        PreparedStatement pstmt = c.prepareStatement(SQL_SELECT_ALL);

        ResultSet rset = pstmt.executeQuery();
        while (rset.next()) {
            questionnaires.add(createQuestionnaire(rset));
        }
        pstmt.close();
        c.close();

        return questionnaires;
    }

    private Questionnaire createQuestionnaire(ResultSet rset) throws SQLException {
        Questionnaire questionnaire = new Questionnaire();
        // get columns from database
        questionnaire.setIcNumber(rset.getString("icNumber"));
        questionnaire.setQ1(rset.getString("q1"));
        questionnaire.setQ2(rset.getString("q2"));
        questionnaire.setQ3(rset.getString("q3"));
        questionnaire.setQ4(rset.getString("q4"));
        questionnaire.setQ5(rset.getString("q5"));
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

    public static int update(Questionnaire questionnaire) throws SQLException {
        int status = 0;
        try {
            Connection con = DAOFactory.getDatabase().openCon();
            PreparedStatement pstmt = con.prepareStatement(SQL_UPDATE);
            pstmt.setString(1, questionnaire.getIcNumber());
            pstmt.setString(2, questionnaire.getQ1());
            pstmt.setString(3, questionnaire.getQ2());
            pstmt.setString(4, questionnaire.getQ3());
            pstmt.setString(5, questionnaire.getQ4());
            pstmt.setString(6, questionnaire.getQ5());
            status = pstmt.executeUpdate();
        } catch (Exception e){
            System.out.println(e.getMessage());
        }
        return status;
    }

    public static Questionnaire selectByIcNumber(String icNumber) throws SQLException {
        Questionnaire questionnaire = new Questionnaire();
        try {
            Connection c = DAOFactory.getDatabase().openCon();
            PreparedStatement pstmt = c.prepareStatement(SQL_SELECT_IC_NO);
            pstmt.setString(1, icNumber);
            ResultSet rset = pstmt.executeQuery();
            // duplicated, createQuestionnaire
            // FIXME static or not static
            while (rset.next()) {
                questionnaire.setIcNumber(rset.getString("ic_number"));
                questionnaire.setQ1(rset.getString("q1"));
                questionnaire.setQ2(rset.getString("q2"));
                questionnaire.setQ3(rset.getString("q3"));
                questionnaire.setQ4(rset.getString("q4"));
                questionnaire.setQ5(rset.getString("q5"));
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return questionnaire;

    }
}
