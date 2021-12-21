<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add patient</title>
    <style>
        .home {
            text-align: center;
        }

        .form {
            display: flex;
            justify-content: center;
        }
    </style>
</head>
<body>
<div class="home">
    <h1>Add new patient</h1>
    <button onclick="document.location='patients.jsp'">Back</button>
    <div class="form">
        <form onsubmit="return validate();" action="doAddPatient.jsp" method="post">
            <table>
                <tr>
                    <td>Patient IC No.:</td>
                    <td><input type="text" name="icNumber" id="icNumber"></td>
                </tr>
                <tr>
                    <td>Patient Full Name:</td>
                    <td><input type="text" name="fullName" id="fullName"></td>
                </tr>
                <tr>
                    <td>Patient Tel No:</td>
                    <td><input type="tel" name="telNo" id="telNo"></td>
                </tr>
                <tr>
                    <td>Patient Gender:</td>
                    <td><input type="radio" name="gender" value="male">Male</td>
                    <td><input type="radio" name="gender" value="female">Female</td>
                </tr>
                <tr>
                    <td>Patient Address:</td>
                    <td><input type="text" name="address" id="address"></td>
                </tr>

                <tr>
                    <td>Patient Last Visit Date:</td>
                    <td><input type="date" name="lastDate" id="lastDate"></td>
                </tr>

                <tr>
                    <td>Patient Prescription:</td>
                    <td><input type="text" name="prescription" id="prescription"></td>
                </tr>

                <tr>
                    <td><input type="submit" value="Add Patient"/></td>
                </tr>

            </table>
        </form>
    </div>
</div>
</body>
</html>
