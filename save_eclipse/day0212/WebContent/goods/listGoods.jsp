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
		width: 150px;
		height: 150px;
		border: 1px solid pink;
		border-radius: 10px;
		display: inline-block;
	}

</style>
</head>
<body>
	<h2>상품목록</h2>
	<hr>
	<a href="insertGoods.do">상품등록</a><br>
	
<br><c:forEach var="g" items="${list }">
		<div>
			<img src="img/${g.fname }" width="100" height="100"><br>
			${g.item }(${g.price })<br>
		</div>
	</c:forEach><br>
	<br>
	
	${pageStr }
	
</body>
</html>