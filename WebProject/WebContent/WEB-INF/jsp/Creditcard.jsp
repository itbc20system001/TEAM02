<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rideau | お支払い</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.10.1/css/all.css" />

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/5.10.1/css/font-awesome.min.css" />
<script src="https://kit.fontawesome.com/58a698cbde,js" crossorigin="anonymous"></script>
</head>
<body>
 <header>

    <!-- ロゴあ -->
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
<h1>クレジットカード情報入力</h1>
<div class="contents">
<form action = "/rideau/Order" method = "post">
<label>クレジットカード番号</label>

<div class="cp_iptxt">
  <i class="far fa-credit-card fa-lg fa-fw" aria-hidden="true"></i>
  <input type="tel" name = "creditCard" pattern="\d{16}" size="16" maxlength="16" required placeholder="CreditCard">
</div>

<label>クレジットカード有効期限</label>
<div class="box">

<div class="cp_ipselect cp_sl02">
<select name = "month" required>
<option value="January">1</option>
<option value="February">2</option>
<option value="March">3</option>
<option value="April">4</option>
<option value="May">5</option>
<option value="June">6</option>
<option value="July">7</option>
<option value="August">8</option>
<option value="September">9</option>
<option value="Octorber">10</option>
<option value="November">11</option>
<option value="December">12</option>
</select>
</div>

<div class="cp_ipselect cp_sl02">
<select name = year required>
<option value="2020">2020</option>
<option value="2021">2021</option>
<option value="2022">2022</option>
<option value="2023">2023</option>
<option value="2024">2024</option>
<option value="2025">2025</option>
<option value="2026">2026</option>
<option value="2027">2027</option>
<option value="2028">2028</option>
<option value="2029">2029</option>
<option value="2030">2030</option>
</select><br>
</div>
</div>
<label>セキュリティコード</label>

<div class="cp_iptxt">
  <i class="fas fa-key fa-lg fa-fw" aria-hidden="true"></i>
  <input type="tel" name = "Security" pattern="\d{3}" size="3" maxlength="3" required >
</div>

<label>名義(半角大文字)</label>

<div class="cp_iptxt">
  <i class="fas fa-user fa-lg fa-fw" aria-hidden="true"></i>
  <input type="text" pattern="^[A-Z\s]+$" required placeholder="Name">
</div>

<div class = "submitStyle">
<input type="submit" value="完了（注文内容確認へ)" class="button">
</div>
</form>
<form action ="/rideau/Cart">
<div class ="submitStyle">
<input type="submit" value="カートへ" class="button">
</div>
</form>
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