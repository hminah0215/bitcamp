<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원목록</h2>
	<table border="1" width="60%">
		<tr>
			<td>이름</td>
			<td>나이</td>
			<td>주소</td>
		</tr>

		<c:forEach var="m" items="${list }">
			<tr>
				<td>${m.name }</td>
				<td>${m.age }</td>
				<td>${m.addr }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>