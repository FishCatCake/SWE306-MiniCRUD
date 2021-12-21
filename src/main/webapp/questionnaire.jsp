<%@ page import="com.swe306.asg2.dao.model.Patient" %>
<%@ page import="java.util.List" %>
<%@ page import="com.swe306.asg2.dao.interfaces.PatientDAO" %>
<%@ page import="com.swe306.asg2.dao.concrete.MysqlPatientDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    String requestId = request.getParameter("id");
    Patient p = MysqlPatientDAO.selectPatientById(Integer.parseInt(requestId));
    request.setAttribute("p", p);
    System.out.println(p.getIcNumber());
%>
<head>
    <title>${p.getFullName()} - Questionnaire</title>
    <link rel="stylesheet" href="/assets/css/questionnaire.css">
</head>
<body>
<header style="text-align: center"><h1>COVID-19 Questionnaire</h1></header>
<div class="opts">
    <button onclick="document.location='patients.jsp'">Back to Homepage</button>
</div>
<div class="info">
    <table>
        <tr>
            <th>IC No.</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Prescription</th>
            <th>Address</th>
            <th>Tel No.</th>
            <th>Last Visit</th>
        </tr>
        <tr>
            <td>${p.getIcNumber()}</td>
            <td>${p.getFullName()}</td>
            <td>${p.getGender()}</td>
            <td>${p.getPrescription()}</td>
            <td>${p.getAddress()}</td>
            <td>${p.getTelNo()}</td>
            <td>${p.getLastVisitDate()}</td>
        </tr>
    </table>
</div>
<div class="home">
    <form onsubmit="return validate();" action="?" method="post">
        <table>
            <tr>
                <td>
                    <b>1. Choice of your swab test for COVID-19:</b><br>
                    <select name="test">
                        <option value="a">Antigen Rapid Test Kit (RTK)</option>
                        <option value="b">Polymerase Chain Reaction Test (PCR)</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <b>2. Are you vaccinated?</b><br>
                    <select name="vaccine">
                        <option value="a">Fully Vaccinated</option>
                        <option value="b">Partially Vaccinated</option>
                        <option value="c">None</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <b>3. Are you exhibiting two or more symptoms as listed:</b><br>
                    <select name="symptom" multiple>
                        <option value="a">Fever</option>
                        <option value="b">Cough</option>
                        <option value="c">Body ache</option>
                        <option value="d">Headache</option>
                        <option value="e">Sore throat</option>
                        <option value="f">Fatigue</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <b>4. Have you attended any areas associated with known COVID-19 clusters:</b><br>
                    <select name="cluster">
                        <option value="a">Yes</option>
                        <option value="b">No</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>
                    <b>5. Do you have any close contact to confirmed or suspected case of COVID-19 case within 14
                        days?</b><br>
                    <select name="closeContact">
                        <option value="a">Yes</option>
                        <option value="b">No</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><input type="submit" value="Submit"/></td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
