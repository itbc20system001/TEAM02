<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rideau</title>
</head>
<body>
<form action = "/rideau/Login" method = "post">
Emailアドレス:<input type = "text" name = "email"><br>
パスワード:<input type = "password" name = "password"><br>
<input type = "submit" value = "ログイン">
</form>
<a href = "/rideau/SignUp">会員登録はこちら</a>

</body>
</html>