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
        h1{
            text-align: center;
        }
        table{
            margin: auto;
            width: 400px;
            border: 1px solid darkred;
        }
    </style>
</head>
<h1>Requedst 예제</h1>
<h1>헤더 정보예제</h1>
    <table>
        <tr>
            <td>헤더이름</td>
            <td>헤더값</td>
        </tr>
        <%
            Enumeration e= request.getHeaderNames();
            while (e.hasMoreElements()){
                String headerName=(String) e.nextElement();%>
        <tr>
            <td><%=headerName%></td>
            <td><%=request.getHeader(headerName)%></td>
        </tr>
        <%}%>

    </table>
<body>

</body>
</html>
