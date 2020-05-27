<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.User"%>
<%@ page import="model.OrderMain"%>
<%@ page import="model.OrderDesc"%>
<%@ page import="java.util.List"%>
<%@ page import="model.User"%>
<%
User loginUsr = (User) session.getAttribute("loginUsr");
List<OrderMain> orderMainList=(List<OrderMain>)request.getAttribute("orderMainList");
List<OrderDesc> orderDescList=(List<OrderDesc>)request.getAttribute("orderDescList");
String errorMsg = (String)request.getAttribute("errorMsg");


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
</head>
<body>
  <h1>My Page</h1>
  <h2>お知らせ</h2>
  <p>現在はありません</p>

  <h2>お客様情報</h2>
  <table>
    <tr>
      <th>ユーザーID：</th>
      <td></td>
    </tr>
    <tr>
      <th>Email:</th>
      <td>${USER.email}</td>
    </tr>
    <tr>
      <th>氏名：</th>
      <td>${USER.user_nm }</td>
    </tr>
    <tr>
      <th>住所：</th>
      <td>${USER.user_address }</td>
    </tr>
  </table>
  <a href="/rideau/MyPage?action=change">登録情報変更</a>

  <h2>注文履歴</h2>

  <% if (orderMainList == null) {%>
  注文履歴はありません

  <% } else if(orderMainList !=null){ %>
  <% for(OrderMain orderMain : orderMainList){ %>
  <h3>概要</h3>
  <table class="items">
    <tr>
      <th>注文日：</th>
      <td>${ORDER_MAIN.order_date }</td>
    </tr>
    <tr>
      <th>注文のID：</th>
      <td>${ORDER_MAIN.order_id }</td>
    </tr>
    <tr>
      <th>合計金額：</th>
      <td>${ORDER_MAIN.total }</td>
    </tr>
    <% } %>
    <% } %>
  </table>
  <% if( orderDescList == null) { %>

  <% } else if(orderDescList !=null){ %>
  <h3>詳細</h3>
  <% for(OrderDesc orderDesc : orderDescList){ %>
  <table>
    <tr>
      <th>柄：</th>
      <td>${ORDER_DESC.pattern_cd }</td>
    </tr>

    <tr>
      <th>サイズ：</th>
      <td>${ORDER_DESC.size_price_cd }</td>
    </tr>

    <tr>
      <th>裏地：</th>
      <td>${ORDER_DESC.liner_flag }</td>
    </tr>

    <tr>
      <th>ホック：</th>
      <td>${ORDER_DESC.hook_flag }</td>
    </tr>

    <tr>
      <th>個数：</th>
      <td>${ORDER_DESC.quantity }</td>
    </tr>

    <tr>
      <th>価格：</th>
      <td>${ORDER_DESC.price }</td>
    </tr>
  </table>
  <% } %>
  <% } %>


  <p>
    <a href="/rideau/MyPage?action=review">商品のレビュー</a>
  </p>
</body>
</html>



