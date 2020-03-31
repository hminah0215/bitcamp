<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>${head }</h2>
	<form action="insertBoardOK.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="no" value="${no }">
	
		<table width="80%">
			<tr>
				<td>글제목</td>
				<td><input type="text" name="title" value=${title }> </td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="writer"> </td>
			</tr>
			<tr>
				<td>암호</td>
				<td><input type="password" name="pwd"> </td>
			</tr>
			<tr>
				<td>글내용</td>
				<td><textarea rows="10" cols="80" name="content"></textarea> </td>
			</tr>
			<tr>
				<td>파일</td>
				<td><input type="file" name="fname"> </td>
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