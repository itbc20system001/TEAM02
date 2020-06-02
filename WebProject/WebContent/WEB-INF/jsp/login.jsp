<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String errorMsg = (String)request.getAttribute("errorMsg");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rideau | ログイン</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.10.1/css/all.css" />

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/5.10.1/css/font-awesome.min.css" />
<script src="https://kit.fontawesome.com/58a698cbde,js" crossorigin="anonymous"></script>
</head>
<body>
<header>

    <!-- ロゴ -->
    <div class="logo">
      <a href="/rideau"><img class="logo" src="images/1_Primary_logo_on_transparent_203x63.png" alt="logo"></a>
    </div>

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
    <h1>ログイン</h1>
<form action = "/rideau/Login" method = "post" >
Emailアドレス

<div class="cp_iptxt">
  <i class="fa fa-envelope fa-lg fa-fw" aria-hidden="true"></i>
  <input type="text" name = "email" placeholder="E-Mail">
</div>

パスワード
<div class="cp_iptxt">
  <i class="fas fa-key" aria-hidden="true"></i>
  <input type="text" name = "password" placeholder="password">
</div>
<font color = "ff0000">
 <% if(errorMsg !=null){ %><%= errorMsg %><br><% } %>
 </font>



 <div class="submitStyle">
<input type = "submit" value = "ログイン" class="button">
</div>
</form>
<a href = "/rideau/SignUp">会員登録はこちら</a>
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