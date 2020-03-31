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
	%>
	이름은 <%=name %><br>
	<jsp:include page="age2.jsp">
		<jsp:param value="25" name="age"/>
		<jsp:param value="seoul" name="addr"/>
	</jsp:include>
</body>
</html>