<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String ip = request.getRemoteAddr();
	System.out.println("요청한 고객의ip주소 : " + ip);
	%>
	반갑습니다.
	<%=ip %>에서 접속하였습니다.
	<hr>
</body>
</html>