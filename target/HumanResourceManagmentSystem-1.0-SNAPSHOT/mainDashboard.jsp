<%--
  Created by IntelliJ IDEA.
  User: Deshan-UCSC
  Date: 10/18/2020
  Time: 10:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="head">
    <a href="login.jsp" class="Logout">Logout</a>
    <a href="ChatSystem.html" class="Msgs" aria-readonly="true">Messages</a>
    <a href="ApproveOrRejectLeave.html" class="Leave">Leave Requests</a>
    <a href="ViewComplain.html" class="com">Complain/Suggestion</a>
    <a href="MySalaryOverview.html" class="Salary">Calculated Salary</a>
</div>
<div class="main-menu">
<nav class="menu">
    <img src="img/avatar.svg">
    <ul class="main-nav-ul">
        <li>
            <a href="home.jsp">Home</a></li>
        <li>
            <a href="#">Employee<span class="sub-arrow"></span></a>
            <ul class="emp-show">
                <li><a href="addEmployee.jsp">Add Employee</a></li>
                <li><a href="updateEmployee.jsp">Update Employee</a></li>
                <li><a href="removeEmployee.jsp">Remove Employee</a></li>
            </ul>
        </li>
        <li>
            <a href="#">Complain/Suggestions<span class="sub-arrow"></span></a>
            <ul>
                <li><a href="addComplians.jsp">Add Complain/Suggestions</a></li>
                <li><a href="viewComplians.jsp">View Complain/Suggestions</a></li>
            </ul>
        </li>
        <li>
            <a href="#">Attendance<span class="sub-arrow"></span></a>
            <ul>
                <li><a href="MyAttendanceHistory.html">My Attendance History</a></li>
                <li><a href="StaffAttendanceHistory.html">Staff Attendance History</a></li>
            </ul>
        </li>
        <li>
            <a href="#">Salary<span class="sub-arrow"></span></a>
            <ul>
                <li><a href="mySalaryOverview.jsp">My Salary Overview</a></li>
                <li><a href="staffSalaryOverview.jsp">Staff Salary Overview</a></li>
                <li><a href="SalaryManagment.html">Salary Management</a></li>
            </ul>
        </li>
        <li>
            <a href="#">Leave<span class="sub-arrow"></span></a>
            <ul>
                <li><a href="applyForLeave.jsp">Apply For Leave</a></li>
                <li><a href="myLeaveHistory.jsp">My Leave History</a></li>
                <li><a href="staffLeaveHistory.jsp">Staff Leave History</a></li>
                <li><a href="approveOrRejectLeave.jsp">Approve Or Reject Leaves</a></li>
            </ul>
        </li>
        <li>
            <a href="#">Social Intranet<span class="sub-arrow"></span></a>
            <ul>
                <li><a href="AddPost.html">Add Post</a></li>
                <li><a href="UpdatePost.html">Update Post</a></li>
                <li><a href="DeletePost.html">Delete Post</a></li>
                <li><a href="ChatSystem.html">Chat System</a></li>
            </ul>
        </li>
        <li><a href="EditAccountDetails.html">Change Personal Details</a></li>
        <li>
            <a href="#">Reports<span class="sub-arrow"></span></a>
            <ul>
                <li><a href="AttendanceReports.html">Attendance Reports</a></li>
                <li><a href="SalaryReports.html">Salary Reports</a></li>
                <li><a href="LeaveReports.html">Leave Reports</a></li>
            </ul>
        </li>
        <li><a href="Customization.html">Customize the System</a></li>
    </ul>
</nav>

</div>