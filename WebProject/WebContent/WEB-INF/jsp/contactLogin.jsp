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
<tbody>
<tr>
	<td>お問い合わせ内容</td>
	<td><textarea name="otoiawase"></textarea></td>
</tr>
</tbody></table>
<input  type="submit" value="確認画面へ">
</form>
</body>
</html>