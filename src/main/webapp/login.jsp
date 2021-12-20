<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2021/12/15
  Time: 8:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login Validation</title>
    <style>
        div {
            border: 5px solid rgba(0, 81, 255, 0.68);
            text-align: center;
        }

        table {
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body>
<div>
    <h1>Clinic Management System</h1>
    <%--    <form action="<%=request.getContextPath()%>/doLogin.jsp" method="post">--%>
    <form action="<%=request.getContextPath()%>/login" method="post">
        <table>
            <tr>
                <td>Username</td>
                <td><input type="text" name="username"/></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password"/></td>
            </tr>
        </table>
        <input type="submit" value="Login"/>
    </form>
</div>


</body>
</html>
