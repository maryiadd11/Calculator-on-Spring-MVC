<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<c:if test="${sessionScope.user == null}">
    Hello Guest!
</c:if>

<c:if test="${sessionScope.user != null}">
    ${sessionScope.user}
    <br>
<%--    <a href="/home/logout">Logout</a>--%>
    <a href="/home/calc">Calculation</a>
<%--    <a href="/home/users">UserMenu</a>--%>
</c:if>
<br>
<a href="/home/reg">Registration</a>
<br>
<a href="/home/auth">Authorization</a>
</body>
</html>
