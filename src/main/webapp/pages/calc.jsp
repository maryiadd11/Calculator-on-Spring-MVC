<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Calculation</title>
</head>
<body>
<f:form action="/home/calc" method="post" modelAttribute="operation">
    <f:input type="text" path="num1" placeholder="Введите первое число"/>
    <br>
    <f:errors path="num1"/>
    <br>
    <f:input type="text" path="num2" placeholder="Введите второе число"/>
    <br>
    <f:errors path="num2"/>
    <br>
    <f:select path="type">
        <f:option value="sum">Сложить</f:option>
        <f:option value="sub">Отнять</f:option>
        <f:option value="mult">Умножить</f:option>
        <f:option value="div">Разделить</f:option>
    </f:select>
    <br>
    <f:button>Подсчитать</f:button>
</f:form>

${result}

</body>
</html>
