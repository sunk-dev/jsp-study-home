<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-09
  Time: 오전 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1><%=getStr()%></h1>
<%!
    private  String getStr(){
        str+="테스트입니다";
        return str;
    }
    private String str="선언문";
%>

</body>
</html>
