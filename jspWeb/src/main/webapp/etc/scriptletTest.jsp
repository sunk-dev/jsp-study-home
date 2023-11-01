<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-09
  Time: 오전 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.util.Calendar" %>
<%
    //현재 시간과 분 초 값을 로컬 변수에 할당 스크립틀릿에서 선언되는 부분은 로컬변수로 인식됨.
    Calendar c=Calendar.getInstance();
    int hour=c.get(Calendar.HOUR_OF_DAY);
    int min=c.get(Calendar.MINUTE);
    int sec=c.get(Calendar.SECOND);
%>
<html>
<head>
    <title>Scriptlet test</title>
</head>
<body>
<h1>현재시간은 <%=hour%>시 <%=min%>분 <%=sec%>초 입니다.</h1>

</body>
</html>
