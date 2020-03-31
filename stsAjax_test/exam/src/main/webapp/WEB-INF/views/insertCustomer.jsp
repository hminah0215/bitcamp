<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>고객 등록 페이지</h2>
	<hr>
	<a href="listCustomer.do">고객목록</a>
	
	<form action="insertCustomer.do" method="post">
	고객번호 : <input type="number" name="custid" ><br>
	고객이름 : <input type="text" name="name" ><br>
	고객주소 : <input type="text" name="address" ><br>
	전화번호 : <input type="text" name="phone"><br>
	<input type="submit" value="등록">
	<input type="reset" value="취소">
	</form>
</body>
</html>