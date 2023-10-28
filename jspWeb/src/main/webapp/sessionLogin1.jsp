<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-13
  Time: 오후 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        #loginArea{
            width: 400px;
            margin: auto;
            border: 1px solid black;
        }
        table{
            margin: auto;
        }
        td{
            text-align: center;
        }
    </style>
</head>
<body>
<section id="loginArea">
    <form action="sessionLogin2.jsp" method="post">
        <table>
            <tr>
                <td><label for="id">아이디: </label> </td>
                <td><input type="text" name="id" id="id"></td>
            </tr>
            <tr>
                <td><label for="pw">비밀번호: </label> </td>
                <td><input type="password" name="pw" id="pw"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="login" >
                <input type="reset" value="reset"></td>
            </tr>
        </table>
    </form>
</section>

</body>
</html>
