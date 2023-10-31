<%--
  Created by IntelliJ IDEA.
  User: jskre
  Date: 2023-10-29
  Time: 오후 1:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Template Test</title>
    <link rel="stylesheet" href="indextest.css">
    <style>
        table{
            margin: auto;
            width: 960px;
            color: gray;
            border: 1px solid gray;
        }
    </style>
    <link rel="stylesheet" href="index.css">

</head>
<body>

<div class="tab-menu">

    <ul class="tab-menu__list">

        <li class="tab-menu__item tab-menu__active">
            <span class="tab-menu__icon"><i class="ri-home-line"></i></span>
            <span class="tab-menu__text"><jsp:include page="left.jsp"/></span>
        </li>

        <li class="tab-menu__item">
            <span class="tab-menu__icon"><i class="ri-search-line"></i></span>
            <span class="tab-menu__text"><jsp:include page="top.jsp"/></span>
        </li>

    </ul>

</div>

</body>
</html>
