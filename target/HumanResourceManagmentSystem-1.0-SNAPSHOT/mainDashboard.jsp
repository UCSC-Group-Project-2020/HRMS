<%@ page contentType="text/html;charset=UTF-8" %>

<div class="head">
    <a href="login.jsp" class="Logout">Logout</a>
    <%if(session.getAttribute("chatSys").equals(1)) {%><a href="" class="Msgs" aria-readonly="true">Messages</a><%}%>
    <%if(session.getAttribute("viewMySalary").equals(1)) {%><a href="mySalaryOverview.jsp" class="Salary">Calculated Salary</a><%}%>
    <%if(session.getAttribute("decisionLeave").equals(1)) {%><a href="approveOrRejectLeave.jsp" class="Leave">Leave Requests</a><%}else if(session.getAttribute("viewMyLeaves").equals(1)) {%><a href="myLeaveHistory.jsp" class="Leave">Leave Response</a><%}%>
    <%if(session.getAttribute("viewComSug").equals(1)) {%><a href="viewComplains.jsp" class="com">Complain/Suggestion</a><%}%>
</div>
<div class="main-menu">
<nav class="menu">

    <img src="img/avatar.svg" alt="">

    <ul class="main-nav-ul">
        <li>
            <a href="home.jsp">Home</a></li>
        <%if(session.getAttribute("empAdd").equals(1) || (session.getAttribute("empAdd").equals(1))
        || (session.getAttribute("empDel").equals(1)) ) {%>
        <li>
            <a href="#">Employee<span class="sub-arrow"></span></a>
            <ul class="emp-show">
                <%if(session.getAttribute("empAdd").equals(1)) {%><li><a href="addEmployee.jsp" >Add Employee</a></li><%}%>
                <%if(session.getAttribute("empAdd").equals(1)) {%><li><a href="searchEmployee.jsp">Update Employee</a></li><%}%>
                <%if(session.getAttribute("empDel").equals(1)) {%><li><a href="removeEmployee.jsp">Remove Employee</a></li><%}%>
            </ul>
        </li>
        <%}%>
        <%if(session.getAttribute("giveComSug").equals(1) || (session.getAttribute("viewComSug").equals(1))){%>
                <li>
                    <a href="#">Complain/Suggestions<span class="sub-arrow"></span></a>
                    <ul>
                        <%if(session.getAttribute("giveComSug").equals(1)) {%><li><a href="addComplains.jsp">Add Complain/Suggestions</a></li><%}%>
                        <%if(session.getAttribute("viewComSug").equals(1)) {%><li><a href="viewComplains.jsp">View Complain/Suggestions</a></li><%}%>
                    </ul>
                </li>
        <%}%>
        <%if(session.getAttribute("viewMyAttend").equals(1) || (session.getAttribute("viewAllAttend").equals(1))){%>
        <li>
            <a href="#">Attendance<span class="sub-arrow"></span></a>
            <ul>
                <%if(session.getAttribute("viewMyAttend").equals(1)) {%><li><a href="myAttendanceHistory.jsp">My Attendance History</a></li><%}%>
                <%if(session.getAttribute("viewAllAttend").equals(1)) {%><li><a href="staffAttendanceHistory.jsp">Staff Attendance History</a></li><%}%>
            </ul>
        </li>
    <%}%>


        <%if(session.getAttribute("viewMySalary").equals(1) || (session.getAttribute("viewAllSalary").equals(1))
        || (session.getAttribute("salaryManage").equals(1))){%>
        <li>
            <a href="#">Salary<span class="sub-arrow"></span></a>
            <ul>
                <%if(session.getAttribute("viewMySalary").equals(1)) {%><li><a href="mySalaryOverview.jsp">My Salary Overview</a></li><%}%>
                <%if(session.getAttribute("viewAllSalary").equals(1)) {%><li><a href="staffSalaryOverview.jsp">Staff Salary Overview</a></li><%}%>
                <%if(session.getAttribute("salaryManage").equals(1)) {%><li><a href="salaryManagement.jsp">Salary Management</a></li><%}%>
            </ul>
        </li>

        <%}%>
        <%if(session.getAttribute("applyLeave").equals(1) || (session.getAttribute("viewMyLeaves").equals(1)) ||
            (session.getAttribute("viewAllLeaves").equals(1))|| (session.getAttribute("decisionLeave").equals(1))){%>
        <li>
            <a href="#">Leave<span class="sub-arrow"></span></a>
            <ul>
                <%if(session.getAttribute("applyLeave").equals(1)) {%><li><a href="applyForLeave.jsp">Apply For Leave</a></li><%}%>
                <%if(session.getAttribute("viewMyLeaves").equals(1)) {%><li><a href="myLeaveHistory.jsp">My Leave History</a></li><%}%>
                <%if(session.getAttribute("viewAllLeaves").equals(1)) {%><li><a href="staffLeaveHistory.jsp">Staff Leave History</a></li><%}%>
                <%if(session.getAttribute("decisionLeave").equals(1)) {%> <li><a href="approveOrRejectLeave.jsp">Approve Or Reject Leaves</a></li><%}%>
            </ul>
        </li>
        <%}%>

        <%if(session.getAttribute("postAdd").equals(1) || (session.getAttribute("postAdd").equals(1))||
                (session.getAttribute("postDel").equals(1)) || (session.getAttribute("chatSys").equals(1))) {%>

        <li>
            <a href="#">Social Intranet<span class="sub-arrow"></span></a>
            <ul><%if(session.getAttribute("chatSys").equals(1)) {%><li><a href="chatSystem.jsp">Chat System</a></li><%}%>
                <%if(session.getAttribute("postAdd").equals(1)) {%><li><a href="addPost.jsp">Add Post</a></li><%}%>
                <%if(session.getAttribute("postAdd").equals(1)) {%><li><a href="updatePost.jsp">Update Post</a></li><%}%>
                <%if(session.getAttribute("postDel").equals(1)) {%><li><a href="deletePost.jsp">Delete Post</a></li><%}%>
            </ul>
        </li>
        <%}%>
        <%if(session.getAttribute("editPersonalDetails").equals(1)) {%><li><a href="editAccountDetails.jsp">Change Personal Details</a></li><%}%>

        <%if(session.getAttribute("genReport").equals(1)) {%>
        <li>
            <a href="#">Reports<span class="sub-arrow"></span></a>
            <ul>
                <%if(session.getAttribute("genReport").equals(1)) {%><li><a href="attendanceReports.jsp">Attendance Reports</a></li><%}%>
                <%if(session.getAttribute("genReport").equals(1)) {%><li><a href="salaryReports.jsp">Salary Reports</a></li><%}%>
                <%if(session.getAttribute("genReport").equals(1)) {%><li><a href="leaveReports.jsp">Leave Reports</a></li><%}%>
            </ul>
        </li>
        <%}%>
        <%if(session.getAttribute("customizeData").equals(1)) {%><li><a href="customization.jsp">Customize the System</a></li><%}%>
    </ul>
</nav>
</div>