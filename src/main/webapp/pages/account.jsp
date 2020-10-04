<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User Account</title>
</head>
<body>
<c:if test="${operationsList != null}">
    <p>Список операций</p>
    <br>
         <c:forEach items="${operationsList}" var="operationsList">
              <li> ${operationsList}</li>
         </c:forEach>
</c:if>

<c:if test="${operationsList == null}">
    <p>Список операций пуст</p>
    <br>
    <a href="/home/calc">Открыть калькулятор</a>
</c:if>
</body>
</html>
