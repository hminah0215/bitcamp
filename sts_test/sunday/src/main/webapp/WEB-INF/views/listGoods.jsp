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
	<h2>상품 리스트</h2>
	<hr>
	<a href="insertGoods.do">상품등록</a><br>
	<table border="1" width="70%">
		<tr>
			<td>상품번호</td>
			<td>상품명</td>
			<td>가격</td>
			<td>수량</td>
			<td>사진</td>
			<td>상세설명</td>
		</tr>
		<c:forEach var="g" items="${list}">
		<tr>
			<td>${g.no }</td>
			<td>${g.item }</td>
			<td>${g.price }</td>
			<td>${g.qty }</td>
			<td>${g.fname }</td>
			<td>${g.detail }</td>
		</tr>
		</c:forEach>
		
	</table>
	
</body>
</html>