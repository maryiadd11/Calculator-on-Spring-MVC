<%--
  Created by IntelliJ IDEA.
  User: mdronets
  Date: 10/3/20
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Authorization</title>
</head>
<body>
<form action="/home/auth" method="post">
    Login<input name="login">
    Password<input name="password">
    <button> Submit </button>
</form>

${message1}
${message2}

</body>
</html>
