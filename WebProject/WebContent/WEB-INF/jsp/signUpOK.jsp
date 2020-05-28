<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="model.User"%>
<% User loginUsr = (User) session.getAttribute("user");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rideau</title>
</head>
<body>
<h1>登録完了しました</h1>

<a href = "/rideau/Login">続けてログイン</a>
</body>
</html>