<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="result.jsp?name=유관순">연결</a>
	<hr>
	<form action="result.jsp"> <!-- method를 지우면 그게 get 방식, get이라고 써도 됨  -->
	이름 : <input type="text" name="name">
	<input type="submit" value="확인">
	</form>
	
</body>
</html>