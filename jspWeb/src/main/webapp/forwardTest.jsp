<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-12
  Time: 오후 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Forward Action Test</title>
</head>
<body>
<h2>포워드 액션 테스트</h2>
<form action="forwardTest1.jsp" method="post">
    <input type="hidden" name="forwardPage" value="forwardTest2.jsp">
    <table>
        <tr>
            <td>이름</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>나이</td>
            <td><input type="text" name="age"></td>
        </tr>
        <tr>
            <td>주소</td>
            <td><input type="text" name="address"></td>
        </tr>
        <tr>

            <td><input type="submit" value="전송"></td>
        </tr>
    </table>
</form>
</body>
</html>
