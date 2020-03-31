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
	<h2>${title }</h2>
	<hr>
	<a href="insertGoods.do">상품등록</a><br><br>
	
	<form action="listGoods.do">
		<select name="searchColumn">
			<option value="no">상품번호</option>
			<option value="item">상품이름</option>
			<option value="price">상품가격</option>
			<option value="qty">상품수량</option>
		</select> : <input type="text" name="keyword">
		<input type="submit" value="검색"><br><br>
	</form>
	<table border="1">
		<tr>
			<td><a href=listGoods.do?sortColumn=no>상품번호</a></td>
			<td><a href=listGoods.do?sortColumn=item>상품이름</a></td>
			<td><a href=listGoods.do?sortColumn=price>상품가격</a></td>
			<td><a href=listGoods.do?sortColumn=qty>상품수량</a></td>
		</tr>
		
		<c:forEach var="g" items="${list }">
		<tr>
			<td>${g.no }</td>
			<td><a href="detailGoods.do?no=${g.no }">${g.item }</a></td>
			<td>${g.price }</td>
			<td>${g.qty }</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>