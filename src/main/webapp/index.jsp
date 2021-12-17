<%@ page import="com.swe306asg2.dao.model.Patient" %>
<%@ page import="com.swe306asg2.dao.concrete.MysqlPatientDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.swe306asg2.dao.interfaces.PatientDAO" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <!-- element-ui -->
    <link rel="stylesheet" href="https://unpkg.com/element-ui@2.15.6/lib/theme-chalk/index.css">
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h1><%= "Hello World!" %>
</h1>
<%
    List<Patient> list = Patient.all();
    request.setAttribute("list", list);
%>
<div id="app">
    {{ message }}
    <el-button type="primary">Click</el-button>
    <c:forEach items="${list}" var="p">
        <p>${p.getFullName()}</p>
    </c:forEach>
</div>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
<%-- web dependencies --%>
<%-- vue js --%>
<script src="assets/js/vue.js"></script>
<!-- element-ui -->

<script src="https://unpkg.com/element-ui@2.15.6/lib/index.js"></script>
<%-- main js --%>
<script src="assets/js/main.js"></script>
</html>