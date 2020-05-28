<%@page import="model.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Cart c = (Cart) session.getAttribute("Cart");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カート</title>
</head>
<body>
<h1>カート</h1>
<p>userNameさんのカート内の商品</p><br>
<table border = "1" style = "width : ">
<tbody>
<tr bgcolor="silver">
<th>柄</th>
<th>サイズ縦</th>
<th>サイズ横</th>
<th>フックの有無</th>
<th>裏地の有無</th>
<th>数量</th>
<th>価格</th>
</tr>
<tr>
<td><%=c.getPattern_cd() %></td>
<td><%=c.getSize_price_cd() %></td>
<td><%=c.getSize_price_cd() %></td>
<td><%=c.isHook_flg() %></td>
<td><%=c.isLiner_flag() %></td>
<td><%=c.getQuantity() %></td>
<td><%=c.getPrice() %></td>
</tr>
</tbody>
</table>
<%-- acctionタグつける --%>
<a href = "/rideau/CartCancel">カートの商品を削除</a><br>
<a href = "/rideau/Creditcard.jsp">お支払いへ（クレジットカード情報入力）</a>

</body>
</html>