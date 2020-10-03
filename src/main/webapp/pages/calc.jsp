<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Calculation</title>
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
    <br>
    <button>Подсчитать</button>
</form>

<c:if test="${message != null}">
    <h1>${message}</h1>
</c:if>
</body>
</html>
