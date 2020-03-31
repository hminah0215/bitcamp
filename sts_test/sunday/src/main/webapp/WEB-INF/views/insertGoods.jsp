<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>상품등록</h2>
	<hr>
	<a href="listGoods.do">상품목록</a><br>
	<form action="insertGoods.do" method="post">
	<table border="1" width="70%">
		<tr>
			<td>상품번호</td><td> <input type="number" name="no"></td>
		</tr>
		
		<tr>
			<td>상품명</td><td> <input type="text" name="item"></td>
		</tr>
		
		<tr>
			<td>가격</td><td> <input type="number" name="price"></td>
		</tr>
		
		<tr>
			<td>수량</td><td> <input type="number" name="qty"></td>
		</tr>
		
		<tr>
			<td>파일</td><td><input type="text" name="fname"></td>
		</tr>
		
		<tr>
			<td>상세설명</td>
			<td><textarea rows="10" cols="70" name="detail"></textarea></td>
		</tr>
	
	</table>
		<input type="submit" value="등록">
		<input type="reset" value="취소">
	</form>
</body>
</html>