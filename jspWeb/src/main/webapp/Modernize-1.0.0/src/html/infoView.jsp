<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-31
  Time: 오후 3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원정보 관리페이지</title>
    <link rel="stylesheet" href="../../../MyHome/join.css">
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<%
    Connection con = null;
    String id= session.getAttribute("id").toString();
    String url = "jdbc:mysql://localhost:3306/myweb";
    String driver = "com.mysql.cj.jdbc.Driver";
    String sql = null;
    PreparedStatement ps = null;
    ResultSet resultSet=null;

    try {
        Class.forName(driver);
        con = DriverManager.getConnection(url, "root", "1234");
        sql = "select * from member where id=?;";
        ps = con.prepareStatement(sql);
        ps.setString(1,id);
        resultSet = ps.executeQuery();

        resultSet.next();

        //        String dbPassword = resultSet.getString("password");



    } catch (SQLException e) {
        e.printStackTrace();
    }
%>

<form class="form" action="updatePro.jsp" method="post">
    <h4 class="bold title">Create Account</h4>
    <div class="icons">
        <div class="icon"><i class="fab fa-facebook-f"></i></div>
        <div class="icon"><i class="fab fa-github"></i></div>
        <div class="icon"><i class="fab fa-twitter"></i></div>
    </div>
    <p class="normal">Name <input type="text" value="<%=resultSet.getString("name")%>"  name="name" class="name"></p>
    <p class="normal">ID <input type="text" value="<%=resultSet.getString("id")%>" disabled  name="id"></p>
    <p class="normal">Password <input type="password"name="password" value="<%=resultSet.getString("password")%>" ></p>
    <p class="normal">Email <input type="email" name="email" value="<%=resultSet.getString("email")%>" ></p>
    <label for="select" class="normal">Gender </label>
    <select id="select" name="gender" class="normal section">
        <% if(resultSet.getString("gender").equals("female")){%>
        <option value="female" selected>여</option>
        <option value="male">남</option>
        <%}else{%>
        <option value="female" >여</option>
        <option value="male" selected>남</option>
        <%}%>


    </select>
    <p class="normal">Age <input type="number" placeholder="Age" name="age" class="normal" value="<%=resultSet.getInt("age")%>" ></p>
    <input type="submit" value="회원정보 수정" class="b-button normal">
    <input type="button" onclick="location.href='delete.jsp'" value="회원 탈퇴" class="b-button normal">
</form>

</body>
</html>
