<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div{
		width: 200px;
		height: 200px;
		display: inline-block;
		border: 5px solid orange;
		border-radius: 15px;
	}
</style>
</head>
<body>
	<h2>상품 목록</h2>
	<a href="insertGoods.do">상품 등록</a>
	<br>
	<br>
	<c:forEach var="g" items="${list }">
		<a href="detailGoods.do?no=${g.no }">
			<div>
				<img src="upload/${g.fname }" width="150" height="150"><br>
				&nbsp;&nbsp;<b>${g.item }</b>(${g.price })
			</div>
		</a>
	</c:forEach>
	<br>
	<br>
	<br>
	<c:forEach var="i" begin="1" end="${totalPage }">
		<a href="listGoods.do?pageNUM=${i }">${i }</a>&nbsp;&nbsp;
	
	</c:forEach>
	
</body>
</html>