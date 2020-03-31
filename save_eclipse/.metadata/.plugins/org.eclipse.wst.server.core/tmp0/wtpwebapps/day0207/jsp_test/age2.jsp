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
		int age = 20;
		if(request.getParameter("age") != null){
			age = Integer.parseInt(request.getParameter("age"));
		}
	%>
	나이는 <%=age %>살 입니다.
	주소는 <%=request.getParameter("addr") %>
	
</body>
</html>