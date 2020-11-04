<%--
  Created by IntelliJ IDEA.
  User: SupunN
  Date: 10/23/2020
  Time: 12:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Human Resource Management System</title>
    <link rel="stylesheet" href="style/mainStyle.css">
    <link rel="stylesheet" href="style/addComplain.css">
</head>
<body>

<div class="content">
    <div class="heading">
        <h3>Add Complain/Suggestions</h3>
    </div>
    <br>
    <div class="main">
        <table>
            <tr>
                <td>
                    <label class="label">Current Logged Employee Id</label>
                </td>
                <th>
                    <input class="input" type="text" name="empId" placeholder="EmpId" readonly>
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Complain/Suggestions Id</label>
                </td>
                <th>
                    <input class="input" type="text" name="comId">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Date</label>
                </td>
                <th>
                    <input class="input" type="date" name="date">
                </th>
            </tr>
        </table>

        <table>
            <tr>
                <td>
                    <label class="Basic"><b></b></label>
                </td>
                <th>
                    <label class="Basic"><b>Complain</b></label>
                </th>
                <th>
                    <label class="Basic"><b>Suggestion</b></label>
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Type</label>
                </td>
                <th>
                    <input class="input" type="radio" name="Complain/Suggestions" value="1">
                </th>
                <th>
                    <input class="input" type="radio" name="Complain/Suggestions" value="1">
                </th>
            </tr>
            <table>
                <tr>
                    <th>
              <textarea rows="5" cols="50" name="description"
                        placeholder="Enter your Complain/Suggestion Here"></textarea>
                    </th>
                </tr>
            </table>
            <table>
                <tr>
                    <td></td>
                    <th>
                        <input class="send" type="submit" value="Send"/>
                    </th>
                </tr>
            </table>
        </table>
    </div>
</div>
<%@include file="mainDashboard.jsp" %>
</body>

</html>
