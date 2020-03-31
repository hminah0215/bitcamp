<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>상품수정</h2>
	<hr>
	<form action="updateGoods.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="fname"	value="${up.fname }">
		<input type="hidden" name="no"	value="${up.no }">
	<table border="1">
		<tr>
			<td>상품명</td><td> <input type="text" name="item" value="${up.item }"></td>
		</tr>
		
		<tr>
			<td>가격</td><td> <input type="number" name="price" value="${up.price }"></td>
		</tr>
		
		<tr>
			<td>수량</td><td> <input type="number" name="qty" value="${up.qty }"></td>
		</tr>
		
		<tr>
			<td>파일</td><td><input type="file" name="uploadFile" value="${up.fname }"></td><br>
			<td><img src="img/${up.fname}" width="100" height="100"></td>
		</tr>
		
		<tr>
			<td>상세설명</td>
			<td><textarea rows="10" cols="70" name="detail">${up.detail }</textarea></td>
		</tr>
	
	</table>
		<input type="submit" value="수정">
		<input type="reset" value="취소">
	</form>
</body>
</html>