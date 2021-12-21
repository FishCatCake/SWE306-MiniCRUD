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
        String msg = "Failed to update questionnaire";
        response.sendRedirect("error.jsp?msg=" + msg);
        System.out.println(msg);
    }

%>
</body>
</html>
