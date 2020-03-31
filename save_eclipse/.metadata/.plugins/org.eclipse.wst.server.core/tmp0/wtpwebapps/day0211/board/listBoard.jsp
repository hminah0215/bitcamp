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
	<h2>게시물 목록</h2>
	<a href="insertBoard.do">게시글 등록</a>
	<table border="1" width="60%">
	<tr>
			<td>글번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>조회수</td>
			<td>등록일</td>
			<td>ip주소</td>
		</tr>
		
		<c:forEach var="b" items="${list }">
		<tr>
			<td><a href="detailBoard.do?no=${b.no }">${b.no }</a></td>
			<td>${b.title }</td>
			<td>${b.writer }</td>
			<td>${b.hit }</td>
			<td>${b.regdate }</td>
			<td>${b.ip }</td>
		</tr>
		
		</c:forEach>
	
	</table>
	
	<!-- 페이징처리 -->
		<!-- 1부터 totalPage까지 나온도록  -->

	<c:if test="${startPage > 1 }">
	<a href="listBoard.do?pageNUM=${startPage-1 }">이전</a>
	</c:if>
	
	<c:forEach var="i" begin="${startPage }" end="${endPage }">	
		<a href="listBoard.do?pageNUM=${i }">${i }</a>
	</c:forEach>
	
	<c:if test="${endPage < totalPage }">
	<a href="listBoard.do?pageNUM=${endPage+1 }">다음</a>
	</c:if>
	

	
</body>
</html>