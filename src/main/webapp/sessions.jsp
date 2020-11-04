<%--
  Created by IntelliJ IDEA.
  User: SupunN
  Date: 10/20/2020
  Time: 7:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String empId = (String) request.getAttribute("empId");

    Object empAdd = request.getAttribute("empAdd");
    String firstName = (String) request.getAttribute("firstName");
    Object empDel = request.getAttribute("empDel");
    Object postAdd = request.getAttribute("postAdd");
    Object postDel = request.getAttribute("postDel");
    Object postView = request.getAttribute("postView");
    Object chatSys = request.getAttribute("chatSys");
    Object applyLeave = request.getAttribute("applyLeave");
    Object decisionLeave = request.getAttribute("decisionLeave");
    Object salaryManage = request.getAttribute("salaryManage");
    Object customizeData = request.getAttribute("customizeData");
    Object editPersonalDetails = request.getAttribute("editPersonalDetails");
    Object giveComSug = request.getAttribute("giveComSug");
    Object viewComSug = request.getAttribute("viewComSug");
    Object viewMyAttend = request.getAttribute("viewMyAttend");
    Object viewAllAttend = request.getAttribute("viewAllAttend");
    Object viewMyLeaves = request.getAttribute("viewMyLeaves");
    Object viewAllLeaves = request.getAttribute("viewAllLeaves");
    Object viewMySalary = request.getAttribute("viewMySalary");
    Object viewAllSalary = request.getAttribute("viewAllSalary");
    Object genReport = request.getAttribute("genReport");

    session.setAttribute("empId",empId);
    session.setAttribute("firstName",firstName);
    session.setAttribute("empAdd",empAdd);
    session.setAttribute("empDel",empDel);
    session.setAttribute("postAdd",postAdd);
    session.setAttribute("postDel",postDel);
    session.setAttribute("postView",postView);
    session.setAttribute("chatSys",chatSys);
    session.setAttribute("applyLeave",applyLeave);
    session.setAttribute("decisionLeave",decisionLeave);
    session.setAttribute("salaryManage",salaryManage);
    session.setAttribute("customizeData",customizeData);
    session.setAttribute("editPersonalDetails",editPersonalDetails);
    session.setAttribute("giveComSug",giveComSug);
    session.setAttribute("viewComSug",viewComSug);
    session.setAttribute("viewMyAttend",viewMyAttend);
    session.setAttribute("viewAllAttend",viewAllAttend);
    session.setAttribute("viewMyLeaves",viewMyLeaves);
    session.setAttribute("viewAllLeaves",viewAllLeaves);
    session.setAttribute("viewMySalary",viewMySalary);
    session.setAttribute("viewAllSalary",viewAllSalary);
    session.setAttribute("genReport",genReport);


%>

<jsp:forward page="home.jsp"/>
