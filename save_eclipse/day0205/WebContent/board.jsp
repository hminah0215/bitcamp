<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>게시판</h2>
	<hr>
	<form action="boardOK.jsp" method ="post" enctype="multipart/form-data">
	<table width="70%">
	<tr>
		<td>제목</td>
		<td><input type="text" name="title" required="required"></td>
	</tr>
	<tr>
		<td>작성자</td>
		<td><input type="text" name="writer" required="required"></td>
	</tr>
	<tr>
		<td>암호</td>
		<td><input type="text" name="pwd" required="required"></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><textarea rows="10" cols="80" name="content"></textarea></td>
	</tr>
	<tr>
		<td>사진첨부</td>
		<td><input type="file" name="fname"></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="등록"></td>
	</tr>
	</table>
	
	</form>
</body>
</html>