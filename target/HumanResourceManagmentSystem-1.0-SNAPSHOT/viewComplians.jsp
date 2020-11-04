<%--
  Created by IntelliJ IDEA.
  User: Deshan-UCSC
  Date: 10/18/2020
  Time: 5:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Human Resource Management System</title>
    <link rel="stylesheet" href="style/mainStyle.css">
    <link rel="stylesheet" href="style/viewComplain.css">
</head>
<body>

<div class="content">
    <div class="heading">
        <h3>View Complain/Suggestions</h3>
    </div>
    <br>
    <div class="main">
        <table>
            <tr>
                <td>
                    <label class="label">Complain/Suggestions Id</label>
                </td>
                <th>
                    <input class="input" type="text" name="comId" id="comId" readonly>
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Date</label>
                </td>
                <th>
                    <input class="input" type="text" name="date" id="date" readonly>
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Type</label>
                </td>
                <th>
                    <input class="input" type="text" name="type" id="type" readonly>
                </th>
            </tr>
        </table>

        <table>
            <tr>
                <th>
                    <textarea rows="5" cols="50" name="description" id="description" readonly></textarea>
                </th>
            </tr>
        </table>
    </div>
    <br>
    <div class="result">
        <table id="table">
            <tr>
                <th>
                    Complain/Suggestions Id
                </th>
                <th>
                    Date
                </th>
                <th>
                    Type
                </th>
                <th>
                    Description
                </th>
            </tr>
            <tr>
                <td>34567</td>
                <td>D</td>
                <td>D</td>
                <td>dfghjkl;</td>
            </tr>
            <tr>
                <td>34qwe567</td>
                <td>D</td>
                <td>D</td>
                <td>Dfjhdghasdhjkashqwejkashdjk</td>
            </tr>
            <tr>
                <td>34qwe567</td>
                <td>D</td>
                <td>D</td>
                <td>Dfjhdghasdhjkashqwejkashdjk</td>

        </table>

    </div>
</div>
<%@include file="mainDashboard.jsp" %>
<script type="text/javascript" src="js/viewComplains.js"></script>
</body>
</html>
