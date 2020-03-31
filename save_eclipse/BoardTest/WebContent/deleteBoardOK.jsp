<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${re > 0 }">
	<!--	<jsp:forward page="listBoard.do"/>  이거나 아래거 둘중 아무거나 써도 됨 -->	
		<c:redirect url="listBoard.do"/>
	</c:if>
	
</body>
</html>