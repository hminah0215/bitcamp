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
		String data = "월요일에 아프면 돼요? 안돼요?";
	%>
	<%=data %>
	<hr>
	<!-- 
	<jsp:include page="a.jsp"/> 
	-->
	
	<%@include file="a.jsp" %>
</body>
</html>