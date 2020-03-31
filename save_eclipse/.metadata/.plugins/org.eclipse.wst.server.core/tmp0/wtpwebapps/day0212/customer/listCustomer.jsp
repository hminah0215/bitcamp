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
<h2>고객목록</h2>
	<table border="1" width="60%">
		<tr>
			<td>고객번호</td>
			<td>고객명</td>
			<td>주소</td>
			<td>전화번호</td>
		</tr>
		
		<c:forEach var="a" items="${list }">
		<tr>
			<td>${a.custid }</td>
			<td>${a.name }</td>
			<td>${a.address }</td>
			<td>${a.phone }</td>
		</tr>
		
		</c:forEach>
	
	</table>

</body>
</html>