<%@page import="java.util.List"%>
<%@page import="model.SizePrice"%>
<%@page import="model.User"%>
<%@page import="model.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.CreditCard"%>
<%
  User loginUsr = (User) session.getAttribute("user");
  CreditCard c = (CreditCard) request.getAttribute("creditCard");
  int totalPrice = (Integer) session.getAttribute("totalPrice");
  ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cartList");
  List<SizePrice> sizePriceList = (List<SizePrice>) request.getAttribute("sizePriceList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ご注文内容確認</title>
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
        <li><a href="">ホーム</a></li>
        <li><a href="/rideau/Shop">商品検索</a></li>
        <li><a href="/rideau/Cart">カート</a></li>
        <li><a href="/rideau/Login">ログイン</a></li>
      </ul>
    </nav>
  </header>

<main>
  <h1>ご注文内容確認</h1>
  <br>
  <br>
  <br>
  <br>
  <h1>商品詳細</h1>
  <br>
  <%
    int i = 0;
    for (Cart cart : cartList) {
  %>
  <table>
    <tbody>
      <tr>
        <th>柄</th>
        <td><%=cart.getPattern_cd()%></td>
      </tr>
      <tr>
        <th>丈:</th>
        <td><%=sizePriceList.get(i).getHeight()%></td>
      </tr>
      <tr>
        <th>幅:</th>
        <td><%=sizePriceList.get(i).getWidth()%></td>
      </tr>
      <tr>
        <th>フックの有無</th>
        <td>
          <%
            if (cart.isHook_flg()) {
          %>有り<%
            } else {
          %>無し<%
            }
          %>
        </td>
      </tr>
      <tr>
        <th>裏地の有無</th>
        <td>
          <%
            if (cart.isLiner_flag()) {
          %>有り<%
            } else {
          %>無し<%
            }
          %>
        </td>
      </tr>
      <tr>
        <th>数量</th>
        <td><%=cart.getQuantity()%></td>
      </tr>
      <tr>
        <th>価格</th>
        <td><%=cart.getPrice() * cart.getQuantity()%></td>
      </tr>
    </tbody>
  </table>
  <%
    i++;
    }
  %>
  <p>
    合計金額：<%=totalPrice%>円
  </p>

  <h1>お届け情報</h1>
  <br>
  <p>お届け先住所</p>
  <br><%=loginUsr.getAddress()%>
  <p>配送方法</p>
  <br>佐川急便

  <h1>ご請求情報</h1>
  <br> ご請求先：お届け先と同じ
  <br> お支払い方法：クレジットカード決済(<%=substr("c.getCreditCard()", 3, [4]);%>)


  <form action="/rideau/OrderConfirmation" method="post">
    <input type hidden>
    <input type="submit" value="注文確定" class="button">
  </form>

  <a href="/rideau/Creditcard>クレジットカード情報入力に戻る"></a>
  <br>

  <a href="/rideau/Cart">カートへ戻る</a>
  <br>
  </main>

   <footer>
<ul>
  <li><a href="/rideau/CompanyInfo.jsp">企業概要</a></li>
  <li><a href="">お問い合わせ</a></li>
 </ul>
 <br>
  <p>&copy;Copyright Rideau All rights reserved.</p>
   </footer>

</body>
</html>