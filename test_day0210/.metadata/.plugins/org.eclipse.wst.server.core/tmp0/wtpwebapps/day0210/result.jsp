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
		//request.setCharacterEncoding("UTF-8");
		//포스트 방식일때 인코딩이 필요. 
		String name = request.getParameter("name");
	%>
	이름은 <%=name %> 입니다. 
</body>
</html>