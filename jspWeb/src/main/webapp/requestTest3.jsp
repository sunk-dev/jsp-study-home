<%@ page import="static jdk.javadoc.internal.doclets.formats.html.markup.RawHtml.nbsp" %><%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-09
  Time: 오전 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.util.Enumeration" %>
<%request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>Request test2</title>
    <style>
        h1 {
            text-align: center;
        }

        table {
            margin: auto;
            width: 400px;
            border: 1px solid darkred;
        }
    </style>
</head>
<h1>쿠키 url/uri, 요청방식에 관련된 정보예제</h1>
<table border="1">
    <tr>
        <td>쿠키정보</td>
        <% Cookie[] cookies = request.getCookies();
            if (cookies == null) { %>
        <td>쿠키가 존재하지 않습니다</td>
        <%
        } else {
            for (int i = 0; i < cookies.length; i++) {%>
        <td><%=cookies[i].getName()%>(<%=cookies[i].getValue()%>)&nbsp;&nbsp;</td>
        <%
                }
            }
        %>
    </tr>
    <tr>
        <td>서버도메인명</td>
        <td><%=request.getServerName()%></td>

    </tr>
    <tr>
        <td>서버포트번호</td>
        <td><%=request.getServerPort()%></td>

    </tr>
    <tr>
        <td>요청 URL</td>
        <td><%=request.getRequestURL()%></td>

    </tr>
    <tr>
        <td>요청 URI</td>
        <td><%=request.getRequestURI()%></td>

    </tr>
    <tr>
        <td>요청쿼리</td>
        <td><%=request.getQueryString()%></td>
    </tr>
    <tr>
        <td>클라이언트 호스트명</td>
        <td><%=request.getRemoteHost()%></td>
    </tr>
    <tr>
        <td>클라이언트 IP주소</td>
        <td><%=request.getRemoteAddr()%></td>

    </tr>
    <tr>
        <td>프로토콜</td>
        <td><%=request.getProtocol()%></td>

    </tr>
    <tr>
        <td>요청 방식</td>
        <td><%=request.getMethod()%></td>

    </tr>
    <tr>
        <td>컨텍스트 경로</td>
        <td><%=request.getContextPath()%></td>

    </tr>




</table>
<body>

</body>
</html>
