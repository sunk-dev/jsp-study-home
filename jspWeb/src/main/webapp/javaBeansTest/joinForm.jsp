<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-13
  Time: 오후 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입폼</title>
    <style>
        #formArea{
            margin: auto;
            width: 400px;
            border: 1px solid mediumpurple;
        }
        h1{
            text-align: center;
        }
        table{
            width: 300px;
            margin: auto;
            text-align: center;
        }

    </style>
</head>

<body>
<section id="formArea">
    <h1> 회원 정보 입력</h1>
    <form action="joinCheck.jsp" method="post">
        <table>
            <tr>
                <td><label for="id">아이디: </label>
                <input type="text"  name="id" id="id"></td>
            </tr>

            <tr>
                <td><label for="pass">비밀번호: </label>
                <input type="password"  name="pass" id="pass"></td>
            </tr>

            <tr>
                <td><label for="name">이름: </label>
                <input type="text"  name="name" id="name"></td>
            </tr>
            <tr>
                <td><label for="sex">아이디: </label> </td>
                <td><input type="radio"  name="sex" value="1" id="sex" checked>남
                    <input type="radio"  name="sex" value="2"  checked>여</td>
            </tr>

            <tr>
                <td><label for="age">나이: </label>
                <input type="text"  name="age" id="age"></td>
            </tr>
            <tr>
                <td><label for="email">이메일: </label>
                    <input type="text"  name="email" id="email"></td>
            </tr>
            <tr>
                <td >
                    <input type="submit" value="가입">
                    <input type="reset" value="다시 작성">
                </td>
            </tr>
        </table>
    </form>
</section>

</body>
</html>
