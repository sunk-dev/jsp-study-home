<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-12
  Time: 오후 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Include ActionTest</title>
</head>
<body>
<h2>인클루드 액션 테스트</h2>
<jsp:include page="includeTest2.jsp">
    <jsp:param name="name" value="seonkyoung"/>
</jsp:include>

</body>
</html>
