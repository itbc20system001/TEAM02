<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String errorMsg = (String)request.getAttribute("errorMsg");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rideau | ログイン</title>
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
        <li><a href="/rideau">ホーム</a></li>
        <li><a href="/rideau/Shop">商品検索</a></li>
        <li><a href="/rideau/Cart">カート</a></li>
        <li><a href="/rideau/MyPage">マイページ</a></li>
      </ul>
    </nav>
  </header>
   <main>
    <h2>ログイン</h2>
<form action = "/rideau/Login" method = "post" >
Emailアドレス:<input type = "text" name = "email"><br>
パスワード:<input type = "password" name = "password"><br>
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