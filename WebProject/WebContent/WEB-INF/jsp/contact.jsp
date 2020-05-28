<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<form name="contact" action="/rideau/ContactSerblet" method="post">
<table width="100%">
<tbody><tr>
	<td>お名前</td>
	<td><input name="name" type="text"></td>
</tr>
<%-- <tr>
	<td>フリガナ</td>
	<td><input name="furigana" type="text"></td>
</tr>
--%>
<tr>
	<td>メールアドレス</td>
	<td><input name="address" type="text"></td>
</tr>

<tr>
	<td>お問い合わせ内容</td>
	<td><textarea name="contact"></textarea></td>
</tr>
</tbody></table>
<input  type="submit" value="確認画面へ">
</form>

</body>
</html>