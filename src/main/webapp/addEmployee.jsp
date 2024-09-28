<%--
Created by IntelliJ IDEA.
User: Deshan-UCSC
Date: 10/17/2020
Time: 10:48 PM
To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="DBconnection.DBconn" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>Human Resource Management System</title>
    <link rel="stylesheet" href="style/main.css">
    <link rel="stylesheet" href="style/Employee.css">
</head>
<body>
<div class="content">
    <div class="heading">
        <h3> Add Employee</h3>
    </div>
    <br>
    <form action="addemployee" method="POST">
        <label class="Basic">Basic Details</label>
        <br>
        <br>
        <table>
            <tr>
                <td>
                    <label class="label">EMP ID</label>
                </td>
                <%
                    ResultSet rs = null;
                    try {
                        Connection con = DBconn.getConnection();
                        Statement statement = con.createStatement();
                        rs = statement.executeQuery("SELECT empId FROM user ORDER BY empId DESC LIMIT 1");

                       if (rs.next()) {%>
                <th>
                    <input class="input" type="text" name="empid" value="<%=rs.getInt("empId")+1%>" readonly>
                </th>
            </tr>
            <%}else {%>
            <th>
                <input class="input" type="text" name="empid" value="1000" readonly>
            </th>

            </tr>
            <%}


            } catch (SQLException e) {
                e.printStackTrace();
                System.out.println("Error");
                System.out.println(e);
            }%>
            <tr>
                <td>
                    <label class="label">First Name</label>
                </td>
                <th>
                    <input class="input" type="text" name="first_name">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Last Name</label>
                </td>
                <th>
                    <input class="input" type="text" name="last_name">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">NIC</label>
                </td>
                <th>
                    <input class="input" type="text" name="nic">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Address</label>
                </td>
                <th>
                    <input class="input" type="text" name="address">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Email</label>

                </td>
                <th>
                    <input class="input" type="email" name="email">
                </th>

            </tr>
            <tr>
                <td>
                    <label class="label">Date Of Birth</label>
                </td>
                <th>
                    <input class="input" type="date" name="dob">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Phone Number</label>
                </td>
                <th>
                    <input class="input" type="text" name="phone">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Password</label>
                </td>
                <th>
                    <input class="input" type="password" name="password">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Confirm Password</label>
                </td>
                <th>
                    <input class="input" type="password" name="confirm_password">
                    <br>
                </th>
            </tr>

        </table>
        <div class="fingerprint">
            <br>
            <table>

                <tr>
                    <th>
                        <button class="open-button" onclick="openForm()">Add Fingerprint</button>
                    </th>
                </tr>

            </table>
        </div>
        <div class="salarydetails">
            <br>
            <label class="Basic">Salary Details</label>
            <br>
            <table>
                <tr>
                    <td>
                        <label class="label">Basic Salary(per month)(Rs)
                        </label>
                    </td>
                    <th>
                        <input class="input" type="text" name="bSalary">
                    </th>
                </tr>
                <tr>
                    <td>
                        <label class="label">OT Rate</label>
                    </td>
                    <th>
                        <input class="input" type="text" name="otRate">
                    </th>
                </tr>
            </table>

        </div>
        <br>
        <div class="leaveDetails">
            <br>
            <label class="Basic">Leave Details</label>

            <table>
                <tr>
                    <td>
                        <label class="label">Annual Number Of Leaves</label>
                    </td>
                    <th>
                        <input class="input" type="text" name="leaves">
                    </th>
                </tr>
            </table>
        </div>
        <br>
        <div class="userPre">
            <br>
            <table class="topic">
                <tr>
                    <td>
                        <label class="Basic"><b>Customize User Privileges</b></label>
                    </td>
                    <th>
                        <label class="Basic"><b> Allowed</b></label>
                    </th>
                    <th>
                        <label class="Basic"><b> Not Allowed</b></label>
                    </th>
                </tr>
            </table>
            <table>
                <br>
                <label class="Basic">Employee</label>

                <tr>
                    <td>
                        <br>
                        <label class="label">Add Employee / Update Employee</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="employeeAdd" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="employeeAdd" value="0" checked>
                    </th>
                </tr>
                <tr>
                    <td>
                        <label class="label">Remove Employee</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="employeeRemove" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="employeeRemove" value="0" checked>
                    </th>
                </tr>
            </table>
            <table>
                <br>
                <label class="Basic">Social Intranet</label>
                <tr>
                    <td>
                        <br>
                        <label class="label">Add Post / Update Post</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="postAdd" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="postAdd" value="0" checked>
                    </th>
                </tr>
                <tr>
                    <td>
                        <label class="label">Delete Post</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="postDelete" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="postDelete" value="0" checked>
                    </th>
                </tr>
                <tr>
                    <td>
                        <label class="label">View Post</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="postView" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="postView" value="0" checked>
                    </th>
                </tr>
                <tr>
                    <td>
                        <label class="label">Use Chat System</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="chatSystemUse" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="chatSystemUse" value="0" checked>
                    </th>
                </tr>
            </table>
            <table>
                <br>
                <label class="Basic">Leave Management</label>
                <tr>
                    <td>
                        <br>
                        <label class="label">Apply For Leave</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="leaveApply" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="leaveApply" value="0" checked>
                    </th>
                </tr>
                <tr>
                    <td>
                        <label class="label">Leave Approve or Reject Leave</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="ApproveOrRejectLeave" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="ApproveOrRejectLeave" value="0" checked>
                    </th>
                </tr>
                <tr>
                    <td>
                        <label class="label">View Leave History Only My Account</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="myLeaveHistoryView" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="myLeaveHistoryView" value="0" checked>
                    </th>
                </tr>
                <tr>
                    <td>
                        <label class="label">View Leave History Others Account</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="otherLeaveHistoryView" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="otherLeaveHistoryView" value="0" checked>
                    </th>
                </tr>
            </table>
            <table>
                <br>
                <label class="Basic">Attendance Management</label>

                <tr>
                    <td>
                        <br>
                        <label class="label">View Attendance History Only My Account</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="myAttendanceHistoryView" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="myAttendanceHistoryView" value="0" checked>
                    </th>
                </tr>
                <tr>
                    <td>
                        <label class="label">View Attendance History Others Account</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="othersAttendanceHistoryView" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="othersAttendanceHistoryView" value="0" checked>
                    </th>
                </tr>
            </table>
            <table>
                <br>
                <label class="Basic">Salary Management</label>
                <tr>
                    <td>
                        <br>
                        <label class="label">Salary Management</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="salaryManagement" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="salaryManagement" value="0" checked>
                    </th>
                </tr>

                <tr>
                    <td>
                        <label class="label">View Salary Overview Only My Account</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="mySalary" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="mySalary" value="0" checked>
                    </th>
                </tr>
                <tr>
                    <td>
                        <label class="label">View Salary Overview Others account</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="otherSalary" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="otherSalary" value="0" checked>
                    </th>
                </tr>
            </table>
            <table>
                <br>
                <label class="Basic"> Complain/ Suggestion</label>
                <tr>
                    <td>
                        <br>
                        <label class="label">Give Complain/ Suggestion</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="complain_suggestionGive" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="complain_suggestionGive" value="0" checked>
                    </th>
                </tr>
                <tr>
                    <td>
                        <label class="label">View Complain/ Suggestion</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="complain_suggestionView" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="complain_suggestionView" value="0" checked>
                    </th>
                </tr>

            </table>
            <table>
                <br>
                <label class="Basic">Other</label>
                <tr>
                    <td>
                        <br>
                        <label class="label">Customize Data</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="dataCustomize" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="dataCustomize" value="0" checked>
                    </th>
                </tr>
                <tr>
                    <td>
                        <label class="label">Edit Personal Details</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="personalDetailsEdit" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="personalDetailsEdit" value="0" checked>
                    </th>
                </tr>
                <tr>
                    <td>
                        <label class="label">Report generation</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="generationReport" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="generationReport" value="0" checked>
                    </th>
                </tr>
            </table>
            <table>
                <tr>
                    <td></td>

                    <th></th>
                    <th>
                        <input class="Register" type="submit" value="Register"/>
                    </th>
                </tr>
            </table>
        </div>
    </form>
</div>
</div>

<%@include file="mainDashboard.jsp" %>

<script type="text/javascript" src="js/addEmployee.js"></script>
</body>
</html>