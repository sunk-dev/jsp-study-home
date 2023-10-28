<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-13
  Time: 오후 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="join" class="beans.JoinBean"/>
<jsp:setProperty name="join" property="*"/>

<html>
<head>
    <title>회원가입폼</title>
    <style>

        h1{
            text-align: center;
        }
        table{
            width: 400px;
        }

    </style>
</head>

<body>
<section id="formArea">
    <h1> 회원 정보 </h1>

        <table>
            <tr>
                <td>아이디: </td>
                <td><jsp:getProperty name="join" property="id"/></td>
            </tr>

            <tr>
                <td>비밀번호: </td>
                <td><jsp:getProperty name="join" property="pass"/></td>
            </tr>

            <tr>
                <td>이름: </td>
                <td><jsp:getProperty name="join" property="name"/></td>
            </tr>
            <tr>
                <td>성별: </td>
                <td><jsp:getProperty name="join" property="sex"/></td>
            </tr>

            <tr>
                <td>나이: </td>
                <td><jsp:getProperty name="join" property="age"/></td>
            </tr>
            <tr>
                <td>이메일 주소: </td>
                <td><jsp:getProperty name="join" property="email"/></td>
            </tr>
        </table>
    </form>
</section>

</body>
</html>
