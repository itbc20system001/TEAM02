<%@page import="model.Pattern"%>
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
	List<Pattern> patternList = (List<Pattern>) request.getAttribute("patternList");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rideau | ご注文内容確認</title>
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
        <li><a href="/rideau">Home</a></li>
        <li><a href="/rideau/Shop">Search</a></li>
        <li><a href="/rideau/Cart">Cart</a></li>
        <li><a href="/rideau/MyPage">Mypage</a></li>
      </ul>
    </nav>
  </header>

  <main>
  <div class="contents">
    <h1>ご注文内容確認</h1>
  </div>
  <br>
  <br>
  <br>
  <br>
  <div class="contents">
    <h2>商品詳細</h2>
    <%
  	int i = 0;
  	for (Cart cart : cartList) {
  %>
    商品<%=i + 1%>
    <table>
      <tbody>
        <tr>
          <th>柄</th>

          <td><div class="pattern">
              <img src=<%=patternList.get(i).getPattern_img()%>>
            </div></td>

        </tr>
        <tr>
          <th>丈</th>
          <td><%=sizePriceList.get(i).getHeight()%>cm</td>
        </tr>
        <tr>
          <th>幅</th>
          <td><%=sizePriceList.get(i).getWidth()%>cm</td>
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
          <td><%=cart.getPrice() * cart.getQuantity()%>円</td>
        </tr>
      </tbody>
    </table>
  </div>
  <%
      	i++;
      	}
      %>
  <table>
    <tr>
      <th>合計金額</th>
      <td><%=totalPrice%>円</td>
    </tr>
  </table>


  <div class="contents">
    <h1>お届け情報</h1>
    <table>
      <tbody>
        <tr>
          <th>ご注文者様氏名</th>
          <td><%=loginUsr.getUser_nm()%></td>
        </tr>
        <tr>
          <th>お届け先住所</th>
          <td><%=loginUsr.getAddress()%></td>
        </tr>
        <tr>
          <th>配送方法</th>
          <td>佐川急便</td>
      </tbody>
    </table>
  </div>


<div class="contents">
  <h1>ご請求情報</h1>
  <table>
    <tbody>
      <tr>
        <th>ご請求先</th>
        <td>お届け先と同じ</td>
      </tr>
      <tr>
        <th>お支払い方法</th>
        <td>クレジットカード決済(**** **** **** <%=c.getCreditCard().substring(c.getCreditCard().length() - 4)%>)
        </td>
    </tbody>
  </table>
</div>

  <form action="/rideau/OrderConfirmation" method="post">
  <div class="submitStyle">
    <input type="submit" value="注文確定" class="button">
    </div>
  </form>

  <a href="/rideau/Creditcard>クレジットカード情報入力に戻る"></a> <br>

  <a href="/rideau/Cart">カートへ戻る</a> <br>
  </main>

  <footer>
    <ul>
      <li><a href="/rideau/CompanyInfo.jsp">企業概要</a></li>
      <li><a href="/rideau/Contact">お問い合わせ</a></li>
    </ul>
    <br>
    <p>&copy;Copyright Rideau All rights reserved.</p>
  </footer>
</body>
</html>