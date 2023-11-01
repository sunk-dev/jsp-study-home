<%@ page import="com.mysql.cj.Session" %><%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-31
  Time: 오후 3:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script>
<%--session.invalidate(); 안돌아감--%>

let b = confirm("로그아웃 하시겠습니까?");

if (!b) {
    alert("로그아웃 하지 않았습니다");



}else{
    <%session.invalidate();%>
    alert("로그 아웃 되었습니다!");

}
location.href="./index.jsp";





</script>



</body>
</html>
