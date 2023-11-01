<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="m" class="beans.Member"/>
<jsp:setProperty property = "*" name = "m"/>
이름 : <jsp:getProperty property="name" name="m"/>

<%
    Connection con = null;
    String url = "jdbc:mysql://localhost:3306/myweb";
    String driver = "com.mysql.cj.jdbc.Driver";
    String sql = null;
    PreparedStatement ps = null;



    try{
        Class.forName(driver);
        con = DriverManager.getConnection(url,"root","1234");
        sql = "insert into member value(?,?,?,?,?,?)";
        ps = con.prepareStatement(sql);

//집  db
        ps.setString(1, m.getId());
        ps.setString(2,m.getPassword());
        ps.setInt(3, m.getAge());
        ps.setString(6,m.getName());
        ps.setString(4,m.getGender());
        ps.setString(5,m.getEmail());

//        학교 db
//        ps.setString(1, m.getId());
//        ps.setString(2,m.getPassword());
//        ps.setInt(4, m.getAge());
//        ps.setString(3,m.getName());
//        ps.setString(5,m.getGender());
//        ps.setString(6,m.getEmail());

        int a = ps.executeUpdate();
        if(a == 1){
            response.sendRedirect("/Modernize-1.0.0/src/html/index.jsp");
            System.out.println("연결성공");
        }else{
            System.out.println("연결실패");
%>
<script>
    history.go(-1)
</script>
<%
        }



    }catch(Exception e){
        e.printStackTrace();
    }

%>




</body>
</html>