<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>お支払い</title>
</head>
<body>
<h1>クレジットカード情報入力</h1>
<form acction = "/Rideau/OrderConfirmation" method = "GET">
<label>クレジットカード番号：</label>
<input type = "tel" name="Creditcard" size="16" maxlength="16"><br>
<label>クレジットカード有効期限</label>
<select name = month>
<option value="January">1</option>
<option value="February">2</option>
<option value="March">3</option>
<option value="April">4</option>
<option value="May">5</option>
<option value="June">6</option>
<option value="July">7</option>
<option value="August">8</option>
<option value="September">9</option>
<option value="Octorber">10</option>
<option value="November">11</option>
<option value="December">12</option>
</select>
<select name = year>
<option value="2020">2020</option>
<option value="2021">2021</option>
<option value="2022">2022</option>
<option value="2023">2023</option>
<option value="2024">2024</option>
<option value="2025">2025</option>
<option value="2026">2026</option>
<option value="2027">2027</option>
<option value="2028">2028</option>
<option value="2029">2029</option>
<option value="2030">2030</option>
</select><br>

<label>セキュリティコード</label>
<input type = "tel" name="Security" size="3" maxlength="3"><br>
<label>名義</label>
<input type="text">
</form>
<a href ="/Rideau/OrderConfirmation.jsp">完了（注文内容確認へ）</a><br>
<a href = "/Rideau/Cart.jsp">カートへ</a><br>



</body>
</html>