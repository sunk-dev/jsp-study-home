<%@ page import="static jdk.javadoc.internal.doclets.formats.html.markup.RawHtml.nbsp" %><%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-09
  Time: 오전 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>Request test</title>
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
<form action="requestTest1.jsp" method="post">
    <table>
        <tr>
            <td>이름</td>
            <td><%=request.getParameter("name")%></td>
        </tr>
        <tr>
            <td>성별</td>
            <td>
            <% if(request.getParameter("gender").equals("male")){%>
                남자
                <%} else {%>
                여자<%}%>
            </td>
        </tr>
        <tr>
            <td>취미 </td>
            <td>
                <%
                    String[] hobbys=request.getParameterValues("hobby");
                    for (int i = 0; i < hobbys.length;i++) { %>
                            <%=hobbys[i]%>&nbsp;&nbsp;

                    <%}
                %>
            </td>
        </tr>
    </table>
</form>
<body>

</body>
</html>
