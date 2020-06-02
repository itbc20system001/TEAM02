<%@page import="model.SizePrice"%>
<%@page import="model.Pattern"%>
<%@page import="java.util.List"%>
<%@page import="model.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "model.User"%>
    <% User user = (User) session.getAttribute("user"); %>
    <%
    List<Cart> cartList= (List<Cart>) session.getAttribute("cartList");
    List<Pattern> patternList= (List<Pattern>) request.getAttribute("patternList");
    //
    List<SizePrice> sizePriceList = (List<SizePrice>) request.getAttribute("sizePriceList");
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rideau | カート</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>

    <!-- ロゴ あ-->
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
<h1>カート</h1>
<p>${user.getUser_nm() }さんのカート内の商品</p><br>
<% if (cartList == null || cartList.size() == 0) { %>
<p>カートは空です</p>
<%}else{ %>
<form action = "/rideau/CartCancel" method = "post">
<% int i = 0;
for(Cart c:cartList){ %>
<table>
<tbody>
<tr>
<th>柄</th>
 <td><div class="pattern">
 <img src=<%= patternList.get(i).getPattern_img() %>>
 </div>

  </td>
</tr>
<tr>
<th>サイズ縦</th>
<td>丈<%=sizePriceList.get(i).getHeight() + "cm"%></td>
<!--  <td><%=c.getSize_price_cd() %></td>  -->
</tr>
<tr>
<th>サイズ横</th>
<td>幅<%=sizePriceList.get(i).getWidth() + "cm"%></td>
<!-- <td><%=c.getSize_price_cd() %></td>  -->
</tr>
<tr>
<th>裏地の有無</th>
<td><% if(c.isHook_flg()){ %>有り<%} else { %>無し<%} %></td>
</tr>
<tr>
<th>タイプ</th>
<td><% if(c.isLiner_flag()){ %>レールが隠れる<%} else { %>レールが隠れない<%} %></td>
</tr>
<tr>
<th>数量</th>
<td><%=c.getQuantity() %></td>
</tr>
<tr>
<th>単価</th>
<td><%=c.getPrice() %>円</td>
</tr>
<tr>
<th>合計金額</th>
<td><%=c.getPrice()*c.getQuantity() %>円</td>
</tr>
<tr>
<th>削除</th>
<td>
<div class = "submitStyle">
<input type ="checkbox" name="cancel" value="<%= i %>" required>
</div>
</td>
</tr>

</tbody>
</table>
<%i++;
} %>
<%--<table border = "1" style = "width : ">

</table>--%>
<%-- acctionタグつける --%>

<input type = "submit" value = "カートの商品削除" class="button-cancel">
</form>
<form action="/rideau/Creditcard" method="get">
<input type="submit" value="お支払いへ（クレジットカード情報入力）" class="button">
</form>
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