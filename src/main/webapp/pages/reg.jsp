<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<f:form action="/home/reg" method="post" modelAttribute="user">
    <f:input type="text" path="name" placeholder="Введите имя"/>
    <br>
    <f:errors path="name"/>
    <br>
    <f:input type="text" path="login" placeholder="Введите логин"/>
    <br>
    <f:errors path="login"/>
    <br>
    <f:input type="password" path="password" placeholder="Введите пароль"/>
    <br>
    <f:errors path="password"/>
    <br>
    <f:button>Зарегистрироваться</f:button>
</f:form>
</body>
</html>
