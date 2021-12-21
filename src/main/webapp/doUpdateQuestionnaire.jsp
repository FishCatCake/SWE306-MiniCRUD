<%@ page import="com.swe306.asg2.dao.concrete.MysqlQuestionnaireDAO" %>
<%@ page import="com.swe306.asg2.dao.model.Questionnaire" %>
<%@ page import="com.swe306.asg2.dao.model.Patient" %>
<%@ page import="com.swe306.asg2.dao.concrete.MysqlPatientDAO" %>
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
        Questionnaire questionnaire = MysqlQuestionnaireDAO.selectByIcNumber(p.getIcNumber());
    }
%>

<jsp:useBean id="p" class="com.swe306.asg2.dao.model.Questionnaire"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>

<%

    int i = MysqlQuestionnaireDAO.update(p);
    if (i > 0) {
        response.sendRedirect("patients.jsp");
    } else {
        String msg = "Failed to update questionnaire";
        response.sendRedirect("error.jsp?msg=" + msg);
        System.out.println(msg);
    }

%>


</body>
</html>
