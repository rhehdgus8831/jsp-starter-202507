<%@ page import="com.jsp.basic.chap02.Dancer" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Web Study</title>

    <style>
        .del-btn {
            padding: 5px 10px;
            outline: none;
            border: none;
            background: red;
            border-radius: 10px;
            color: #fff;
            margin-left: 10px;
            margin-bottom: 10px;
            cursor: pointer;
        }
        .del-btn:hover {
            border: 1px solid orange;
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <h1>MVC버전 댄서정보 모아보기</h1>

    <a href="/mvc/v1/new">다시 댄서 등록하기</a>
    <ul>
        <%--        <% for (Dancer d : (List<Dancer>)request.getAttribute("dancers")) { %>--%>
        <c:forEach var="d" items="${dancers}">
        <li>
            # 이름: ${d.name},
            # 크루이름: ${d.crewName},
            # 수준: ${d.danceLevel},
            # 장르: ${d.genres}
        </li>
        </c:forEach>
        <%--        <% } %>--%>
    </ul>

</body>
</html>