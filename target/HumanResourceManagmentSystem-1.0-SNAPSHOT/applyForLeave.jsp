<%--
  Created by IntelliJ IDEA.
  User: Deshan-UCSC
  Date: 10/18/2020
  Time: 6:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Human Resource Management System</title>
    <link rel="stylesheet" href="style/mainDashboard.css">
    <link rel="stylesheet" href="style/ApplyForLeave.css">
</head>
<body>
<div class="content">
    <div class="heading">
        <h3>Apply For Leave</h3>
    </div>
    <div class="leaves">
        <table>
            <tr>
                <td>
                    <label class="label">Annual Leaves</label>
                </td>
                <th>
                    <input class="input" type="text" name="Annualleaves" id="Annualleaves" readonly>
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Remaining Leaves</label>
                </td>
                <th>
                    <input class="input" type="text" name="Remainingleaves" id="Remainingleaves" readonly>
                </th>
            </tr>
        </table>
    </div>

    <div class="main">

        <table>
            <tr>
                <td>
                    <label class="label">Leave ID</label>
                </td>
                <th>
                    <input class="input" type="text" name="id" id="id">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Applied Date</label>
                </td>
                <th>
                    <input class="input" type="date" name="name" id="name">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">From Date</label>
                </td>
                <th>
                    <input class="input" type="date" name="from" id="from">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">To Date</label>
                </td>
                <th>
                    <input class="input" type="date" name="to" id="to">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Request From</label>
                </td>
                <th>
                    <input class="input" type="text" name="LoadField" id="empId" readonly placeholder="Select Sender for this Request From the given List">
                </th>
            </tr>

        </table>


        <table>
            <tr>
                <td>
                    <label class="label">Reason for Leave Appling...</label>
                </td>

            </tr>
            <tr>
                <th>
                    <textarea rows="4" cols="50" name="reason" id="reason"></textarea>
                </th>
            </tr>
        </table>

        <br>
    </div>
    <div class="btn">
        <table>
            <tr>
                <td></td>
                <th>
                    <a href="#" class="approve" id="approve">Approve</a>
                </th>
                <th>
                    <a href="#" class="reject">Reject</a>
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
