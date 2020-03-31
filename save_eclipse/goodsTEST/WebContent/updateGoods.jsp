<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>상품 수정</h2>
	<hr>
	<form action="updateGoodsOK.do" method="post" enctype="multipart/form-data">
	<input type = "hidden" name="no" value="${g.no }">
	<table width = "80%">
		<tr>
			<td>상품명</td>
			<td><input type="text" name="item" value="${g.item }"></td>
		</tr> 
		<tr>
			<td>가격</td>
			<td><input type="number" name="price" value="${g.price }"></td>
		</tr>
		<tr>
			<td>수량</td>
			<td><input type="number" name="qty" value="${g.qty }"></td>
		</tr>
		<tr>
			<td>상품사진</td>
			<td><img src="upload/${g.fname }" width="50" height="50"><br>
			<input type="file" name="fname"></td>
		</tr>
		<tr>
			<td>상품설명</td>
			<td><textarea rows="10" cols="80" name="detail">${g.detail }</textarea></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="수정">
							<input type="reset" value="취소">
		</tr>
	</table>
	
	</form>
</body>
</html>