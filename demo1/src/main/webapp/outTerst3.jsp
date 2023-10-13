<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-09
  Time: 오후 8:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>out Test</h2>
<table border="1">
    <tr>
        <td>autoFlush여부</td>
        <td><%=out.isAutoFlush()%></td>
    </tr>
    <tr>
        <td>출력버퍼의 크기</td>
        <td><%=out.getBufferSize()%></td>
    </tr>
    <tr>
        <td>출력버퍼 남은양</td>
        <td><%=out.getRemaining()%>바이트</td>
    </tr>
</table>
</body>
</html>
