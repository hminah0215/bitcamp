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
			<td>상품명</td><td>${detail.item }</td>
		</tr>
		
		<tr>
			<td>상품가격</td><td>${detail.price }</td>
		</tr>
		
		<tr>
			<td>상품수량</td><td>${detail.qty }</td>
		</tr>
		
		<tr>
			<td>상품사진</td><td><img src="img/${detail.fname }" width="100" height="100"></td>
		</tr>
		
		<tr>
			<td>상품설명</td>
			<td><textarea rows="10" cols="60" name="detail">${detail.detail }</textarea></td>
		</tr>
	</table>
	<a href="deleteGoods.do?no=${detail.no }">상품삭제</a>
</body>
</html>