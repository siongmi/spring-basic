<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 25. 3. 14.
  Time: 오전 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        table {
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #DDD;
        }
    </style>
</head>
<body>
<div style="text-align: center">
    <h3>영화 목록</h3>
    <table style="width: 680px; margin : auto;">
        <tr>
            <th>제목</th>
            <th>개봉일</th>
        </tr>
        <<c:forEach items="${movies}" var="one">
            <tr class="item">
                <td>
                    <a href="${pageContext.request.contextPath}/movie/detail?id=${one.id}">${one.title}</a>
                </td>
                <td>${one.releaseDate}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
