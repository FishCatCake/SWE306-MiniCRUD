<%@ page import="com.swe306.asg2.dao.model.Patient" %>
<%@ page import="com.swe306.asg2.dao.model.Questionnaire" %>
<%@ page import="com.swe306.asg2.dao.concrete.MysqlPatientDAO" %>
<%@ page import="com.swe306.asg2.dao.concrete.MysqlQuestionnaireDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    if (request.getParameter("id") == null) {
        response.sendRedirect("/patients.jsp");
        return;
    } else {
        String requestId = request.getParameter("id");
        Patient p = MysqlPatientDAO.selectPatientById(Integer.parseInt(requestId));
        Questionnaire q = MysqlQuestionnaireDAO.selectByIcNumber(p.getIcNumber());
        if (q.getQ1() != null) {
            response.sendRedirect("/questionnaire.jsp?id=" + requestId);
            return;
        }
    }
%>


<jsp:useBean id="p" class="com.swe306.asg2.dao.model.Questionnaire"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>

<%

    int i = MysqlQuestionnaireDAO.insert(p);

    if (i > 0) {
        response.sendRedirect("/patients.jsp");
        return;
    } else {
        response.sendRedirect("error.jsp");
        System.out.println("Failed to update questionnaire");
    }

%>


</body>
</html>
