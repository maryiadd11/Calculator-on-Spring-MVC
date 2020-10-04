<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Authorization</title>
</head>
<body>
<f:form action="/home/auth" method="post" modelAttribute="authUser">
    <f:input type="text" path="login" placeholder="Введите логин"/>
    <br>
    <f:errors path="login"/>
    <br>
    <f:input type="password" path="password" placeholder="Введите пароль"/>
    <br>
    <f:errors path="password"/>
    <br>
    <f:button>Авторизоваться</f:button>
</f:form>
<%--</f:form>--%>
<%--<form action="/home/auth" method="post">--%>
<%--    <input type="text" name="login" placeholder="Введите логин">--%>
<%--    <input type="password" name="password" placeholder="Введите пароль">--%>
<%--    <button>Авторизоваться</button>--%>
<%--</form>--%>
${error}
</body>
</html>
