<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-25
  Time: 오후 9:33
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-13
  Time: 오후 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
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
    <form action="joinPro.jsp" method="post">
        <table>
            <tr>
                <td><label for="id">아이디: </label> </td>
                <td><input type="text" name="id" id="id"></td>
            </tr>
            <tr>
                <td><label for="pw">비밀번호: </label> </td>
                <td><input type="password" name="password" id="pw"></td>
            </tr>
            <tr>
                <td><label for="pw">이름: </label> </td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td><label for="pw">성별: </label> </td>
                <td><input type="radio" name="gender" value="female" checked>여
                    <input type="radio" name="gender" value="male">남</td>
            </tr>
            <tr>
                <td><label for="pw">나이: </label> </td>
                <td><input type="number" name="age"></td>
            </tr>
            <tr>
                <td><label for="pw">이메일: </label> </td>
                <td><input type="email" name="email"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="join" >
                    <input type="reset" value="reset"></td>
            </tr>
        </table>
    </form>
</section>

</body>
</html>
