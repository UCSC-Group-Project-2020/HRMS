<%--
  Created by IntelliJ IDEA.
  User: Deshan-UCSC
  Date: 10/21/2020
  Time: 12:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<html>
<head>
    <title>Human Resource Management System</title>
    <link rel="stylesheet" href="style/mainStyle.css">
    <link rel="stylesheet" href="style/addPost.css">
</head>
<body>

<div class="content">
    <div class="heading">
        <h3>Add Post</h3>
    </div>
    <br>
    <div class="main">
        <table>
            <tr>
                <td>
                    <label class="label">Current Logged Employee Id</label>
                </td>
                <th>
                    <input class="input" type="text" name="empId" placeholder="EmpId" readonly>
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Post Id</label>
                </td>
                <th>
                    <input class="input" type="text" name="comId" readonly>
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">Date</label>
                </td>
                <th>
                    <input class="input" type="date" name="date">
                </th>
            </tr>
        </table>

        <table>


            <table>
                <tr>
                    <td>
                        <label class="label">Description</label>
                    </td>
                <tr>
                    <th>
              <textarea rows="5" cols="50" name="description"
                        placeholder="Type your post here"></textarea>
                    </th>
                </tr>

                </tr>
            </table>
            <table>
                <tr>
                    <td>
                        <label class="label">Image</label>
                    </td>
                    <th>
                        <form action="/action_page.php">
                            <input type="file" id="myFile" name="filename" class="fileChoose">

                        </form>
                    </th>
                </tr>
            </table>
            <table>
                <tr>
                    <td></td>
                    <th>
                        <input class="send" type="submit" value="Send"/>
                    </th>
                </tr>
            </table>
        </table>
    </div>
</div>
</div>
<%@include file="mainDashboard.jsp" %>
</body>

</html>

