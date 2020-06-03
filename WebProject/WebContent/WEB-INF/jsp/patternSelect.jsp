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
  <h1>デザインを選んでください</h1>
  <div class="contents">
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
    <div class="contents">
    サイズを選んでください<br>
    <div class="cp_ipselect cp_sl02">
    <select name="size" id="Select1" onchange="selectboxChange();" required>
      <option value="" disabled selected >選択してください</option>
      <option value="1">幅100×丈110</option>
      <option value="2">幅100×丈135</option>
      <option value="3">幅100×丈140</option>
      <option value="4">幅100×丈178</option>
      <option value="5">幅100×丈200</option>
      <option value="6">幅150×丈178</option>
      <option value="7">幅150×丈200</option>
    </select><br>
    </div>
    </div>
    <div class="contents">
    オプション<br>
    <table>
      <tr>
        <th>裏地</th>
        <td><label><input type="radio" name="cloth" value="0" required>あり</label><br><label><input type="radio" name="cloth" value="1" required>なし</label></td>
      </tr>
      <tr>
        <th>タイプ</th>
        <td><label><input type="radio" name="hook" value="0" required>レールが隠れる</label><br><label><input type="radio" name="hook" value="1" required>レールが隠れない</label></td>
      </tr>
    </table>
    </div>
    <div class="contents">
    <p>単価</p>
<div id="output" class="price"></div>
<br>数量<br>
<div class ="submitstyle">
<input type="number" min="1" max="10" name="quantity" required>
</div>
</div>
<br>
<div class="submitStyle">
    <input type="submit" value="カートに入れる" class="button">
    </div>
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