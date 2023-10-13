<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-09
  Time: 오후 1:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    pageContext.include("pageContextTest3.jsp");
%>
<h2>pageContext의 forward 메소드로 포워딩된 페이지 입니다.</h2>
</body>
</html>
