<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<c:if test="${sessionScope.user == null}">
    <p>Hello Guest!</p>
</c:if>

<c:if test="${sessionScope.user != null}">
    ${sessionScope.user.name}
    <a href="/home/calc">Открыть Калькулятор</a>
</c:if>

<a href="/home/reg">Registration</a>
<a href="/home/auth">Authorization</a>
</body>
</html>
