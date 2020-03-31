<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>게시글 수정</h2>
	<hr>
	<form action="updateBoard.do" method="post" enctype="multipart/form-data">
		
		<input type="hidden" name="no"	value="${up.no }">
		<input type="hidden" name="fname"	value="${up.fname }">
	<table border="1">
			
		<tr>
			<td>제목</td><td> <input type="text" name="title" value="${up.title }"></td>
		</tr>
		
		<tr>
			<td>비밀번호</td><td> <input type="password" name="pwd"></td>
		</tr>
		
		<tr>
			<td>파일</td><td><input type="file" name="uploadFile" value="${up.fname }"></td>
			<td><img src="upload/${up.fname}" width="100" height="100"></td>
		</tr>
		
		<tr>
			<td>내용</td>
			<td><textarea rows="10" cols="70" name="content" >${up.content }</textarea></td>
		</tr>
	
	</table>
		<br>
		<input type="submit" value="수정">
		<input type="reset" value="취소">
	</form>
</body>
</html>