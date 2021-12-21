<%@ page import="com.swe306.asg2.dao.concrete.MysqlPatientDAO" %>
<%@ page import="com.swe306.asg2.dao.model.Patient" %>
<%@ page import="com.swe306.asg2.dao.model.Questionnaire" %>
<%@ page import="com.swe306.asg2.dao.concrete.MysqlQuestionnaireDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    if (request.getParameter("id") == null) {
        response.sendRedirect("/patients.jsp");
    } else {
        String requestId = request.getParameter("id");
        Patient p = MysqlPatientDAO.selectPatientById(Integer.parseInt(requestId));
        request.setAttribute("p", p);
        Questionnaire q = MysqlQuestionnaireDAO.selectByIcNumber(p.getIcNumber());
        request.setAttribute("q", q);
        if (q.getQ1() != null) {
            response.sendRedirect("/questionnaire.jsp?id=" + requestId);
        }
    }
%>
<head>
    <title>Add New Questionnaire</title>
    <link rel="stylesheet" href="/assets/css/questionnaire.css">
</head>
<body>
<div class="title">
    <h1>COVID-19 Questionnaire</h1>
    <h2>Add New Questionnaire</h2>
</div>
<div class="opts">
    <button onclick="document.location='patients.jsp'">Back to Patients List</button>
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
            <td>${p.getLastDate()}</td>
        </tr>
    </table>
</div>
<div class="q">
    <form onsubmit="return validateForm();" action="doAddQuestionnaire.jsp" method="post">
        <table>
            <tr style="display: none;">
                <td><input type="text" name="icNumber"
                           value="${p.getIcNumber()}">
                </td>
            </tr>
            <tr>
                <td><b>1. Choice of your swab test for COVID-19:</b></td>
            </tr>
            <tr>
                <td><input type="radio" name="q1"
                           value="Antigen Rapid Test Kit (RTK)">a) Antigen Rapid Test Kit
                    (RTK)
                </td>
            </tr>
            <tr>
                <td><input type="radio" name="q1"
                           value="Polymerase Chain Reaction Test (PCR)">b) Polymerase Chain Reaction Test (PCR)
                </td>
            </tr>

            <tr>
                <td><b>2. Are you vaccinated:</b></td>
            </tr>
            <tr>
                <td><input type="radio" name="q2" value="Fully Vaccinated">a) Fully
                    Vaccinated
                </td>
            </tr>
            <tr>
                <td><input type="radio" name="q2" value="Partially Vaccinated">b)
                    Partially Vaccinated
                </td>
            </tr>
            <tr>
                <td><input type="radio" name="q2" value="None"
                           style="margin-bottom:20px">c) None
                </td>
            </tr>


            <tr>
                <td><b>3. Are you exhibiting two or more symptoms:</b></td>
            </tr>
            <tr>
                <td><input type="checkbox" name="q3" value="Fever">a) Fever</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="q3" value="Cough">b) Cough</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="q3" value="Body ache">c) Body ache
                </td>
            </tr>
            <tr>
                <td><input type="checkbox" name="q3" value="Headache">d) Headache
                </td>
            </tr>
            <tr>
                <td><input type="checkbox" name="q3" value="Sore throat">e) Sore
                    throat
                </td>
            </tr>
            <tr>
                <td><input type="checkbox" name="q3" value="Fatigue">f) Fatigue
                </td>
            </tr>
            <tr>
                <td><input type="checkbox" name="q3" value="None"
                           style="margin-bottom:20px">g) None
                </td>
            </tr>


            <tr>
                <td><b>4. Have you attended any areas associated with known COVID-19
                    clusters:</b></td>
            </tr>
            <tr>
                <td><input type="radio" name="q4" value="Yes">a) Yes</td>
            </tr>
            <tr>
                <td><input type="radio" name="q4" value="No"
                           style="margin-bottom:20px">b) No
                </td>
            </tr>

            <tr>
                <td></td>
            </tr>

            <tr>
                <td><b>5. Do you have any close contact to confirmed or suspected case
                    of COVID-19 case within 14 days?</b></td>
            </tr>
            <tr>
                <td><input type="radio" name="q5" value="Yes">a) Yes</td>
            </tr>
            <tr>
                <td><input type="radio" name="q5" value="No"
                           style="margin-bottom:20px">b) No
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="Submit"/>
                </td>
            </tr>
        </table>
    </form>
</div>
<script src="assets/js/validateQuestionnaire.js"></script>


</body>
</html>
