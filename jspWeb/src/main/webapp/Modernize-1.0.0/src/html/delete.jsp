<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-31
  Time: 오후 3:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--진짜탈퇴할까요 예/아니오 만들고 그거에대해서 동작하도록 하는거 만들기 --%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
    String id = session.getAttribute("id").toString();
    Connection con = null;
    String url = "jdbc:mysql://localhost:3306/myweb";
    String driver = "com.mysql.cj.jdbc.Driver";
    String sql = null;
    PreparedStatement ps = null;

    try {
        Class.forName(driver);
        con = DriverManager.getConnection(url, "root", "1234");
        sql = "delete from member where id=?;";
        ps = con.prepareStatement(sql);
        ps.setString(1,id);
        int a=ps.executeUpdate();
        if(a==1) {
            session.invalidate();
//

        }%>
<script>alert("삭제 되었습니다!")
location.href='./index.jsp'

</script>
       <%


    } catch (SQLException e) {
        e.printStackTrace();
    }
%>

</body>
</html>
