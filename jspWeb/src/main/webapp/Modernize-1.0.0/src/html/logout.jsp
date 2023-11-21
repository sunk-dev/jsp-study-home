<%@ page import="com.mysql.cj.Session" %><%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-31
  Time: 오후 3:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<script>
    import alert from "bootstrap/js/src/alert";

    <%
        String id=session.getAttribute("id").toString();
        String name=session.getAttribute("name").toString();

        %>
<%--session.invalidate(); 안돌아감--%>

   let b = confirm("로그아웃 하시겠습니까?");
   // event.preventDefault();
    <%
    session.invalidate();
    %>





</script>



</body>
</html>
