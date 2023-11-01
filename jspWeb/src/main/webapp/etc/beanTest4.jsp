<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-11
  Time: 오후 4:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="beantest" class="beans.BeanTest2" scope="page"/>
<jsp:setProperty name="beantest" property="*"/>
<html>
<head>
    <title>JavaBeans property='*' Test</title>
</head>
<body>
<h1>자바 속성값 출력</h1>
<b>이름: </b><%=beantest.getName()%><br>
<b>주소: </b><%=beantest.getAddr()%><br>
<b>이메일 주소: </b><%=beantest.getEmail()%><br>
<b>생일: </b><%=beantest.getBirthday()%><br>

</body>
</html>
