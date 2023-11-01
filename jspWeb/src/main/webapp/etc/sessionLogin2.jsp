<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-13
  Time: 오후 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.setAttribute("id",request.getParameter("id")); //보내온 세션값을 저장
%>
<html>
<head>
    <title>Title</title>

</head>
<body>
<h3>로그인 되었습니다.</h3>
<h3>로그인아이디: <%=(String) session.getAttribute("id")%></h3>
<a href="sessionLogout.jsp">로그아웃</a>

</body>
</html>
