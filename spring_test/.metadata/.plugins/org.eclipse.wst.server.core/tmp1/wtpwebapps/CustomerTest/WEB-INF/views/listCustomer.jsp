<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>고객목록</h2>
	<a href="insertCustomer.do">고객등록</a>
	
	<table border="1" class="table" style="text-align: center;">
		<tr class="table-primary">
			<td>고객번호</td>
			<td>이름</td>
		</tr>
		
	<c:forEach var="cu" items="${list }">
		<tr class="table-info">
			<td>${cu.custid }</td>
			<td>
				<a href="detailCustomer.do?custid=${cu.custid }">${cu.name }</a>
			</td>
		</tr>
		
		</c:forEach>
	</table>
</body>
</html>