<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-28
  Time: 오후 12:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="join.css">
<%--    js 안먹음 이유찾기--%>
    <script type="text/javascript"><%@include file="join.js"%></script>
</head>
<body>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="t.css">
</head>
<body>
<div class="container">
    <div class="move">
        <div class="p-button normal signin animated pulse">SIGN IN</div>
    </div>
    <div class="welcome">
        <h4 class="bold welcome-text">Welcome Back!</h4>
        <p class="normal text">To keep connected with us please login with your personal info</p>
    </div>
    <div class="hello">
        <h4 class="bold welcome-text">Hello Friend</h4>
        <p class="normal text">Enter your personal details and start journey with us</p>
    </div>
    <form class="form" method="post" action="joinPro1.jsp">
        <h4 class="bold title">Create Account</h4>
        <div class="icons">
            <div class="icon"><i class="fab fa-facebook-f"></i></div>
            <div class="icon"><i class="fab fa-github"></i></div>
            <div class="icon"><i class="fab fa-twitter"></i></div>
        </div>
        <p class="normal">Name <input type="text"  name="name" class="name"></p>
        <p class="normal">ID <input type="text"  name="id"></p>
        <p class="normal">Password <input type="password"name="password"></p>
        <p class="normal">Email <input type="email" name="email"></p>
        <label for="select" class="normal">Gender </label>
        <select id="select" name="gender" class="normal section">
            <option value="female" selected>여</option>
            <option value="male">남</option>
        </select>
        <p class="normal">Age <input type="number" placeholder="Age" name="age" class="normal"></p>
        <p class="normal forgot">Forgot your password?</p>
        <input type="submit" value="회원가입" class="b-button normal">
    </form>
</div>

</body>
</html>


