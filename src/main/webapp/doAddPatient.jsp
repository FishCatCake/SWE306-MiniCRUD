<%@ page import="com.swe306.asg2.dao.model.Patient" %>
<%@ page import="com.swe306.asg2.dao.concrete.MysqlPatientDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="p" class="com.swe306.asg2.dao.model.Patient"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>

<%

    int i = MysqlPatientDAO.insert(p);

    if (i > 0) {
        response.sendRedirect("patients.jsp");
    } else {
//        response.sendRedirect("addPatient-failed.jsp");
        System.out.println("Failed to add patient");
    }

%>
</body>
</html>
