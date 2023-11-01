<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-13
  Time: 오후 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String language="korea";
    String sentence="";
    String sentence_kor="안녕하세요 이건 쿠키예제";
    String sentence_eng="Hello  This is example of Cookies.";
    String cookie = request.getHeader("Cookie");
    if(cookie!=null){
        Cookie cookies[]= request.getCookies();
        for (int i = 0; i < cookies.length; i++) {
            if(cookies[i].getName().equals("language")){
                language=cookies[i].getName();
            }

        }
    }

%>
<html>
<head>
    <title>쿠키를 이용한 환경 설정 예제</title>
</head>
<body>
<%
    if(language.equals("english")){
        sentence=sentence_eng;


    }
    else{
        sentence=sentence_kor;
    }
%>
<form action="cookieExample2.jsp" method="post">
    <input type="radio" name="language" value="korea"
           <%
        if(language.equals("korea")){
           %>checked<%}%>>한국어 페이지 보기
    <input type="radio" name="language" value="english"
           <%
        if(language.equals("english")){
           %>checked<%}%>>영어 페이지 보기

</form>

</body>
</html>
