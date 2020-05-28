<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String errorMsg = (String)request.getAttribute("errorMsg");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rideau</title>
</head>
<body>
<form action = "/rideau/SignUp" method = "post">
Emailアドレス:<input type = "text" name = "email"><br>
パスワード:<input type = "password" name = "password">(半角英数8文字以上)<br>
氏名:<input type = "text" name = "user_nm"><br>
住所:<input type = "text" name = "address"><br>
 <% if(errorMsg !=null){ %><%= errorMsg %><br><% } %>
<input type = "submit" value = "登録">
<a href = "/rideau/Login">戻る</a>
</form>

</body>
</html>