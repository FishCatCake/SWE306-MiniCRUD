<%@ page import="com.swe306.asg2.dao.concrete.MysqlPatientDAO" %><%--
  Created by IntelliJ IDEA.
  User: jukrb0x
  Date: 21/12/2021
  Time: 4:25 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="p" class="com.swe306.asg2.dao.model.Patient"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>

<%

    int i = MysqlPatientDAO.update(p);

    if (i > 0) {
        response.sendRedirect("patients.jsp");
    } else {
        String msg = "Failed to edit patient";
        response.sendRedirect("error.jsp?msg=" + msg);
        System.out.println(msg);
    }

%>
</body>
</html>
