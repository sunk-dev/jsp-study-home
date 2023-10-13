<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-09
  Time: 오전 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
    <style>
        h1,#commandcell{
            text-align: center;
        }
        table{
            margin: auto;
            width: 400px;
            border: 1px solid darkred;
        }
    </style>
</head>
<h1>Requedst 예제</h1>
<form action="requestTest1.jsp" method="post">
    <table>
        <tr>
            <td><label foo="name">이름</label></td>
            <td><input type="text" name="name" id="name"></td>
        </tr>
        <tr>
            <td><label foo="name">성별</label></td>
            <td>남<input type="radio" name="gender" id="gender" value="male">
            <td>여<input type="radio" name="gender" value="female">
        </tr>
        <tr>
            <td><label for="hobby">취미</label> </td>
            <td>독서<input type="checkbox" name="hobby" value="독서" id="hobby">
                게임<input type="checkbox" name="hobby" value="게임">
                축구<input type="checkbox" name="hobby" value="축구">
                기타<input type="checkbox" name="hobby" value="기타"></td>
        </tr>
        <tr>
            <td colspan="2" id="commandcell">
                <input type="submit" value="전송"></td>
        </tr>
    </table>
</form>
<body>

</body>
</html>
