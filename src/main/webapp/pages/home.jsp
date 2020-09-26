<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<form action="/home/calc" method="post">
    <input name="num1" placeholder="Первое число">
    <input name="num2" placeholder="Второе число">
    <select name="type">
        <option value="sum">Сложить</option>
        <option value="minus">Отнять</option>
        <option value="mult">Умножить</option>
        <option value="div">Разделить</option>
    </select>
    <button>Считать</button>
</form>
<c:if test="${message != null}">
    <p>Результат операции: ${message}</p>
</c:if>
</body>
</html>
