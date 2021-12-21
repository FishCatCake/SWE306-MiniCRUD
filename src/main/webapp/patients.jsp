<%@ page import="com.swe306.asg2.dao.model.Patient" %>
<%@ page import="com.swe306.asg2.dao.concrete.MysqlPatientDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.swe306.asg2.dao.interfaces.PatientDAO" %>
<%@ page import="com.swe306.asg2.dao.model.Admin" %>
<%@ page import="com.swe306.asg2.dao.concrete.MysqlAdminDAO" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>
        Patients - Clinic Management System
    </title>
    <!-- element-ui -->
    <link rel="stylesheet" href="https://unpkg.com/element-ui@2.15.6/lib/theme-chalk/index.css">
    <link rel="stylesheet" href="/assets/css/patients.css">
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h1 class="title">
    Clinic Management System
</h1>
<div class="opts">
    <%
        Admin admin = MysqlAdminDAO.select("admin");
        String usr = admin.getUsername();
        request.setAttribute("usr", usr);
    %>
    <div>
        Welcome, <c:out value="${usr}"/>.
        <button onclick="document.location='index.jsp'">Logout</button>
    </div>
    <div>
        <button onclick="document.location='addPatient.jsp'">Add Patient</button>
    </div>
</div>

<form action="searchPatient.jsp" method="post">
    <input type="search" name="IC" placeholder="Search patient by IC"/>
    <input type="submit" value="search"/>
</form>

<%
    List<Patient> list = Patient.all();
    request.setAttribute("list", list);
%>
<div id="app">
    <table>
        <tr>
            <th>IC No.</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Prescription</th>
            <th>Covid-19 Test</th>
            <th>Address</th>
            <th>Tel No.</th>
            <th>Last Visit</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${list}" var="p">
            <tr>
                <td>${p.getIcNumber()}</td>
                <td>${p.getFullName()}</td>
                <td>${p.getGender()}</td>
                <td>${p.getPrescription()}</td>
                <td>
                    <button onclick="document.location='questionnaire.jsp?id=${p.getId()}'">Questionnaire</button>
                </td>
                <td>${p.getAddress()}</td>
                <td>${p.getTelNo()}</td>
                <td>${p.getLastDate()}</td>
                <td>
                    <button onclick="document.location='editPatient.jsp?id=${p.getId()}'">Edit</button>
                    <button onclick="deleteConfirm('${p.getId()}', '${p.getFullName()}')">Delete
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
<%-- web dependencies --%>
<%-- vue js --%>
<script src="assets/js/vue.js"></script>
<!-- element-ui -->

<script src="https://unpkg.com/element-ui@2.15.6/lib/index.js"></script>
<%-- main js --%>
<script src="assets/js/main.js"></script>
<script src="assets/js/validatePatient.js"></script>
<script src="assets/js/patients.js"></script>
</html>