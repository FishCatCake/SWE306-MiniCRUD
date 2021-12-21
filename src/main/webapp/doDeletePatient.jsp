<%@ page import="com.swe306.asg2.dao.concrete.MysqlPatientDAO" %>
<%@ page import="com.swe306.asg2.dao.interfaces.PatientDAO" %>
<%@ page import="com.swe306.asg2.dao.model.Patient" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    if (request.getParameter("id") == null) {
        response.sendRedirect("/patients.jsp");
    } else {
        String requestId = request.getParameter("id");
        Patient patient = MysqlPatientDAO.selectPatientById(Integer.parseInt(requestId));
        patient.delete();
        response.sendRedirect("/patients.jsp");
    }
%>

</body>
</html>
