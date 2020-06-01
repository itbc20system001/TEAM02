<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="model.User"%>
<% User newUser = (User) request.getAttribute("newUser");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rideau | 会員登録完了</title>
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
<h1>登録完了しました</h1>
<h2>登録情報</h2>
  <table>
    <tr>
      <th>Email</th>
      <td><%=newUser.getEmail() %></td>
    </tr>
    <tr>
      <th>パスワード</th>
      <td>非表示</td>
    </tr>
    <tr>
      <th>氏名</th>
      <td><%=newUser.getUser_nm() %></td>
    </tr>
    <tr>
      <th>住所</th>
      <td><%=newUser.getAddress() %></td>
    </tr>
  </table>
<a href = "/rideau/Login">続けてログイン</a>
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