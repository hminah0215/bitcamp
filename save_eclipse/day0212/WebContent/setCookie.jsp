<%@page import="java.net.URLEncoder"%>
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
		String name ="홍길동";
		name = URLEncoder.encode(name, "utf-8");
		
		Cookie c = new Cookie("name",name);
		response.addCookie(c);
	%>
	쿠키를 기록하였습니다.
	<a href="getCookie.jsp">쿠키확인</a>
</body>
</html>