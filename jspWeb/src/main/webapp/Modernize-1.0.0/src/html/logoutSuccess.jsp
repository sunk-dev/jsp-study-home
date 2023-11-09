<%--
  Created by IntelliJ IDEA.
  User: seon
  Date: 2023-11-09
  Time: 오후 3:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script>
<%
    session.invalidate();
%>
location.href="./index.jsp";
</script>

</body>
</html>
