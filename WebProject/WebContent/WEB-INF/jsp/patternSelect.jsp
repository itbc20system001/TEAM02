<%@page import="model.SizePrice"%>
<%@page import="model.Pattern"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String color = (String) request.getAttribute("color");
    List<Pattern> patternList=(List<Pattern>) request.getAttribute("patternList");
    List<SizePrice> sizePriceList=(List<SizePrice>) request.getAttribute("sizePriceList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
label img {
  margin: 3px;
  padding: 8px;
}

.selection-group input[type="radio"] {
  display: none;
}

.selection-group input[type="radio"]:checked + label img {
  background: orange;
}

section {
  position: absolute;
  display: none;
}
</style>
  <script type="text/javascript" >

 function selectboxChange() {
     target = document.getElementById("output");

     selindex = document.form1.Select1.selectedIndex;
     switch (selindex)
     case 1:
    	 target.innerHTML = "------<br>";
     {
     <% for(int i=0;i<sizePriceList.size()+1;i++){%>
     case <%=i+2%>:
         target.innerHTML = "<%= sizePriceList.get(i).getPrice()%>円<br>";
         break;
     <% } %>

     }
   }
</script>
</head>
<body>
  <p><%=color%>のデザイン一覧
  </p>
  <form name="form1" action="/rideau/Cart" method="post">
    <div class="selection-group">
   <% for(Pattern p:patternList){ %>
      <input id="<%=p.getPattern_cd() %>" type="radio" name="pattern" value="<%=p.getPattern_cd() %>"> <label for="<%= p.getPattern_cd()%>"> <img src=<%= p.getPattern_img() %>>

      </label>
      <%} %>
    </div>

    サイズを選んでください<br> <select name="size" id="Select1" onchange="selectboxChange();">
      <option value="select">選択してください</option>
      <option value="1">100×110</option>
      <option value="2">100×135</option>
      <option value="3">100×140</option>
      <option value="4">100×178</option>
      <option value="5">100×200</option>
      <option value="6">150×178</option>
      <option value="7">150×200</option>
    </select><br> オプション<br>
    <table>
      <tr>
        <th>裏地</th>
        <td><input type="radio" name="cloth" value="0">あり<input type="radio" name="cloth" value="1">なし</td>
      </tr>
      <tr>
        <th>タイプ</th>
        <td><input type="radio" name="hook" value="0">レールが隠れる<input type="radio" name="hook" value="1">レールが隠れない</td>
      </tr>
    </table>
    <p>金額</p>
<div id="output"></div>
<br>数量<br>
<input type="number" name="quantity">
    <input type="submit" value="カートに入れる"> <input type="submit" value="購入画面へ進む">
  </form>

</body>

</html>