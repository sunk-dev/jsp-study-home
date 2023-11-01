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
  String id = session.getAttribute("id").toString();
  String password = request.getParameter("password");
  Connection con = null;
  String url = "jdbc:mysql://localhost:3306/myweb";
  String driver = "com.mysql.cj.jdbc.Driver";
  String sql = null;
  PreparedStatement ps = null;

  try {
    Class.forName(driver);
    con = DriverManager.getConnection(url, "root", "1234");
    sql = "update member set name=?,password=?,email=?,gender=?,age=? where id=?";
    ps = con.prepareStatement(sql);
    int age = m.getAge();
    String email = m.getEmail();
    String name = m.getName();
    String gender = m.getGender();
    String password1 = m.getPassword();
    System.out.println(m.getAge()+m.getEmail()+m.getName()+m.getGender()+m.getPassword()+id);
    ps.setString(1,name);
    ps.setString(2, password1);
    ps.setString(3,email);
    ps.setString(4,gender);
    ps.setInt(5,age);
    ps.setString(6,id);

    int a = ps.executeUpdate();
    System.out.println(sql);

    if(a == 1){
      session.setAttribute("name",m.getName());
      response.sendRedirect("infoView.jsp");
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
