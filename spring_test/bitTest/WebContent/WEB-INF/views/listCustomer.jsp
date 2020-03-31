<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원목록</h2>
	<hr>
	<div>${msg }</div>
	<a href="insertCustomer.do">회원등록</a><br><br>
	
	<form action="listCustomer.do">
		<select name="searchColumn">
			<option value="custid">고객번호</option>
			<option value="name">고객이름</option>
			<option value="address">고객주소</option>
			<option value="phone">고객전화</option>
		</select> : <input type="text" name="keyword">
		<input type="submit" value="검색"><br><br>
	</form>
	
	<table border="1" width="60%">
		<tr>
			<td><a href="listCustomer.do?sortColumn=custid"> 고객번호 </a></td>
			<td><a href="listCustomer.do?sortColumn=name"> 고객이름 </a></td>
			<td><a href="listCustomer.do?sortColumn=address"> 고객주소 </a></td>
			<td><a href="listCustomer.do?sortColumn=phone"> 고객전화 </a></td>
		</tr>
		
		<c:forEach var="c" items="${list }">
		<tr>
			<td>${c.custid }</td>
			<td><a href="detailCustomer.do?custid=${c.custid }">${c.name }</a></td>
			<td>${c.address }</td>
			<td>${c.phone }</td>
		</tr>
		</c:forEach>
	
	</table>
	
	<a href="listCustomer.do?all=1">모두출력</a>
</body>
</html>