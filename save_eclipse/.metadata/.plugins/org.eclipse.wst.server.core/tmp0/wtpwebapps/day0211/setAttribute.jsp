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
	request.setAttribute("member1", "김찬휘");
	session.setAttribute("member2", "이수인");
	application.setAttribute("member3", "홍수지");
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("getAttribute.jsp");
	dispatcher.forward(request, response);
%>

<a href="getAttribute.jsp">설정값 확인 </a>

</body>
</html>

