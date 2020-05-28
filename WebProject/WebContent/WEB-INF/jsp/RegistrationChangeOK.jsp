<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User"%>
<%User loginUsr = (User) session.getAttribute("user");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録変更確認</title>
</head>
<body>
<h1>登録内容変更しました</h1>
<a href = "/rideau/MyPage">マイページへ</a>
</body>
</html>