<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="index.jsp?page=../loginPro" method="post">
		이름: <input type="text" name="name"/><br>
		아이디: <input type="text" name="id"/><br>
		비밀번호: <input type="password" name="passwd"/><br>
		<input type="submit" value="로그인"/> <input type="reset" value="취소"/>
	</form>
	
	<!-- <form action="loginPro" method="post"> 
		이름: <input type="text" name="name"/><br>
		아이디: <input type="text" name="id"/><br>
		비밀번호: <input type="password" name="passwd"/><br>
		<input type="submit" value="로그인"/> <input type="reset" value="취소"/>
	</form> -->
</body>
</html>