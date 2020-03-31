<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>상품상세</h2>
	<hr>
	<br>
	상품번호 : ${g.no }<br><br>
	상품명 : ${g.item }<br><br>
	가격 : ${g.price }<br><br>
	수량 : ${g.qty }<br><br>
	<img src="upload/${g.fname }" width="200" height="200"><br>
	상세설명 : <br>
	<textarea rows="10" cols="80" readonly="readonly">${g.detail }</textarea>
	<br><br>
	<a href="updateGoods.do?no=${g.no }">수정</a>&nbsp;
	<a href="deleteGoods.do?no=${g.no }">삭제</a>&nbsp;
	<a href="listGoods.do">상품목록</a>
</body>
</html>