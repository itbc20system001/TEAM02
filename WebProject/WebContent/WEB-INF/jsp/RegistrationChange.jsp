<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User"%>
<% String errorMsg = (String)request.getAttribute("errorMsg");
User loginUsr = (User) session.getAttribute("user");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rideau | 登録情報変更</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>

    <!-- ロゴ -->
    <h1 class="logo">
      <a href="/rideau"><img class="logo" src="images/1_Primary_logo_on_transparent_203x63.png" alt="logo"></a>
    </h1>

    <!-- nav -->
    <nav class="nav">
      <ul>
        <li><a href="/rideau">ホーム</a></li>
        <li><a href="/rideau/Shop">商品検索</a></li>
        <li><a href="/rideau/Cart">カート</a></li>
        <li><a href="/rideau/MyPage">マイページ</a></li>
      </ul>
    </nav>
  </header>
   <main>
<h1>登録情報変更</h1>
 <h2>お客様情報</h2>
<form action = "/rideau/RegistrationChange" method = "post" >
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
      <td><input type = "password" name = "passwordChange"><br>(半角英数8文字以上)</td>
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

<font color = "ff0000">
 <% if(errorMsg !=null){ %><%= errorMsg %><br><% } %>
</font>
<input type = "submit" value = "登録" class="button">
</form>
<a href = "/rideau/MyPage">戻る</a>
<a href="/rideau/">トップ画面へ</a>
</main>
<footer>
<div class="link">
<ul>
  <li><a href="/rideau/CompanyInfo.jsp">企業概要</a></li>
  <li><a href="/rideau/Contact">お問い合わせ</a></li>
 </ul>
</div>
 <br>
  <p>&copy;Copyright Rideau All rights reserved.</p>
   </footer>
</body>
</html>