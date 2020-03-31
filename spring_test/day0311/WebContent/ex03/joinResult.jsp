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
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		int age = Integer.parseInt(request.getParameter("age"));
	%>
	
	<h2>가입된 정보는 다음과 같습니다.</h2>
	
	아이디 : <%=id %><br>
	암호 : <%=pwd %><br>
	이름 : <%=name %><br>
	나이 : <%=age %><br>
</body>
</html>