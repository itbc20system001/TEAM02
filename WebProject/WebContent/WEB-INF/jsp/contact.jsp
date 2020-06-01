<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
<form name="contact" action="/rideau/ContactSerblet" method="post">
<table width="100%">
<tbody><tr>
	<td>お名前</td>
	<td><input name="name" type="text"></td>
</tr>
<%-- <tr>
	<td>フリガナ</td>
	<td><input name="furigana" type="text"></td>
</tr>
--%>
<tr>
	<td>メールアドレス</td>
	<td><input name="address" type="text"></td>
</tr>

<tr>
	<td>お問い合わせ内容</td>
	<td><textarea name="contact"></textarea></td>
</tr>
</tbody></table>
<input  type="submit" value="確認画面へ" class="button">
</form>
</main>

  <footer>
<div class="link">
<ul>
  <li><a href="/rideau/CompanyInfo.jsp">企業概要</a></li>
  <li><a href="">お問い合わせ</a></li>
 </ul>
</div>
 <br>
  <p>&copy;Copyright Rideau All rights reserved.</p>
   </footer>

</body>
</html>