<%--
  Created by IntelliJ IDEA.
  User: jukrb0x
  Date: 20/12/2021
  Time: 5:25 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Refresh" content="5;url=login.jsp">
    <title>Error Page</title>
</head>
<body>
<%
    String msg;
    if (request.getParameter("msg") != null) {
        msg = request.getParameter("msg");
    } else {
        msg = "";
    }
    request.setAttribute("msg", msg);
%>

<h1>
    There is something wrong, please try again later.
</h1>
<h2>
    <code>
        ${msg}
    </code>
</h2>
<h3>
    You will be redirected to <a href="/login.jsp">login page</a> in 5 seconds.
</h3>

</body>
</html>
