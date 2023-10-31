<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-31
  Time: 오후 3:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="m" class="beans.Member"/>
<jsp:setProperty name="m" property="*"/>
<%
  String id = request.getParameter("id");
  String password = request.getParameter("password");
  Connection con = null;
  String url = "jdbc:mysql://localhost:3306/myweb";
  String driver = "com.mysql.cj.jdbc.Driver";
  String sql = null;
  PreparedStatement ps = null;

  try {
    Class.forName(driver);
    con = DriverManager.getConnection(url, "root", "1234");
    sql = "update member set name=?,password=?,email=?,gender=?,age=?   where id=?";
    ps = con.prepareStatement(sql);
    ps.setString(1,m.getName());
    ps.setString(2,m.getPassword());
    ps.setString(3,m.getEmail());
    ps.setString(4,m.getGender());
    ps.setInt(5,m.getAge());
    ps.setString(6,id);
    int a = ps.executeUpdate();
    if(a == 1){
      session.setAttribute("name",m.getName());
      response.sendRedirect("../webapp/Modernize-1.0.0/src/html/infoView.jsp");
      System.out.println("연결성공");
    }else {
      System.out.println("연결실패");
    }} catch (SQLException e) {
      throw new RuntimeException(e);
  } catch (ClassNotFoundException e) {
      throw new RuntimeException(e);
  }
%>

</body>
</html>
