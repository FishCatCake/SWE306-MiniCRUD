<%@ page import="com.swe306.asg2.dao.model.Patient" %><%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2021/12/18
  Time: 7:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Questionnaire</title>
    <style>
        header {
            text-align: center;
        }
        div {

            text-align: center;
            width: auto;
        }
        table {
            border: 5px solid rgba(0, 81, 255, 0.68);
            color: #0066ff;
            margin-left: auto;
            margin-right: auto;
            border-spacing: 1em;

        }
        td {
            width: 600px;
            text-align: left;
            padding: 5px;

        }
        b {
            font-size: large;
        }
    </style>
</head>
<body>
    <header><h1>COVID-19 Questionnaire</h1></header>

    <div>
        <form onsubmit="return validateForm();" <%--action="addQuestionnaires.jsp"// this file is associsted with QuestionnaireDAO //--%> method="post">
            <input type="hidden" name="patient_id" value="<%=request.getParameter("patient_id")%>">
            <table>
                <%--<tr>                                                                // up to your patientDAO
                    <td>Patient Name: <%=Patient.getPatient_name() %></td>
                </tr>
                <tr>
                    <td>Patient IC No. : <%=p.getIC() %></td>
                </tr>
                <tr>
                    <td><br></td>
                </tr>--%>

                <tr>
                    <td><b>1. Choice of your swab test for COVID-19:</b></td>
                </tr>
                <tr>
                    <td><input type="radio" name="test" value="Antigen Rapid Test Kit (RTK)">a) Antigen Rapid Test Kit (RTK)</td>
                </tr>
                <tr>
                </tr>


                <tr>
                    <td><b>2. Are you vaccinated:</b></td>
                </tr>
                <tr>
                    <td><input type="radio" name="vaccine" value="Fully Vaccinated">a) Fully Vaccinated</td>
                </tr>
                <tr>
                    <td><input type="radio" name="vaccine" value="Partially Vaccinated">b) Partially Vaccinated</td>
                </tr>
                <tr>
                    <td><input type="radio" name="vaccine" value="None" style="margin-bottom:20px">c) None</td>
                </tr>


                <tr>
                    <td><b>3. Are you exhibiting two or more symptoms:</b></td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="symptom" value="Fever">a) Fever</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="symptom" value="Cough">b) Cough</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="symptom" value="Body ache">c) Body ache</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="symptom" value="Headache">d) Headache</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="symptom" value="Sore throat">e) Sore throat</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="symptom" value="Fatigue">f) Fatigue</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="symptom" value="None" style="margin-bottom:20px">g) None</td>
                </tr>


                <tr>
                    <td><b>4. Have you attended any areas associated with known COVID-19 clusters:</b></td>
                </tr>
                <tr>
                    <td><input type="radio" name="cluster" value="Yes">a) Yes</td>
                </tr>
                <tr>
                    <td><input type="radio" name="cluster" value="No" style="margin-bottom:20px">b) No</td>
                </tr>

                <tr>
                    <td></td>
                </tr>

                <tr>
                    <td><b>5. Do you have any close contact to confirmed or suspected case of COVID-19 case within 14 days?</b></td>
                </tr>
                <tr>
                    <td><input type="radio" name="closeContact" value="Yes">a) Yes</td>
                </tr>
                <tr>
                    <td><input type="radio" name="closeContact" value="No" style="margin-bottom:20px">b) No</td>
                </tr>

                <tr>
                    <td><input type="submit" value="Submit"/><a type="button" <%--href="viewpatients.jsp"// this file is associated with patient page--%>>
                        <input type=button value="Back to Patient List "></a></td>

                </tr>
            </table>
        </form>
    </div>

</body>
</html>
