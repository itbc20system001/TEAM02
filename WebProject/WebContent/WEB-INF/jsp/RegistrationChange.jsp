<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User"%>
<% String errorMsg = (String)request.getAttribute("errorMsg");
User loginUsr = (User) session.getAttribute("user");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録情報変更</title>
</head>
<body>
<h1>登録情報変更</h1>
 <h2>お客様情報</h2>
<form action = "/rideau/RegistrationChange" method = "post">
  <table>
  <tr>
      <th></th>
      <td>現在の登録情報</td>
      <td>変更内容</td>
    </tr>
    <tr>
      <th>Email:</th>
      <td><%=loginUsr.getEmail() %></td>
      <td><input type = "text" name = "emailChange"></td>
    </tr>
    <tr>
      <th>パスワード：</th>
      <td>非表示</td>
      <td><input type = "password" name = "passwordChange">(半角英数8文字以上)</td>
    </tr>
    <tr>
      <th>氏名：</th>
      <td><%=loginUsr.getUser_nm() %></td>
      <td><input type = "text" name = "user_nmChange"><br></td>
    </tr>
    <tr>
      <th>住所：</th>
      <td><%=loginUsr.getAddress() %></td>
      <td><input type = "text" name = "addressChange"></td>
    </tr>
  </table>

 <% if(errorMsg !=null){ %><%= errorMsg %><br><% } %>
<input type = "submit" value = "登録">
</form>
<a href = "/rideau/MyPage">戻る</a>
<a href="index">トップ画面へ</a>
</body>
</html>