<%@page import="model.SizePrice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.OrderMain"%>
<%@ page import="model.OrderDesc"%>
<%@ page import="java.util.List"%>

<%
	//List<OrderMain> orderMainList=(List<OrderMain>)request.getAttribute("orderMainList");
	List<OrderDesc> orderDescList = (List<OrderDesc>) request.getAttribute("orderDescList");
	List<SizePrice> sizePriceList = (List<SizePrice>) request.getAttribute("sizePriceList");
	String errorMsg = (String) request.getAttribute("errorMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注文詳細</title>
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
  <h2>注文履歴</h2>

  <%
  	if (orderDescList == null) {
  %> <%
 	} else if (orderDescList != null) {
 		int i = 0;
 %> <%
 	for (OrderDesc orderDesc : orderDescList) {
 %>
  <h3>
    詳細<%=orderDesc.getOrder_desc_id()%></h3>
  <table>
    <tr>
      <th>柄：</th>
      <td><%=orderDesc.getPattern_cd()%></td>
    </tr>

    <tr>
      <th>サイズ：</th>
      <td>丈:<%=sizePriceList.get(i).getHeight()%><br>幅:<%=sizePriceList.get(i).getWidth()%></td>
    </tr>

    <tr>
      <th>裏地：</th>
      <td>
        <%
        	if (orderDesc.isLiner_flg()) {
        %>有り<%
        	} else {
        %>無し<%
        	}
        %>
      </td>
    </tr>

    <tr>
      <th>タイプ：</th>
      <td>
        <%
        	if (orderDesc.isHook_flg()) {
        %>有り<%
        	} else {
        %>無し<%
        	}
        %>
      </td>
    </tr>

    <tr>
      <th>個数：</th>
      <td><%=orderDesc.getQuantity()%></td>
    </tr>

    <tr>
      <th>価格：</th>
      <td><%=orderDesc.getPrice()%></td>
    </tr>
  </table>
  <%
  	i++;
  %> <%
 	}
 %> <%
 	}
 %> </main>

  <p>
    <a href="/rideau/MyPage">マイページへ戻る</a>
  </p>
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



