<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.OrderMain"%>
<%@ page import="model.OrderDesc"%>
<%@ page import="java.util.List"%>
<%
//List<OrderMain> orderMainList=(List<OrderMain>)request.getAttribute("orderMainList");
List<OrderDesc> orderDescList=(List<OrderDesc>)request.getAttribute("orderDescList");
String errorMsg = (String)request.getAttribute("errorMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>注文履歴</h2>

  <% if( orderDescList == null) { %>

  <% } else if(orderDescList !=null){ %>
  <h3>詳細</h3>
  <% for(OrderDesc orderDesc : orderDescList) {%>
  <table>
    <tr>
      <th>柄：</th>
      <td><%=orderDesc.getPattern_cd() %></td>
    </tr>

    <tr>
      <th>サイズ：</th>
      <td><%=orderDesc.getSize_price_cd() %></td>
    </tr>

    <tr>
      <th>裏地：</th>
      <td><%=orderDesc.isLiner_flg() %></td>
    </tr>

    <tr>
      <th>ホック：</th>
      <td><%=orderDesc.isHook_flg() %></td>
    </tr>

    <tr>
      <th>個数：</th>
      <td><%=orderDesc.getQuantity() %></td>
    </tr>

    <tr>
      <th>価格：</th>
      <td><%=orderDesc.getPrice() %></td>
    </tr>
  </table>
  <% } %>
  <% } %>


  <p>
    <a href="/rideau/MyPage?action=review">商品のレビュー</a>
  </p>
</body>
</html>



