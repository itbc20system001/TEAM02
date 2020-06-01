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
<title>Rideau | 商品注文</title>
<link rel="stylesheet" href="css/style.css">
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
     switch (selindex){
     case 1:
    	 target.innerHTML = "------<br>";

     <% for(int i=0;i<sizePriceList.size();i++){%>
     case <%=i+1%>:
         target.innerHTML = "<%= sizePriceList.get(i).getPrice()%>円<br>";
         break;
     <% } %>

     }
   }
</script>
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
  <h2>デザインを選んでください</h2>
  <p><%=color%>のデザイン一覧
  </p>

  <form name="form1" action="/rideau/Cart" method="post">
    <div class="selection-group">
    <div class="pattern">
   <% for(Pattern p:patternList){ %>
      <input id="<%=p.getPattern_cd() %>" type="radio" name="pattern" value="<%=p.getPattern_cd() %>" required> <label for="<%= p.getPattern_cd()%>"> <img src=<%= p.getPattern_img() %>>

      </label>
      <%} %>
      </div>
    </div>

    サイズを選んでください<br> <select name="size" id="Select1" onchange="selectboxChange();" required>
      <option disabled selected >選択してください</option>
      <option value="1">幅100×丈110</option>
      <option value="2">幅100×丈135</option>
      <option value="3">幅100×丈140</option>
      <option value="4">幅100×丈178</option>
      <option value="5">幅100×丈200</option>
      <option value="6">幅150×丈178</option>
      <option value="7">幅150×丈200</option>
    </select><br> オプション<br>
    <table>
      <tr>
        <th>裏地</th>
        <td><input type="radio" name="cloth" value="0" required>あり<input type="radio" name="cloth" value="1" required>なし</td>
      </tr>
      <tr>
        <th>タイプ</th>
        <td><input type="radio" name="hook" value="0" required>レールが隠れる<input type="radio" name="hook" value="1" required>レールが隠れない</td>
      </tr>
    </table>
    <p>単価</p>
<div id="output"></div>
<br>数量<br>
<input type="number" min="1" name="quantity" required>
<br>
<div class="submitStyle">
    <input type="submit" value="カートに入れる" class="button">
    </div>
  </form>

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