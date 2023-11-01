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
<h2> 포워드된 페이지(forwardTest.jsp)</h2>
<table>
    <tr>
        <td>이름</td>
        <td><%=request.getParameter("name")%></td>
    </tr>
    <tr>
        <td>나이</td>
        <td><%=request.getParameter("age")%></td>
    </tr>
    <tr>
        <td>주소</td>
        <td><%=request.getParameter("address")%></td>
    </tr>
    <tr>
        <td>전화번호</td>
        <td><%=request.getParameter("tel")%></td>
    </tr>
</table>
</body>
</html>
