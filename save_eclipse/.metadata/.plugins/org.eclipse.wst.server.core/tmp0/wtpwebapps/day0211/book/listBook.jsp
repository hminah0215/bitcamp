<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>도서목록</h2>
	<a href="insertBook.do">도서등록</a>
	<table border="1" width="60%">
		<tr>
			<td>도서번호</td>
			<td>도서명</td>
			<td>출판사</td>
			<td>가격</td>
			<td>&nbsp;</td>
		</tr>
		
		<c:forEach var="b" items="${list }">
		<tr>
			<td>${b.bookid }</td>
			<td>${b.bookname }</td>
			<td>${b.publisher }</td>
			<td>${b.price }</td>
			<td>
				<a href="updateBook.do?bookid=${b.bookid }">수정</a>
				<a href="deleteBook.do?bookid=${b.bookid }">삭제</a>
			</td>
		</tr>
		
		</c:forEach>
	
	</table>
</body>
</html>