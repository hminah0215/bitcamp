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
	<a href="CustomerList.do">고객 목록</a>
	<br>
	<table border="1">
		<tr>
			<td>고객번호</td><td>${detail.custid }</td>
		</tr>
		<tr>
			<td>고객이름</td><td>${detail.name }</td>	
		</tr>
		<tr>
			<td>고객주소</td><td>${detail.address }</td>	
		</tr>
		<tr>
			<td>고객전화</td><td>${detail.phone }</td>
		</tr>
	</table>
	<a href="deleteCustomer.do?custid=${detail.custid }">고객삭제</a>
	<a href="updateCustomer.do?custid=${detail.custid }">고객수정</a>
</body>
</html>