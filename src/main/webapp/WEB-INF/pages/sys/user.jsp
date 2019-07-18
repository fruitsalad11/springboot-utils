<%--
  Created by IntelliJ IDEA.
  User: wangzhihao
  Date: 2019/7/18
  Time: 18:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>测试页面</title>
</head>
<body>
    <table>
        <c:forEach items="${page.records}" var="user" varStatus="">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
            </tr>
        </c:forEach>

    </table>

</body>
</html>
