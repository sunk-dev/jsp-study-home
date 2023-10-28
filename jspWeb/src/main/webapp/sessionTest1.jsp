<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-09
  Time: 오후 5:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.setMaxInactiveInterval(10);
%>

<html>
<head>
    <title>Session Test</title>
</head>
<body>
<h2>세션테스트</h2>
isNew(): <%=session.isNew()%><br>
생성시간:<%=session.getCreationTime()%><br>
최종 접속 시간:<%=session.getLastAccessedTime()%><br>
세션ID:<%=session.getId()%>
</body>
</html>
