<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.User"%>
<%@ page import="model.OrderMain"%>
<%@ page import="model.OrderDesc"%>
<%@ page import="java.util.List"%>
<%
User loginUsr = (User) session.getAttribute("user");
List<OrderMain> orderMainList=(List<OrderMain>)request.getAttribute("orderMainList");
String errorMsg = (String)request.getAttribute("errorMsg");


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
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
  <h1>My Page</h1>
  <h2>お知らせ</h2>
  <p>現在はありません</p>

  <h2>お客様情報</h2>
  <table>
    <tr>
      <th>ユーザーID：</th>
      <td><%=loginUsr.getUser_id() %></td>
    </tr>
    <tr>
      <th>Email:</th>
      <td><%=loginUsr.getEmail() %></td>
    </tr>
    <tr>
      <th>氏名：</th>
      <td><%=loginUsr.getUser_nm() %></td>
    </tr>
    <tr>
      <th>住所：</th>
      <td><%=loginUsr.getAddress() %></td>
    </tr>
  </table>
  <a href="/rideau/MyPage?action=change">登録情報変更</a>

  <h2>注文履歴</h2>

  <% if (orderMainList == null) {%>
  <p>注文履歴はありません</p>

  <% } else if(orderMainList !=null){ %>
  <% for(OrderMain orderMain : orderMainList){ %>
  <h3>概要</h3>
  <table class="items">
    <tr>
      <th>注文日：</th>
      <td><%=orderMain.getOrder_date() %> </td>
    </tr>
    <tr>
      <th>注文のID：</th>
      <td><%=orderMain.getOrder_id() %></td>
    </tr>
    <tr>
      <th>合計金額：</th>
      <td><%=orderMain.getTotal() %></td>
    </tr>
    <tr>
      <th></th>
      <td><a href="/rideau/MyPage?action=detail&orderId=<%=orderMain.getOrder_id()%>">詳細へ</a></td>
    </tr>
    <% } %>
    <% } %>
  </table>
  <a href = "/rideau/Logout">ログアウト</a>
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



