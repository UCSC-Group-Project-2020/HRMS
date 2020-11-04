<%--
  Created by IntelliJ IDEA.
  User: Deshan-UCSC
  Date: 10/18/2020
  Time: 6:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="leave.LeaveBean" %>
<%@ page import="leave.LeaveDao" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import ="java.util.Date" %>
<html>
<head>
    <title class="mainHEAD">Human Resource Management System</title>
    <link rel="stylesheet" href="style/mainStyle.css">
    <link rel="stylesheet" href="style/staffLeaveHistory.css">
</head>
<body>
<div class="content">
    <div class="heading">
        <h3> Leave Report </h3>
    </div>
    <br>
    <form action="searchAllLeavesToPDF" method="POST">
        <input class="input" type="number" name="empId" value="<%=session.getAttribute("empId")%>" hidden>
        <div class="selection">
            <table>
                <tr>
                    <td>
                        <label class="label">From</label>
                    </td>
                    <th>
                        <input class="input" type="date" id="fromDate" name="fromDate">
                    </th>
                </tr>
                <tr>
                    <td>
                        <label class="label">To</label>
                    </td>
                    <th>
                        <input class="input" type="date" id="toDate" name="toDate">
                    </th>
                </tr>
                <tr>
                    <td>

                    </td>
                    <th>
                        <input class="show" type="submit" value="Show"/>
                    </th>
                </tr>
            </table>
        </div>

        <%
            String empId= (String) session.getAttribute("empId");
            String toDate= request.getParameter("toDate");
            String fromDate= request.getParameter("fromDate");

            LeaveDao empDao = new LeaveDao();
            List<LeaveBean> leaveListDefault = empDao.allLeaves(toDate,fromDate);
        %>

        <div class="result">
            <table id="myTable">
                <%
                    String toDateSearch= request.getParameter("toDate");
                    String fromDateSearch= request.getParameter("fromDate");
                    if (toDateSearch != null) {
                        List<LeaveBean> leavesBySearch = (List<LeaveBean>) request.getAttribute("leaves");%>

                <%
                    for(LeaveBean leave:leavesBySearch){
                %>
         <tr style="height: 20px">

                    <td class="leaveId"><%=leave.getLeaveId()%></td>
                    <td class="leaveId"><%=leave.getEmpId()%></td>
                    <td class="appDate"><%=leave.getappDate()%></td>
                    <td class="fromDate"><%=leave.getfromDate()%></td>
                    <td class="toDate"><%=leave.gettoDate()%></td>
                    <td class="reason"><%=leave.getReason()%></td>
                    <td class="status" <%
                        if(leave.getstatus().equals("Rejected")){
                            %>style="color: crimson" style="font-weight: 500"<%
                    }else if(leave.getstatus().equals("Pending")){%>
                        style="color:dodgerblue"
                        <%
                        }else if(leave.getstatus().equals("Approved")){
                              %>style="color:forestgreen" style="font-weight: 500"
                            <%
                                }%>


                    ><%=leave.getstatus()%></td>
                    <td class="empNIC"><%=leave.getAuthorizedPersonId()%></td>    <%}}%>

                </tr>

                <%

                    String toDate1= request.getParameter("toDate");

                    System.out.println(toDate1);
                    if (toDate1== null) {
                        for(LeaveBean leave:leaveListDefault){
                %>


                <tr style="height: 20px">

                    <td class="leaveId"><%=leave.getLeaveId()%></td>
                    <td class="leaveId"><%=leave.getEmpId()%></td>
                    <td class="appDate"><%=leave.getappDate()%></td>
                    <td class="fromDate"><%=leave.getfromDate()%></td>
                    <td class="toDate"><%=leave.gettoDate()%></td>

                    <td class="reason"><%=leave.getReason()%></td>
                    <td class="status" <%
                        if(leave.getstatus().equals("Rejected")){
                            %>style="color: crimson" style="font-weight: 500"<%
                    }else if(leave.getstatus().equals("Pending")){%>
                        style="color:dodgerblue"
                        <%
                        }else if(leave.getstatus().equals("Approved")){
                              %>style="color:forestgreen" style="font-weight: 500"
                            <%
                                }%>


                    ><%=leave.getstatus()%></td>
                    <td class="empNIC"><%=leave.getAuthorizedPersonId()%></td>
                    <%}}%>
                </tr>


            </table>
        </div>

    </form>
    <div>
        <input class="show" type="submit" onclick="toPDF()" value="Download PDF"/>
    </div>

</div>
</div>
<%@include file="mainDashboard.jsp" %>

</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>

<script>

    function toPDF() {

        const  rowCount = document.getElementById("myTable").rows.length;
        const row = document.getElementById("myTable").rows[0].cells.length;
        const generateData = function (amount) {
            var result = [];

            for (var i = 0; i < amount; i += 1) {

                const Leave = document.getElementById("myTable").rows[i].cells.item(0).innerHTML;
                var Employee = document.getElementById("myTable").rows[i].cells.item(1).innerHTML;
                var Applied = document.getElementById("myTable").rows[i].cells.item(2).innerHTML;
                var From = document.getElementById("myTable").rows[i].cells.item(3).innerHTML;
                var To = document.getElementById("myTable").rows[i].cells.item(4).innerHTML;
                var Reason = document.getElementById("myTable").rows[i].cells.item(5).innerHTML;
                var Status = document.getElementById("myTable").rows[i].cells.item(6).innerHTML;
                var Authorized = document.getElementById("myTable").rows[i].cells.item(7).innerHTML;

                var data = {
                    Leave_Id: Leave,
                    Employee_Id: Employee,
                    Applied_Date: Applied,
                    From_Date: From,
                    To_Date: To,
                    Reason: Reason,

                Status: Status,
                   Authorized: Authorized
                };
                result.push(Object.assign({}, data));
            }
            return result;
        };
        function createHeaders(keys) {
            var result = [];
            for (var i = 0; i < keys.length; i += 1) {
                result.push({
                    id: keys[i],
                    name: keys[i],
                    prompt: keys[i],
                    width: 45,

                    top:5,
                    align: "center",
                    padding: 0
                });
            }
            return result;
        }
        var headers = createHeaders([
            "Leave_Id",
            "Employee_Id",
           "Applied_Date",
            "From_Date",
            "To_Date",
            "Reason",
           "Status",
            "Authorized"
        ]);


        var doc = new jsPDF({orientation: "landscape" });
        doc.setFontType("bold");
        doc.setFontSize(32);
        doc.text("Human Resource Management System",50,25);


        doc.setFontType("normal");
        doc.setFontSize(16);
        doc.text("Staff Members Leaves ",125,38);

        var date = new Date();
        var d=date.getDate();
        var m = date.getMonth();
        var y =date.getFullYear();

        doc.setFontSize(14);
        doc.text("Date  "+y+" - "+m+" - "+d,15,42);


        doc.setFontSize(14);
        doc.text(rowCount+" Records ",255,42);

        doc.setLineWidth(0.5);
        doc.line(15, 45, 285, 45);

        doc.setFontSize(20);
        doc.setTextColor("#000");
        doc.table(15,50, generateData(rowCount), headers);
        doc.save("HRMS_Staff_Leaves");

    }
</script>


</html>
