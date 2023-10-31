<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-25
  Time: 오후 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ page import="org.graalvm.compiler.replacements.StringIndexOfNode" %><%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-24
  Time: 오후 3:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="m" class="beans.Member"/>
<jsp:setProperty name="m" property="*"/>

이름:<%=m.getName()%>
<%

    String driver="com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/myweb";
    Connection con=(Connection) DriverManager.getConnection(url,"root","1234");


    Boolean isConnect;
    String sql=null;
    PreparedStatement p=null;

    try {
        Class.forName (driver);
        System.out.println("success");
        sql="insert into member values (?,?,?,?,?,?)";
        p=con.prepareStatement(sql);
        p.setString(1,m.getId());
        p.setString(2,m.getPassword());
        p.setString(6,m.getName());
        p.setString(4,m.getGender());
        p.setInt(3,m.getAge());
        p.setString(5,m.getEmail());
        int a=p.executeUpdate();
        if(a==1){
            response.sendRedirect("D:\\jsp-study-home\\jspWeb\\src\\main\\webapp\\Modernize-1.0.0\\src\\html\\index.jsp");

        }


//        conn.close();
    }catch (Exception e){
        System.out.println("fail"+e.getStackTrace());
        e.printStackTrace();
    }

%>

</body>
</html>