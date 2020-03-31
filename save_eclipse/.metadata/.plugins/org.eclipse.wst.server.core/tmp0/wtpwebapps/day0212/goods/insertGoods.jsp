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
	<form action="insertGoods.do" method="post" enctype="multipart/form-data">
		상품명 : <input type ="text" name="item"><br><br>
		가격 : <input type ="number" name="price"><br><br>
		수량 : <input type ="number" name="qty"><br><br>
		사진 : <input type ="file" name="fname"><br><br>
		상품설명 : <br>
		<textarea rows="10" cols="80" name="detail"></textarea><br><br>
		<input type="submit" value="등록">
		<input type="reset" value="취소">
	
	</form>
</body>
</html>