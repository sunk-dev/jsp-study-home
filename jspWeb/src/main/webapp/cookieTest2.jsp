<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-13
  Time: 오후 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name="";
    String value="";
    String cookie=request.getHeader("cookie");
    if(cookie!=null){
        Cookie cookies[]=request.getCookies();
        for (int i = 0; i < cookies.length; i++) {
            if(cookies[i].getName().equals("name")){
                name=cookies[i].getName();
                value=cookies[i].getValue();
            }

        }
    }
%>
<html>
<head>
    <title>Cookie Test</title>
</head>
<body>
<h2>쿠키이름 : <%=name%></h2>
<h2>쿠키값 : <%=value%></h2>

</body>
</html>
