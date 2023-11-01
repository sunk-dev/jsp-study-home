<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-12
  Time: 오후 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>Forward Action Test</title>
</head>
<body>
<jsp:forward page='<%=request.getParameter("forwardPage")%>'>
    <jsp:param name="tel" value="034-1234-5678"/>
</jsp:forward>
</body>
</html>
