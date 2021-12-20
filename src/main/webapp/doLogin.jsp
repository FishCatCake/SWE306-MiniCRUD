<%--
  Created by IntelliJ IDEA.
  User: jukrb0x
  Date: 19/12/2021
  Time: 9:22 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Validation</title>
</head>
<body>
<%@page import="com.swe306asg2.dao.concrete.MysqlAdminDAO, com.swe306asg2.dao.model.Admin, java.util.*" %>
<%@ page import="com.swe306asg2.dao.interfaces.AdminDAO" %>
<jsp:useBean id="u" class="com.swe306asg2.dao.model.Admin"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
    Admin admin = MysqlAdminDAO.select(u.getUsername());
    String password = u.getPassword();
    if (password == admin.getPassword()) {
        response.sendRedirect("/patients.jsp");
    } else {
        response.sendRedirect("/error.jsp");
    }


%>

</body>
</html>
