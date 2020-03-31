<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#msg{color: red;}
</style>
</head>
<body>
	<h2>고객등록</h2>
	<hr>
	<form action="insertCustomer.do" method="post">
		고객번호 : <input type="number" name="custid"><br>
		고객이름 : <input type="text" name="name"><br>
		고객주소 : <input type="text" name="address"><br>
		전화번호 : <input type="text" name="phone"><br>
		<input type="submit" value="등록">
		<input type="reset" value="취소">
	</form>
	<div id="msg">${msg }</div>
</body>
</html>