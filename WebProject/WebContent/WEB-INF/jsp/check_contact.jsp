<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "model.Contact"%>
    <% Contact ctc = (Contact) session.getAttribute("ctc"); %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rideau | お問い合わせ内容確認</title>
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
        <li><a href="/rideau">Top</a></li>
        <li><a href="/rideau/Shop">Search</a></li>
        <li><a href="/rideau/Cart">Cart</a></li>
        <li><a href="/rideau/MyPage">Mypage</a></li>
      </ul>
    </nav>
  </header>
  <main>
<table>
<tbody>
<tr>
<th>お名前</th>
<td><%=ctc.getName() %></td>
</tr>
<tr>
<th>メールアドレス</th>
<td><%= ctc.getAddress()%></td>
<tr>
<th>お問い合わせ内容</th>
<td><%= ctc.getContact()%></td>
</tr></tbody>
</table>
<form action="/WEB-INF/jsp/contactSuccess.jsp">
<div class = "submitStyle">
<input type="submit" value="この内容で送信する" class="button">
</div>
</form>
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