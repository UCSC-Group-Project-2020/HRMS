<%@ page import="user.UserBean" %><%--
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
    <link rel="stylesheet" href="style/mainDashboard.css">
    <link rel="stylesheet" href="style/addEmployee.css">
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
            <table >
                <br>
                <tr>
                    <td>
                        <input class="emp" type="text" name="empId">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Search">
                    </td>
                </tr>

                </tr>
            </table>
            <div class="result">
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
                    <th>
                        Address
                    </th>
                    <th>
                        Contact No
                    </th>
                    <th>
                        Email
                    </th>
                    <th>
                        Date of Birth
                    </th>
                </tr>
                <%
                for(UserBean employee:empList){
                %>
                <tr>
                    <td><%=employee.getEmpId()%></td>
                    <td><%=employee.getFName()%> <%=employee.getLName()%></td>
                    <td><%=employee.getNIC()%></td>
                    <td><%=employee.getAddress()%></td>
                    <td><%=employee.getContact()%></td>
                    <td><%=employee.getEmail()%></td>
                    <td><%=employee.getDOB()%><%}%></td>
                </tr>
            </table>
            </div>
        </div>
    </form>
</div>
</div>
<%@include file="mainDashboard.jsp" %>

<script type="text/javascript" src="js/loadDataToTable.js"></script>
</body>
</html>
