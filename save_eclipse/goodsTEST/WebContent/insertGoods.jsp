<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="insertGoodsOK.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="no" value="${no}">
	
		<table width="80%">
			<tr>
				<td>상품명</td>
				<td><input type="text" name="item"></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input type="number" name="price"></td>
			</tr>
			<tr>
				<td>수량</td>
				<td><input type="number" name="qty"></td>
			</tr>
			<tr>
				<td>상품설명</td>
				<td><textarea rows="10" cols="80" name="detail"></textarea></td>
			</tr>
			<tr>
				<td>파일</td>
				<td><input type="file" name="fname"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="등록">
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>	
	</form>
</body>
</html>