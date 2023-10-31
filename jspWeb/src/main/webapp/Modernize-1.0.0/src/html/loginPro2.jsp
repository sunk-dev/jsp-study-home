<%@ page import="java.sql.*" %>
<%@ page import="java.security.spec.RSAOtherPrimeInfo" %><%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-31
  Time: 오후 1:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
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
        sql = "select * from member where id=? and password=?;";
        ps = con.prepareStatement(sql);
        ps.setString(1,id);
        ps.setString(2,password);

        ResultSet resultSet = ps.executeQuery();

        if(resultSet.next()){
            session.setAttribute("id",id);
            session.setAttribute("name",resultSet.getString("name"));%>

        <script>
            alert("로그인 성공!");
            location.href='./index.jsp';
        </script>

       <% }%>
            <script>
                alert('로그인정보가 일치하지 않습니다.');
                history.go(-1);
            </script>

        <%

//        String dbPassword = resultSet.getString("password");



    } catch (SQLException e) {
        e.printStackTrace();
    }
%>


</body>
</html>
