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
	<h2>상품목록</h2>
	<a href="insertGoods.do">상품등록</a>
	<hr>
	<form action="listGoods.do">
	
	<select	name="combo">
		<option value="no">상품번호
		<option value="item">상품명
		<option value="price">가격
	</select>
	
	<input type="text" name="search" >
	<input type="submit" value="검색">	
	<!-- submit 클릭했을때 안에있는 값을 그대로 가지고 감, 이때 id는 무조건 있어야 한다. -->
	</form>
	<br>
	<table border="1" width="60%">
		<tr>
			<td>상품번호</td>
			<td>상품명</td>
		</tr>
		<c:forEach var="g" items="${list }">
		<tr>
			<td>${g.no }</td>
			<td><a href="detailGoods.do?no=${g.no }">${g.item }</a></td>
			
		</tr>
		</c:forEach>
	</table>

</body>
</html>