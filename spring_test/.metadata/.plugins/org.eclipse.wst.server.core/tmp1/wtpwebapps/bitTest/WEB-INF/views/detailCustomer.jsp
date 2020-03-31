<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>고객 상세정보</h2>
	<hr> 
	고객번호 : ${c.custid }<br><br>
	고객이름 : ${c.name }<br><br>
	고객주소 : ${c.address }<br><br>
	전화번호 : ${c.phone }<br><br>
	<a href="updateCustomer.do?custid=${c.custid }">고객수정</a>
	<a href="deleteCustomer.do?custid=${c.custid }">고객삭제</a>
</body>
</html>