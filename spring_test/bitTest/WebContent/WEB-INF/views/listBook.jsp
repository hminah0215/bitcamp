<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<h2>도서목록</h2>
	<hr>
	<a href="insertBook.do">도서등록</a><br><br>
	
	<form action="listBook.do">
		<select name="searchColumn">
			<option value="bookid">도서번호</option>
			<option value="bookname">도서명</option>
			<option value="publisher">출판사</option>
			<option value="price">가격</option>
		</select> : <input type="text" name="keyword">
		<input type="submit" value="검색"><br><br>
	</form>
	

	<table border="1"  width="60%">
		<tr>
			<td><a href="listBook.do?sortColumn=bookid">도서번호</a></td>
			<td><a href="listBook.do?sortColumn=bookname">도서명</a></td>
			<td><a href="listBook.do?sortColumn=publisher">출판사</a></td>
			<td><a href="listBook.do?sortColumn=price">가격</a></td>
		</tr>
		
		<c:forEach var="b" items="${list }">
		<tr>
			<td>${b.bookid }</td>
			<td><a href="detailBook.do?bookid=${b.bookid }">${b.bookname }</a></td>
			<td>${b.publisher }</td>
			<td>${b.price }</td>
		</tr>
		</c:forEach>

	</table>
	
</body>
</html>