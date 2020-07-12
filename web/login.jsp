<%--
  Created by IntelliJ IDEA.
  User: han
  Date: 2020/7/12
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>log in</title>
</head>
<body>
<form method="post" action="validate.jsp">
    <h1>欢迎您的登录</h1>
    账户：<input type="text" name="username"/><br>
    密码：<input type="password" name="password" /><br>
    <button><a href="http://localhost:8086">注册</a></button>
    <button><a href="http://localhost:8086">登录</a></button>

</form>
</body>
</html>
