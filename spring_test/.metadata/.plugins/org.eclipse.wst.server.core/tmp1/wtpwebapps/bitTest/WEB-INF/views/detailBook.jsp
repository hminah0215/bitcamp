<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>도서 상세정보</h2>
	<hr> 
	도서번호 : ${b.bookid }<br><br>
	도서명 : ${b.bookname }<br><br>
	출판사 : ${b.publisher }<br><br>
	가격: ${b.price }<br><br>
	<a href="updateBook.do?bookid=${b.bookid }">도서수정</a>
	<a href="deleteBook.do?bookid=${b.bookid }">도서삭제</a>
</body>
</html>