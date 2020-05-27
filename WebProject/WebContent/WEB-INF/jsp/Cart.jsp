<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<th>商品ID</th>
<th>柄</th>
<th>サイズ縦</th>
<th>サイズ横</th>
<th>オプション</th>
<th>数量</th>
<th>価格</th>
</tr>
<tr>
<td>1234</td>
<td>abc</td>
<td>1</td>
<td>price</td>
</tr>
</tbody>
</table>
<%-- acctionタグつける --%>
<a href = "/rideau/CartCancel">カートの商品を削除</a><br>
<a href = "/rideau/Creditcard.jsp">お支払いへ（クレジットカード情報入力）</a>

</body>
</html>