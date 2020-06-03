<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rideau | トップページ</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="wrapper">

  <header>

    <!-- ロゴ -->
    <div class="logo">
      <a href="/rideau"><img class="logo" src="images/1_Primary_logo_on_transparent_203x63.png" alt="logo"></a>
    </div>

    <!-- nav -->
    <nav class="nav">
      <ul>
        <li><a href="/rideau">Top</a></li>
        <li><a href="/rideau/Shop">Search</a>

        </li>

        <li><a href="/rideau/Cart">Cart</a></li>
        <li><a href="/rideau/MyPage">Mypage</a></li>
      </ul>
    </nav>
  </header>

  <main>
  <div class="mainphoto">
  <img alt="mainphoto" src="images/3180330_m.jpg">
  </div>
  <div class="news">
    <h2>News</h2>
    <p>00/00/00 ○○が入荷しました！！</p>
    <p>00/00/00 キャンペーン実施中！！</p>
  </div>

  <div class="contents">
<div class="flex_item">
  <img src="images/shopping.jpg" class="photo">
  <div class="item">
    <p>お買い物を始める</p>
    <p><a class="btn" href="/rideau/Shop">おかいもの</a></p>
  </div>
  </div>
  </div>

  <div class="contents">
  <div class="flex_item">

  <img src="images/login.jpg" class="photo">
  <div class="item">
   <p> ログイン/会員登録はこちら</p>
    <p><a class="btn" href="/rideau/Login">ログイン</a></p>
    <p><a class="btn" href="/rideau/SignUp">新規会員登録</a></p>
  </div>
  </div>
  </div>

<div class=ranking>
<h2>人気のデザイン</h2>
<div class="pattern">
<a href="/rideau/Shop?color=blue"><img alt="" src="images/pattern/b01.jpg"></a>
<a href="/rideau/Shop?color=green"><img alt="" src="images/pattern/g02.jpg"></a>
<a href="/rideau/Shop?color=white"><img alt="" src="images/pattern/w02.jpg"></a>
</div>
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

   </div>
</body>
</html>