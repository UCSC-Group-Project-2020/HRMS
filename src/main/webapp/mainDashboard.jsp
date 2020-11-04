<%@ page import="DBconnection.DBconn" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%//System.out.printf(session.getAttribute("chatSys").equals(1));%>

<div class="head">
    <%try {
            Connection con = DBconn.getConnection();
            Statement statement = con.createStatement();
            ResultSet rsNotifi = null;
            rsNotifi = statement.executeQuery("SELECT * FROM notification where receiverId ="+session.getAttribute("empId"));
            while (rsNotifi.next()) {
                int msgnotify=rsNotifi.getInt("messageFlag");
                int leaveNotify=rsNotifi.getInt("leaveFlag");
                int comNotify=rsNotifi.getInt("complainSuggestionFlag");
                int salNotify=rsNotifi.getInt("salaryFlag");
                int levResponce=rsNotifi.getInt("leaveResponseFlag");
%>
    <a href="login.jsp" class="Logout">Logout</a>
    <%if(session.getAttribute("chatSys").equals(1)) {%><a class="Msgs" aria-readonly="true"<%if(msgnotify==1){%>style="background-color: #4bbe19"<%}%>>Messages</a><%}%>
    <%if(session.getAttribute("viewMySalary").equals(1)) {%><a href="mySalaryOverview.jsp" class="Salary"<%if(salNotify==1){%>style="background-color: #4BBE19" <%}%>>Calculated Salary</a><%}%>
    <%if(session.getAttribute("decisionLeave").equals(1)) {%><a href="approveOrRejectLeave.jsp" class="Leave" <%if(leaveNotify==1){%> style="background-color: #4BBE19"<%}%>>Leave Requests</a><%}%>
    <%if(session.getAttribute("viewMyLeaves").equals(1)) {%><a href="myLeaveHistory.jsp" class="Leave" <%if(levResponce==1){%> style="background-color: #4BBE19"<%}%> >Leave Response</a><%}%>
    <%if(session.getAttribute("viewComSug").equals(1)) {%><a href="viewComplians.jsp" class="com" <%if(comNotify==1){%>style="background-color: #4BBE19"<%}%>>Complain/Suggestion</a><%}}
        } catch (SQLException e) {
        e.printStackTrace();
        System.out.println("WERTYUIOP{"+session.getAttribute("empId"));
        System.out.println(e);
    }
    %>
</div>
<div class="main-menu">
    <img class="avater" src="img/avatar.svg" alt="">
    <h2 class="greeting">
        Hi,<%=session.getAttribute("firstName")%>!

    </h2>
    <nav class="menu">


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
                    <%if(session.getAttribute("viewComSug").equals(1)) {%><li><a href="viewComplians.jsp">View Complain/Suggestions</a></li><%}%>
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
                    <%if(session.getAttribute("salaryManage").equals(1)) {%><li><a href="salaryManagment.jsp">Salary Management</a></li><%}%>
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
            <%if(session.getAttribute("genReport").equals(1)) {%>
            <li>
                <a>Reports<span class="sub-arrow"></span></a>
                <ul>
                    <%if(session.getAttribute("genReport").equals(1)) {%><li><a href="attendanceReports.jsp">Attendance Reports</a></li><%}%>
                    <%if(session.getAttribute("genReport").equals(1)) {%><li><a href="salaryReports.jsp">Salary Reports</a></li><%}%>
                    <%if(session.getAttribute("genReport").equals(1)) {%><li><a href="leaveReport.jsp">Leave Reports</a></li><%}%>
                </ul>
            </li>
            <%}%>
            <%if(session.getAttribute("editPersonalDetails").equals(1)) {%><li><a href="editAccountDetails.jsp">Change Personal Details</a></li><%}%>

            <%if(session.getAttribute("customizeData").equals(1)) {%><li><a href="customization.jsp">Customize the System</a></li><%}%>
        </ul>
    </nav>
</div>
