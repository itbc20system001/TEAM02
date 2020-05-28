<%@page import="java.util.List"%>
<%@page import="model.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    List<Cart> cartList=(List<Cart>) request.getAttribute("cartList");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カート</title>
</head>
<body>
<h1>カート</h1>
<p>userNameさんのカート内の商品</p><br>

<% for(Cart c:cartList){ %>
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
<td><%=c.isHook_flg() %></td>
</tr>
<tr>
<th>裏地の有無</th>
<td><%=c.isLiner_flag() %></td>
</tr>
<tr>
<th>数量</th>
<td><%=c.getQuantity() %></td>
</tr>
<tr>
<th>価格</th>
<td><%=c.getPrice() %></td>
</tr>
</tbody>
</table>
<%} %>
<%--<table border = "1" style = "width : ">

</table>--%>
<%-- acctionタグつける --%>
<a href = "/rideau/CartCancel">カートの商品を削除</a><br>
<a href = "/rideau/Creditcard">お支払いへ（クレジットカード情報入力）</a>

</body>
</html>