<%@page import="java.util.List"%>
<%@page import="model.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "model.User"%>
    <% User user = (User) session.getAttribute("user"); %>
    <%
    List<Cart> cartList= (List<Cart>) session.getAttribute("cartList");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カート</title>
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
<h1>カート</h1>
<p>${user.getUser_nm() }さんのカート内の商品</p><br>
<% if (cartList == null) { %>
<p>カートは空です</p>
<%}else{ %>
<form action = "/rideau/CartCancel" method = "post">
<% int i = 0;
for(Cart c:cartList){ %>
<table>
<tbody>
<tr>
<th>柄</th>
 <td><%=c.getPattern_cd()%> </td>
</tr>
<tr>
<th>サイズ縦</th>
<td><%=c.getSize_price_cd() %></td>
</tr>
<tr>
<th>サイズ横</th>
<td><%=c.getSize_price_cd() %></td>
</tr>
<tr>
<th>フックの有無</th>
<td><% if(c.isHook_flg()){ %>有り<%} else { %>無し<%} %></td>
</tr>
<tr>
<th>裏地の有無</th>
<td><% if(c.isLiner_flag()){ %>有り<%} else { %>無し<%} %></td>
</tr>
<tr>
<th>数量</th>
<td><%=c.getQuantity() %></td>
</tr>
<tr>
<th>単価</th>
<td><%=c.getPrice() %></td>
</tr>
<tr>
<th>合計金額</th>
<td><%=c.getPrice()*c.getQuantity() %></td>
</tr>
<tr>
<th>削除</th>
<td><input type ="checkbox" name="cancel" value="<%= i %>"></td>
</tr>

</tbody>
</table>
<%i++;
} %>
<%--<table border = "1" style = "width : ">

</table>--%>
<%-- acctionタグつける --%>

<input type = "submit" value = "カートの商品削除">
</form>
<a href = "/rideau/Creditcard">お支払いへ（クレジットカード情報入力）</a>
<%} %>

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