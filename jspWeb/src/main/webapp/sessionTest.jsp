<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-13
  Time: 오후 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name;
    if(session.getAttribute("name")!=null){
        name=(String) session.getAttribute("name");
    }
    else{
        name="세션값 없음!";
    }
%>
<html>
<head>
    <title>Session Test</title>
</head>
<body>
<h2>세션테스트</h2>
<input type="button" onclick="location.href='sessionSet.jsp'" value="세션값 저장">
<input type="button" onclick="location.href='sessionDel.jsp'" value="세션값 삭제">
<input type="button" onclick="location.href='sessionInvalidate.jsp'" value="세션값 초기화">
<h3><%=name%></h3>
</body>
</html>
