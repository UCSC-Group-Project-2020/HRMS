<%--
  Created by IntelliJ IDEA.
  User: Deshan-UCSC
  Date: 10/18/2020
  Time: 12:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Human Resource Management System</title>
</head>
<body>
<div>
    <title>Human Resource Management System</title>
    <link rel="stylesheet" href="style/main.css">
    <link rel="stylesheet" href="style/removeEmployee.css">
</div>
<div class="content">
    <div class="heading">
        <h3>Remove Employee</h3>
    </div>

    <br>
    <div class="selection">
        <table>
            <tr>
                <td>
                    <label class="label">Employee Id</label>
                </td>
                <th>
                    <input class="input" type="text" name="empId" id="empId" readonly>
                </th>
            </tr>
        </table>
        <table>
            <tr>
                <td></td>
                <th>
                    <a href="#" class="remove">Remove Employee</a>
                </th>
            </tr>
        </table>
    </div>

    <div class="result">
        <br>
        <table id="table">
            <tr>
                <th>
                    Employee Id
                </th>
                <th>
                    Name
                </th>
                <th>
                    NIC
                </th>
            </tr>
            <tr>

                <td>11213</td>
                <td>
                    Ravindu
                </td>
                <td>
                    D
                </td>
            </tr>
            <tr>
                <td>
                    112312
                </td>

                <td>
                    Chamika Deshan
                </td>
                <td>
                    D
                </td>
            </tr>
            <tr>
                <td>
                    48152
                </td>

                <td>
                    Lakith rathnayaka
                </td>
                <td>
                    D
                </td>
            </tr>
            <tr>
                <td>
                    1231231
                </td>

                <td>
                    Supun
                </td>
                <td>
                    D
                </td>
            </tr>
            <tr>
                <td>
                    33124
                </td>

                <td>
                    Nanayakkara
                </td>
                <td>
                    D
                </td>
            </tr>
            <tr>
                <td>
                    2345678
                </td>

                <td>
                    Bhagya
                </td>
                <td>
                    D
                </td>
            </tr>

        </table>

    </div>
</div>
<%@include file="mainDashboard.jsp" %>
<script type="text/javascript" src="js/loadDataToTable.js"></script>
</body>
</html>
