<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rideau | 商品検索</title>
<link rel="stylesheet" href="css/style.css">
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
        <li><a href="/rideau">ホーム</a></li>
        <li><a href="/rideau/Shop">商品検索</a></li>
        <li><a href="/rideau/Cart">カート</a></li>
        <li><a href="/rideau/MyPage">マイページ</a></li>
      </ul>
    </nav>
  </header>

  <main>
<h2>色を選択してください</h2>
<div class="colors">
  <a href="/rideau/Shop?color=white"><img src="images/white.png" alt="white"></a>
    <a href="/rideau/Shop?color=red"><img src="images/red.png" alt="red"></a>
    <a href="/rideau/Shop?color=orange"><img src="images/orange.png" alt="orange"></a>
    <a href="/rideau/Shop?color=green"><img src="images/green.png" alt="green"></a>
    <a href="/rideau/Shop?color=blue"><img src="images/blue.png" alt="blue"></a>
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