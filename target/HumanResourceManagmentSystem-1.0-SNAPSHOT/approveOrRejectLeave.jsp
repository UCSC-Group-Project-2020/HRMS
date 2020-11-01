<%--
  Created by IntelliJ IDEA.
  User: Deshan-UCSC
  Date: 10/18/2020
  Time: 6:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Human Resource Management System</title>
    <link rel="stylesheet" href="style/main.css">
    <link rel="stylesheet" href="style/approveOrRejectLeaves.css">
</head>
<body>
<div class="content">
    <div class="heading">
        <h3>Approve or Reject Leave</h3>
    </div>
    <br>
    <div class="main">
        <table>
            <tr>
                <td>
                    <label class="label">Employee Id</label>
                </td>
                <th>
                    <input class="input" type="text" name="empId" id="empId" readonly>
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Name</label>
                </td>
                <th>
                    <input class="input" type="text" name="name" id="name" readonly>
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">From Date</label>
                </td>
                <th>
                    <input class="input" type="text" name="from" id="from" readonly>
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">To Date</label>
                </td>
                <th>
                    <input class="input" type="text" name="to" id="to" readonly>
                </th>
            </tr>

        </table>

        <table>
            <tr>
                <th>
                    <textarea rows="5" cols="50" name="reason" id="reason" readonly></textarea>
                </th>
            </tr>
        </table>

    </div>
    <div class="action">
        <input class="AppRej" type="submit" value="Approve"/>

        <input class="AppRej" type="submit" value="Reject"/>
    </div>
    <br>
    <br><br>
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
                    From Date
                </th>
                <th>
                    To Date
                </th>
                <th>
                    Reason
                </th>
            </tr>
            <tr>
                <td>
                    A
                </td>
                <td>
                    B
                </td>
                <td>
                    C
                </td>
                <td>
                    D
                </td>
                <td>
                    D
                </td>
            </tr>
            <tr>
                <td>
                    A
                </td>
                <td>
                    B
                </td>
                <td>
                    C
                </td>
                <td>
                    D
                </td>
                <td>
                    D
                </td>
            </tr>

        </table>
    </div>
</div>
<%@include file="mainDashboard.jsp" %>

<script type="text/javascript" src="js/approveOrRejectLeave.js"></script>

</body>
</html>
