<%@ page import="com.swe306.asg2.dao.model.Patient" %>
<%@ page import="com.swe306.asg2.dao.concrete.MysqlPatientDAO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2021/12/21
  Time: 8:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/assets/css/patients.css">
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String IC = request.getParameter("IC");
    Patient p = MysqlPatientDAO.selectPatientByIc(IC);

    if (p.getIcNumber() == null) {
        response.sendRedirect("searchFailed.jsp");
    }
%>
<div class="title">
    <h1 class="title">
        Clinic Management System
    </h1>
    <h2>Search Result</h2>
</div>

<form action="searchPatient.jsp" method="post">
    <input type="search" name="IC" value="<%=request.getParameter("IC")%>"/>
    <input type="submit" value="Search"/>
</form>
<div style="margin-bottom: 10px;">
    <button onclick="document.location='patients.jsp'">Go Back</button>
</div>
</body>
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
        <tr>
            <td><%=p.getIcNumber()%>
            </td>
            <td><%=p.getFullName()%>
            </td>
            <td><%=p.getGender()%>
            </td>
            <td><%=p.getPrescription()%>
            </td>
            <td>
                <button onclick="document.location='questionnaire.jsp?id=${p.getId()}'">Questionnaire</button>
            </td>
            <td><%=p.getAddress()%>
            </td>
            <td><%=p.getTelNo()%>
            </td>
            <td><%=p.getLastDate()%>
            </td>
            <td>
                <button onclick="document.location='editPatient.jsp?id=${p.getId()}'">Edit</button>
                <button onclick="deleteConfirm('${p.getId()}', '${p.getFullName()}')">Delete
                </button>
            </td>
        </tr>
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
