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
       Edit Patient
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

    Welcome, <c:out value="${usr}"/>.

    <button onclick="document.location='index.jsp'">Logout</button>
</div>

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
                <td>${p.getICNumber()}</td>
                <td>${p.getFullName()}</td>
                <td>${p.getGender()}</td>
                <td>${p.getPrescription()}</td>
                <td>Link to Q</td>
                <td>${p.getAddress()}</td>
                <td>${p.getTelNo()}</td>
                <td>${p.getLastVisitDate()}</td>
                <td>
                    <button>Edit</button>
                    <button>Delete</button>
                </td>
            </tr>
        </c:forEach>
    </table>

    <%--<c:forEach items="${list}" var="p">--%>
    <%--    <table>--%>
    <%--        <tr>--%>
    <%--            <th>IC No.</th>--%>
    <%--            <th>Name</th>--%>
    <%--            <th>Gender</th>--%>
    <%--        </tr>--%>
    <%--    </table>--%>
    <%--</c:forEach>--%>

    <%--    <table>--%>
    <%--        <tr>--%>
    <%--            <th>IC No.</th>--%>
    <%--            <th>Name</th>--%>
    <%--            <th>Gender</th>--%>
    <%--            <th>Phone</th>--%>
    <%--            <th>Birthday</th>--%>
    <%--            <th>Visit Date</th>--%>
    <%--            <th>Prescriptions</th>--%>
    <%--            <th>Covid-19 Test</th>--%>
    <%--            <th>Edit</th>--%>
    <%--            <th>Delete</th>--%>
    <%--        </tr>--%>

    <%--        <c:forEach items="${list}" var="p">--%>
    <%--            <tr>--%>
    <%--                <td>${p.getIC()}</td>--%>
    <%--                <td>${p.getPatient_name()}</td>--%>
    <%--                <td>${p.getGender()}</td>--%>
    <%--                <td>${p.getPhone_number()}</td>--%>
    <%--                <td>${p.getBirthday()}</td>--%>
    <%--                <td>${p.getDate()}</td>--%>
    <%--                <td>${p.getPrescriptions()}</td>--%>
    <%--                <td><a href="addOrViewQuestionnaires.jsp?patient_id=${p.getPatient_id()}">Click here</a>--%>
    <%--                </td>--%>
    <%--                <td><a type="button" href="editform.jsp?patient_id=${p.getPatient_id()}"><input type=button value="Edit"></a>--%>
    <%--                </td>--%>
    <%--                <td><a type="button" href="deletepatient.jsp?patient_id=${p.getPatient_id()}"><input type=button value="Delete"></a>--%>
    <%--                </td>--%>
    <%--            </tr>--%>
    <%--        </c:forEach>--%>
    <%--    </table>--%>
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