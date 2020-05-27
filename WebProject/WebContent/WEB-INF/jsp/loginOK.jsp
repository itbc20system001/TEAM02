<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "model.User"%>
    <% User user = (User) session.getAttribute("user"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>redeau</title>
</head>
<body>
<p>ログイン完了画面です。${user.getUser_nm() }様</p>
<a href = "/rideau/Login">トップへ</a>


</body>
</html>