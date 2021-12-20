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
    <title>Clinic Management System</title>
    <style>
        .home {
            border: 5px solid rgba(0, 81, 255, 0.68);
            text-align: center;
            padding: 5px;
        }

        table {
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body>
<div class="home">
    <h1>Welcome</h1>
    <h2>
        Clinic Management System
    </h2>
    <%--    <form action="<%=request.getContextPath()%>/doLogin.jsp" method="post">--%>
    <%--        <table>--%>
    <%--            <tr>--%>
    <%--                <td>UserName</td>--%>
    <%--                <td><input type="text" name="username"/></td>--%>
    <%--            </tr>--%>
    <%--            <tr>--%>
    <%--                <td>Password</td>--%>
    <%--                <td><input type="password" name="password"/></td>--%>
    <%--            </tr>--%>
    <%--        </table>--%>
    <%--        <input type="submit" value="Login"/>--%>
    <%--    </form>--%>
    <button onclick="document.location='login.jsp'">Login</button>
</div>


</body>
</html>
