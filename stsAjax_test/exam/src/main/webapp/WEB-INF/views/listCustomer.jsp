<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#th{background: skyblue;}
</style>
</head>
<body>
	<h2>고객 목록</h2>
	<hr> 
	<a href="all.do?custid=0">고객등록</a>
	<br>
	<table border="1" width="60%">
		<tr id="th">
			<td>고객번호</td>
			<td>고객이름</td>
		</tr>
		<c:forEach var="c" items="${list }">
			<tr>
				<td>${c.custid }</td>
				<td><a href="detailCustomer.do?custid=${c.custid }">${c.name }</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>