<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>고객 상세 정보</h2>
	<hr>
	<a href="listCustomer.do">고객목록</a>
	
	<table border="1" width="60%">
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
			<td>전화번호</td><td>${detail.phone }</td>
		</tr>
	</table>
	<br>
	<a href="updateCustomer.do?custid=${detail.custid }">수정</a>
	<a href="deleteCustomer.do?custid=${detail.custid }">삭제</a>
</body>
</html>