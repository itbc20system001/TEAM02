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
    <div class="logo">
      <a href="/rideau"><img class="logo" src="images/1_Primary_logo_on_transparent_203x63.png" alt="logo"></a>
    </div>>

    <!-- nav -->
    <nav class="nav">
      <ul>
        <li><a href="/rideau">Top</a></li>
        <li><a href="/rideau/Shop">Search</a></li>
        <li><a href="/rideau/Cart">Cart</a></li>
        <li><a href="/rideau/MyPage">Mypage</a></li>
      </ul>
    </nav>
  </header>
  <main>
<h1>登録完了しました</h1>
<h2>登録情報</h2>
<div class="contents">
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
  </div>
  <div class="contents">
<a href = "/rideau/Login">続けてログイン</a>
</div>
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