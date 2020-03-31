<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>상품 상세보기</h2>
	<hr>
	<a href="listGoods.do">상품목록</a>
	<table border="1">
		<tr>
			<td>상품명</td><td>${g.item }</td>
		</tr>
		
		<tr>
			<td>상품가격</td><td>${g.price }</td>
		</tr>
		
		<tr>
			<td>상품수량</td><td>${g.qty }</td>
		</tr>
		
		<tr>
			<td>상품사진</td><td><img src="img/${g.fname}" width="50" height="50"></td>
		</tr>
		
		<tr>
			<td>상품설명</td>
			<td><textarea rows="10" cols="60" name="detail">${g.detail }</textarea></td>
		</tr>
	
	</table>
	
	<a href="updateGoods.do?no=${g.no }">상품수정</a>
	<a href="deleteGoods.do?no=${g.no }">상품삭제</a>
	
</body>
</html>