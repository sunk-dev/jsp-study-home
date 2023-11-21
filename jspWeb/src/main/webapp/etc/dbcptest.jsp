<%@ page import="java.sql.Connection" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %><%--
  Created by IntelliJ IDEA.
  User: seon
  Date: 2023-11-14
  Time: 오후 1:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Connection con=null;
    try{
        Context init=new InitialContext();
        DataSource ds=(DataSource) init.lookup("java:comp/env/jdbc/MYSQLDB");
        con=ds.getConnection();
        out.println("<h3>연결되었습니다</h3>");

    }catch (Exception e){
        out.println("<h3>연결에 실패하였습니다</h3>");
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>


</body>
</html>
