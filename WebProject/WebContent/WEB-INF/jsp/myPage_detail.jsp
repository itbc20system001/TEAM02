<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>注文詳細</title>
</head>
<body>
  <h2>注文履歴</h2>

  <% if( orderDescList == null) { %>

  <% } else if(orderDescList !=null){ %>

  <% for(OrderDesc orderDesc : orderDescList) {%>
  <h3>
    詳細<%=orderDesc.getOrder_desc_id() %></h3>
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
      <td><% if(orderDesc.isLiner_flg()){ %>有り<%} else { %>無し<%} %></td>
    </tr>

    <tr>
      <th>タイプ：</th>
      <td><% if(orderDesc.isHook_flg()){ %>有り<%} else { %>無し<%} %></td>
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
    <a href="/rideau/MyPage">マイページへ戻る</a>
  </p>
</body>
</html>



