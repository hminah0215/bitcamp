<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>고객 정보 수정</h2>
	<hr>
	<a href="listCustomer.do">고객목록</a>
	
	<form action="updateCustomer.do" method="post">
	고객번호 : <input type="number" name="custid" value="${up.custid }" readonly="readonly"><br>
	고객이름 : <input type="text" name="name" value="${up.name }"><br>
	고객주소 : <input type="text" name="address" value="${up.address }"><br>
	전화번호 : <input type="text" name="phone"  value="${up.phone }"><br>
	
	<input type="submit" value="수정">
	<input type="reset" value="취소">
	</form>
</body>
</html>