<%--
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
        div {
            border: 5px solid rgba(0, 81, 255, 0.68);
            text-align: center;
        }
        table {
            margin-left: auto;
            margin-right: auto;
            border-spacing: 1em;

        }
        td {
            width: 600px;
            text-align: left;
            padding: 5px;

        }
        select {
            color: #0066ff;
            background: rgba(255, 221, 0, 0.73);
            border: 10px;
            font-size: medium;
            width: 150px;
            margin: 10px;

        }
        select:focus {
            min-width: 150px;
            width: auto;
        }
        b {
            font-size: large;
        }
    </style>
</head>
<body>
    <header style="text-align: center"><h1>COVID-19 Questionnaire</h1></header>

    <div>
    <form action="addQuestionnaire.jsp?" name="question" method="post">
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
                    <select name="attend">
                        <option value="a">Yes</option>
                        <option value="b">No</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>
                    <b>5. Do you have any close contact to confirmed or suspected case of COVID-19 case within 14 days?</b><br>
                    <select name="closeContact">
                        <option value="a">Yes</option>
                        <option value="b">No</option>
                    </select>
                </td>
            </tr>
            <tr><td><input type="submit" value="Submit"/></td></tr>
        </table>
    </form>
    </div>

</body>
</html>
