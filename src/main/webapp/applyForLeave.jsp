<%--
  Created by IntelliJ IDEA.
  User: Deshan-UCSC
  Date: 10/18/2020
  Time: 6:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="DBconnection.DBconn" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="leave.LeaveBean" %>
<%@ page import="leave.LeaveDao" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import ="java.util.Date" %>

<html>
<head>
    <title>Human Resource Management System</title>
    <link rel="stylesheet" href="style/mainStyle.css">
    <link rel="stylesheet" href="style/applyForLeave.css">
</head>
<body>
<div class="content">

    <div class="heading"><h3>Apply For Leave</h3>
    </div>
    <form action="applyLeave" method="POST">
    <%
        String result= (String) request.getAttribute("result");
        System.out.println(result);
    if(result != null){

        if(result=="Successful"){%>
                <h4 class="response" style="color: #4bbe19;">
                    Your Leave is Successfully Send! , Response Will Be Notify Soon.
                </h4><%

        }request.setAttribute("result",null);
    %><%
         if(result == "Unsuccessful"){%>
                <h4 class="response" style="color: #DC143C;">
                    Unable To Send Your Leave! , Try Again.
                </h4>
    <%} request.setAttribute("result",null);}
        request.setAttribute("result",null);
    %>
    <%
        LeaveDao empDao = new LeaveDao();
        List<LeaveBean> leaveList = empDao.searchEmployeeToApproveLeave();

    %>

    <div class="leaves">
        <table>
            <tr>
                <td>
                    <label class="label">Annual Leaves</label>
                </td>
                <%
                    ResultSet rs = null;
                    try {
                        Connection con = DBconn.getConnection();
                        Statement statement = con.createStatement();
                        rs = statement.executeQuery("SELECT totalLeaves ,remainingLeaves  FROM employeeleavedetails where empId="+session.getAttribute("empId"));

                        while (rs.next()) {%>
                <th>
                    <input class="input" type="text" name="Annualleaves" id="Annualleaves" value="<%=rs.getInt("totalLeaves")%>" readonly>
                </th>

            </tr>

            <tr>
                <td>
                    <label class="label">Remaining Leaves</label>
                </td>

                <th>

                    <input class="input" type="text" name="Remainingleaves" id="Remainingleaves" value="<%=rs.getInt("remainingLeaves")%>" readonly>
                </th>
            </tr>
            <%}} catch (SQLException e) {
                e.printStackTrace();
                System.out.println("Error while loading employees to the table");


            }%>
        </table>

    </div>

    <div class="main">
        <table>

            <th>
            <tr>
                <td>
                    <label class="label">Leave ID</label>
                </td>
                <%
                    ResultSet rs2= null;
                    try {

                        Connection con = DBconn.getConnection();
                        Statement statement = con.createStatement();
                        rs2 = statement.executeQuery("SELECT leaveId FROM leavedetails ORDER BY leaveId DESC LIMIT 1");
                        if (rs2.next()) {%>

                <th>
                    <input class="input" type="text" name="leaveId" id="idelse" value="<%=rs2.getInt("leaveId")+1%>" readonly>
                </th>

            </tr>
            <%}else {%>
            <th>
                <input class="input" type="text" name="leaveId" id="id" value="100" readonly>
            </th>

            </tr>
                    <%}


                    } catch (SQLException e) {
                e.printStackTrace();
                System.out.println("Error while geting the max leave ID");

            }

                Date date = new Date();
                SimpleDateFormat formatter = new SimpleDateFormat("yyy-MM-dd");
                String appliedDate= formatter.format(date);
            %>

            <tr>
                <td>
                    <label class="label">Applied Date</label>
                </td>
                <th>
                    <input class="input" type="text" value="<%=appliedDate%>" name="appliedDate" id="applied" readonly>
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">From Date</label>
                </td>
                <th>
                    <input class="input" type="date" name="fromDate" id="from">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">To Date</label>
                </td>
                <th>
                    <input class="input" type="date" name="toDate" id="to">
                </th>
            </tr>


        </table>
        <table id="reasonA">
            <tr>
                <td>
                    <label class="label">Reason for Leave Appling...</label>
                </td>
            </tr>
            <tr>
                <th>
                    <textarea class="textarea" rows="5" cols="100" name="reason" id="reason"></textarea>
                </th>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <td>
                    <label class="label">Request From</label>
                </td>
                <th>
                    <input class="input" type="text" name="authorizedPersonId" id="empId"  placeholder="Select Sender for this Request From the given List" READONLY>
                </th>
            </tr>
        </table>
    </div>
    <div class="btn">
        <table>
            <tr>
                <td></td>
                <th>

                </th>
                <th>
                    <input class="apply" type="submit" value="Apply"/>
                </th>
            </tr>
        </table>

    </div>
        <input class="input" type="number" name="empId" value="<%=session.getAttribute("empId")%>" hidden>
</form>

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
                for(LeaveBean leave:leaveList){
                    if(session.getAttribute("empId").equals(leave.getEmpId())){}
                    else{
            %>
            <tr>
                <td class="empIdd"><%=leave.getEmpId()%></td>
                <td class="empName"><%=leave.getFName()%></td>
                <td class="empNIC"><%=leave.getNIC()%><%}}%></td>

            </tr>
        </table>

    </div>
</div>
<%@include file="mainDashboard.jsp" %>
<script type="text/javascript" src="js/loadDataToTable.js"></script>
</body>
</html>
