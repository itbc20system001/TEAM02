<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
</head>
<body>
<h1>My Page</h1>
<h2>お知らせ</h2>
<p>現在はありません</p>

<h2>お客様情報</h2>
ユーザーID：${USER.user_id }<br>
Email:${USER.email}<br>
氏名：${USER.user_nm }<br>
住所：${USER.user_address }<br>
<p><a href="/rideau/MyPage?action=change">登録情報変更</a></p>
<h2>注文履歴</h2>
<h3>概要</h3>
注文日：${ORDER_MAIN.order_date }<br>
注文のID：${ORDER_MAIN.order_id }<br>
合計金額：${ORDER_MAIN.total }<br>
<h3>詳細</h3>
柄：${ORDER_DESC.pattern_cd }<br>
サイズ：${ORDER_DESC.size_price_cd }<br>
裏地：${ORDER_DESC.liner_flag }<br>
ホック：${ORDER_DESC.hook_flag }<br>
個数：${ORDER_DESC.quantity }<br>
価格：${ORDER_DESC.price }<br>


</body>
</html>