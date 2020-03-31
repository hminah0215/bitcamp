<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> ${msg }</h2>
	<hr>
	<form action="all.do" method="post">
	<input type="hidden" value="${op }" name="op">
	${op }
	
	고객번호 : <input type="text" value="${vo.custid }" name="custid"><br>
	고객이름 : <input type="text" value="${vo.name }" name="name"><br>
	고객주소 : <input type="text" value="${vo.address}" name="address"><br>
	전화번호 : <input type="text" value="${vo.phone}" name="phone"><br>
	<input type="submit" value="${msg }">
	</form>
</body>
</html>