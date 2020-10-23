<%@ page import="user.UserBean" %><%--
  Created by IntelliJ IDEA.
  User: Deshan-UCSC
  Date: 10/18/2020
  Time: 12:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="user.UserBean" %>
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
    <form action="updateemployee" method="POST">
        <%UserBean employee = (UserBean) request.getAttribute("employee");%>
        <div class="search">
            <table >
                <br>
                <tr>
                    <td>
                        <input class="emp" type="text" name="empId" value="<%=employee.getEmpId()%>" readonly>
                    </td>
                </tr>

                </tr>
            </table>
        </div>

        <br>
        <label class="Basic">Basic Details</label>
        <br>

        <table>
            <tr>
                <td>
                    <label class="label">First Name</label>
                </td>
                <th>
                    <input class="input" type="text" name="first_name" value="<%=employee.getFName()%>">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Last Name</label>
                </td>
                <th>
                    <input class="input" type="text" name="last_name" value="<%=employee.getLName()%>">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">NIC</label>
                </td>
                <th>
                    <input class="input" type="text" name="nic" value="<%=employee.getNIC()%>">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Address</label>
                </td>
                <th>
                    <input class="input" type="text" name="address" value="<%=employee.getAddress()%>">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Email</label>

                </td>
                <th>
                    <input class="input" type="email" name="email" value="<%=employee.getEmail()%>">
                </th>

            </tr>
            <tr>
                <td>
                    <label class="label">Date Of Birth</label>
                </td>
                <th>
                    <input class="input" type="date" name="dob" value="<%=employee.getDOB()%>">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Phone Number</label>
                </td>
                <th>
                    <input class="input" type="text" name="phone" value="<%=employee.getContact()%>">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Password</label>
                </td>
                <th>
                    <input class="input" type="text" name="password" value="<%=employee.getPassword()%>">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Confirm Password</label>
                </td>
                <th>
                    <input class="input" type="text" name="confirm_password" value="<%=employee.getPassword()%>">
                    <br>
                </th>
            </tr>
        </table>
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
                        <input class="input" type="text" name="bSalary" value="<%=employee.getBasicSal()%>">
                    </th>
                </tr>
                <tr>
                    <td>
                        <label class="label">OT Rate</label>
                    </td>
                    <th>
                        <input class="input" type="text" name="otRate" value="<%=employee.getOtRate()%>">
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
                        <input class="input" type="text" name="leaves" value="<%=employee.getTotalLeaves()%>">
                        <input class="input" type="text" name="tleaves" value="<%=employee.getTakenLeaves()%>" hidden readonly>
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
                        <label class="Basic"><b>Customize User Privilages</b></label>
                    </td>
                    <th>
                        <label class="Basic"><b> Alowed</b></label>
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
                        <input class="input" type="radio" name="employeeAdd" value="0">
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
                        <label class="label">Attendance Management</label>
                    </td>
                    <th>
                        <input class="input" type="radio" name="attendanceManagement" value="1">
                    </th>
                    <th>
                        <input class="input" type="radio" name="attendanceManagement" value="0" checked>
                    </th>
                </tr>
                <tr>
                    <td>
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
                        <input type="submit" value="UPDATE">
                    </th>
                </tr>
            </table>
        </div>
    </form>
</div>
</div>
<%@include file="mainDashboard.jsp" %>
<script>

</script>

<script type="text/javascript" src="js/loadDataToTable.js"></script>
</body>
</html>
