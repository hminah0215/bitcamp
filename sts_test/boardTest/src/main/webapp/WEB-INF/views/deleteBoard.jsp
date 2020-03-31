<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${msg }
	<form action="deleteBoard.do" method="post">
	<input type="hidden" name="no" value="${no.no }" >
	
	암호 입력 : <input type="password" name="pwd">
	<input type="submit" value="삭제">
	<a href="listBoard.do">취소</a>
</form>
	
</body>
</html>