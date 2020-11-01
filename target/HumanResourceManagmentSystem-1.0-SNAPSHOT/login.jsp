<%--
  Created by IntelliJ IDEA.
  User: Deshan-UCSC
  Date: 10/17/2020
  Time: 10:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>System Login</title>
    <link rel="stylesheet" type="text/css" href="style/login.css">
</head>
<body>
<img class="wave" src="img/3.jpg">
<div class="container">
    <div class="login-content">
        <form action="login" method="post">
            <img src="img/avatar.svg">
            <h2 class="title">Human Resource Management System</h2>
            <%
                if(request.getAttribute("err").equals(1)){
            %>
                <input type="text" class="input" id="msg" name="msg" value="Login Failed.">
            <%}%>

            <div class="input-div one">
                <div class="i">
                    <i class="fas fa-user"></i>
                </div>
                <div class="div">
                    <h5>Username</h5>
                    <input type="text" class="input" id="un" name="un">
                </div>
            </div>
            <div class="input-div pass">
                <div class="i">

                </div>
                <div class="div">
                    <h5>Password</h5>
                    <input type="password" class="input" id="pass" name="pass">
                </div>
            </div>

            <input type="submit" class="btn" value="Login">
        </form>
    </div>
</div>
<script type="text/javascript" src="js/login.js"></script>
</body>
</html>
