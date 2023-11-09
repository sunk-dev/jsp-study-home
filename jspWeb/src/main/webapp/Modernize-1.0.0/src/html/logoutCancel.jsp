<%--
  Created by IntelliJ IDEA.
  User: seon
  Date: 2023-11-09
  Time: 오후 3:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id= session.getAttribute("id").toString();
    String name= session.getAttribute("name").toString();

    session.setAttribute("id",id);
    session.setAttribute("name",name);
    response.sendRedirect("./index.jsp");
%>
<html>
<head>
    <title>Title</title>

</head>
<body>

</body>
</html>
