<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<c:if test="${sessionScope.authorized == null}">
    <p>Hello Guest!</p>
    <br>
    <a href="/home/reg">Registration</a>
    <br>
    <a href="/home/auth">Authorization</a>
</c:if>

<c:if test="${sessionScope.authorized != null}">
    <p>Hello, ${sessionScope.authorized.login}</p>
    <br>
    <a href="/home/calc">Открыть Калькулятор</a>
    <br>
    <a href="/home/account">Посмотреть историю операций</a>
</c:if>

</body>
</html>
