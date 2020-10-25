<%--
  Created by IntelliJ IDEA.
  User: SupunN
  Date: 23/18/2020
  Time: 21:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="user.UserBean" %>
<%@ page import="user.EmployeeDao" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Human Resource Management System</title>
    <link rel="stylesheet" href="style/main.css">
    <link rel="stylesheet" href="style/searchEmployee.css">
</head>
<body>

<div class="content">
    <div class="heading">
        <h3>Update Employee</h3>
    </div>
    <form action="searchemployee" method="POST">
        <%
            EmployeeDao empDao = new EmployeeDao();
            List<UserBean> empList = empDao.searchAllEmployees();
        %>
        <div class="search">
            <table class="tblSearch">
                <br>
                <tr>
                    <td></td><td></td>
                    <td>
                        <input class="input" type="text" name="empId" id="empId" readonly>
                    </td>
                    <td></td><td></td>
                </tr>
                <tr><td></td><td></td>
                    <td>
                        <input type="submit" class="submit" value="Search">
                    </td>
                    <td></td>
                </tr>
            </table>
        </div>
        <div class="result">
            <br>
            <table id="tableResult">
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
                <%
                    for(UserBean employee:empList){
                %>
                <tr>
                    <td class="empIdd"><%=employee.getEmpId()%></td>
                    <td class="empName"><%=employee.getFName()%> <%=employee.getLName()%></td>
                    <td class="empNIC"><%=employee.getNIC()%><%}%></td>

                </tr>
            </table>
        </div>

    </form>
</div>
</div>
<%@include file="mainDashboard.jsp" %>

<script type="text/javascript" src="js/loadDataToTable.js"></script>
</body>
</html>
