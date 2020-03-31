<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>게시글 상세보기</h2>
	<hr>
	<a href="listBoard.do">게시글 목록</a>
	<table border="1">
		<tr>
			<td>글번호</td><td>${b.no }</td>
		</tr>
		
		<tr>
			<td>제목</td><td>${b.title }</td>
		</tr>
		
		<tr>
			<td>작성자</td><td>${b.writer }</td>
		</tr>
		
		<tr>
			<td>조회수</td><td>${b.hit}</td>
		</tr>
		
		<tr>
			<td>ip주소</td><td>${b.ip }</td>
		</tr>
		<tr>
			<td>첨부파일</td><td><img src="upload/${b.fname}" width="50" height="50">(${b.fname })</td>
		</tr>
		
		<tr>
			<td>글내용</td>
			<td><textarea rows="10" cols="60" name="content">${b.content }</textarea></td>
		</tr>
	
	</table>
	
	<a href="updateBoard.do?no=${b.no }">게시글 수정</a>
	<a href="deleteBoard.do?no=${b.no }">게시글 삭제</a>
	<a href="insertBoard.do?no=${b.no }">답글</a>
	
	
</body>
</html>