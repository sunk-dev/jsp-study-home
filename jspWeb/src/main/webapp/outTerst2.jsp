<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-09
  Time: 오후 8:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>1 부터 100까지의 합은
<%
    int sum=0;
    for (int i = 0; i < 100; i++) {
        sum+=i;

    }

%>
    <%=sum%>입니다.</h2>

</body>
</html>
