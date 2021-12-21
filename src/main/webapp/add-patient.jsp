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
        <form onsubmit="return validate();" action="addPatient.jsp" method="post">
            <table>
                <tr>
                    <td>Patient IC No.:</td>
                    <td><input type="text" name="IC" id="IC"></td>
                </tr>
                <tr>
                    <td>Patient Full Name:</td>
                    <td><input type="text" name="fullname" id="fullname"></td>
                </tr>
                <tr>
                    <td>Patient Tel No:</td>
                    <td><input type="tel" name="tel" id="tel"></td>
                </tr>
                <tr>
                    <td>Patient Gender:</td>
                    <td><input type="radio" name="gender" value="Male">Male</td>
                    <td><input type="radio" name="gender" value="Female">Female</td>
                </tr>
                <tr>
                    <td>Patient Last Visit Date:</td>
                    <td><input type="date" name="date" id="date"></td>
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
