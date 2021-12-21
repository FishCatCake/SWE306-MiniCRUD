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

<jsp:useBean id="p" class="com.swe306.asg2.dao.model.Questionnaire"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>

<%

    int i = MysqlQuestionnaireDAO.insert(p);
    Patient patient = MysqlPatientDAO.selectPatientByIc(p.getIcNumber());

    if (i > 0) {
        response.sendRedirect("/questionnaire.jsp?id=" + patient.getId());
        return;
    } else {
        response.sendRedirect("error.jsp");
        System.out.println("Failed to update questionnaire");
    }

%>


</body>
</html>
