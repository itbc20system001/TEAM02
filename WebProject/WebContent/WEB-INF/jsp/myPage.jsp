<%@page import="model.Pattern"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.User"%>
<%@ page import="model.OrderMain"%>
<%@ page import="model.OrderDesc"%>
<%@ page import="java.util.List"%>
<%
  User loginUsr = (User) session.getAttribute("user");
  List<OrderMain> orderMainList = (List<OrderMain>) request.getAttribute("orderMainList");
  String errorMsg = (String) request.getAttribute("errorMsg");
  List<Pattern> patternList = (List<Pattern>) request.getAttribute("patternList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rideau | マイページ</title>
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
  <h1>マイページ</h1>
  <div class="contents">
  <h2>お知らせ</h2>
  <p>現在はありません</p>
  </div>
  <h2>お客様情報</h2>
  <div class="contents">

  <table>
    <tr>
      <th>ユーザーID</th>
      <td><%=loginUsr.getUser_id()%></td>
    </tr>
    <tr>
      <th>Email</th>
      <td><%=loginUsr.getEmail()%></td>
    </tr>
    <tr>
      <th>氏名</th>
      <td><%=loginUsr.getUser_nm()%></td>
    </tr>
    <tr>
      <th>住所</th>
      <td><%=loginUsr.getAddress()%></td>
    </tr>
  </table>
  </div>
  <a href="/rideau/MyPage?action=change">登録情報変更</a>

  <h2>注文履歴</h2>

  <%
    if (orderMainList == null) {
  %>
  <p>注文履歴はありません</p>

  <%
    } else if (orderMainList != null) {
  %>
  <div class="contents">
  <h3>概要</h3>
  <% for (OrderMain orderMain : orderMainList) { %>
  <div class="pattern">
  <table class="items">
    <tr>
      <th>注文日</th>
      <td><%=orderMain.getOrder_date()%></td>
    </tr>
    <tr>
      <th>合計金額</th>
      <td><%=orderMain.getTotal() + "円"%></td>
    </tr>
    <tr>
      <th></th>
      <td><a href="/rideau/MyPage?action=detail&orderId=<%=orderMain.getOrder_id()%>">詳細へ</a></td>
    </tr>
    <%
      }
    %>
    <%
      }
    %>

  </table>
  </div>
</div>
  <div class="submitStyle">
  <form action="/rideau/Logout" method="get">
<input type="submit" value="ログアウト" class="button-cancel">
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



