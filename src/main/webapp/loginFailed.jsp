<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2021/12/17
  Time: 1:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.swe306asg2.login.database.*" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title></title>
    <style>
        p {
            text-align: center;
            color: red;
        }
    </style>
</head>
<body>
    <p>Sorry, invalid password or username!</p>
    <jsp:include page="login.jsp" />
</body>
</html>
