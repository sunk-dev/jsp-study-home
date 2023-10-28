<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-11
  Time: 오후 4:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="beantest" class="beans.BeanTest" scope="page"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<b>자바빈 사용예제</b>
<h3><%=beantest.getName() %></h3>

</body>
</html>
