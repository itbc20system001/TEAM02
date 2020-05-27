<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String color = (String) request.getAttribute("color");
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
     switch (selindex) {
       case 1:
         target.innerHTML = "要素1が選択されています。<br/>";
         break;
       case 2:
         target.innerHTML = "要素2が選択されています。<br/>";
         break;
       case 3:
         target.innerHTML = "要素3が選択されています。<br/>";
         break;
       case 4:
         target.innerHTML = "要素4が選択されています。<br/>";
         break;
       case 5:
         target.innerHTML = "要素5が選択されています。<br/>";
         break;
     }
   }
</script>
</head>
<body>
  <p><%=color%>のデザイン一覧
  </p>
<section id="100110">要素１</section>

    <section id="100135">要素2</section>

    <section id="100140">要素3</section>
  <form name="form1" action="/rideau/Cart" method="get">
    <div class="selection-group">
      <input id="a" type="radio" name="rate" value="a"> <label for="a"> <img src="//placehold.it/90x90">
      </label> <input id="b" type="radio" name="rate" value="b"> <label for="b"> <img src="//placehold.it/90x90">
      </label> <input id="c" type="radio" name="rate" value="c"> <label for="c"> <img src="//placehold.it/90x90">
      </label>
    </div>

    サイズを選んでください<br> <select id="Select1" onchange="selectboxChange();">
      <option value="select">選択してください</option>
      <option value="100110">100×110</option>
      <option value="100135">100×135</option>
      <option value="100140">100×140</option>
      <option value="100178">100×178</option>
      <option value="100200">100×200</option>
      <option value="150178">150×178</option>
      <option value="150200">150×200</option>
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

    <input type="submit" value="カートに入れる"> <input type="submit" value="購入画面へ進む">
  </form>

</body>

</html>