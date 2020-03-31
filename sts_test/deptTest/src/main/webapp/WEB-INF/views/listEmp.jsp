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
	<h2>사원목록</h2>
	<hr>
		<form action="listEmp.do">
		<select name="searchColumn">
			<option value="mname">관리자명</option>
			<option value="job">직책</option>
			<option value="dloc">근무위치</option>
			<option value="dname">부서명</option>
		</select> : <input type="text" name="keyword">
		<input type="submit" value="검색"><br><br>
	</form>

	<table border="1">
		<tr>
			<td><a href=listEmp.do?sortColumn=eno>사원번호</a></td>
			<td><a href=listEmp.do?sortColumn=ename>사원명</a></td>
			<td><a href=listEmp.do?sortColumn=dname>부서명</a></td>
			<td><a href=listEmp.do?sortColumn=job>직급</a></td>
			<td><a href=listEmp.do?sortColumn=mname>관리자명</a></td>
			<td><a href=listEmp.do?sortColumn=sal>급여</a></td>
			<td><a href=listEmp.do?sortColumn=comm>수당</a></td>
			<td><a href=listEmp.do?sortColumn=total>실수령액</a></td>
			<td><a href=listEmp.do?sortColumn=dloc>근무위치</a></td>
			<td><a href=listEmp.do?sortColumn=hiredate>입사일</a></td>
		</tr>
	
		<c:forEach var="e" items="${list }">
		<tr>
			<td>${e.eno}</td>
			<td>${e.ename}</td>
			<td>${e.dname}</td>
			<td>${e.job}</td>
			<td>${e.mname}</td>
			<td>${e.sal}</td>
			<td>${e.comm}</td>
			<td>${e.total}</td>
			<td>${e.dloc}</td>
			<td>${e.hiredate}</td>
		</tr>
		</c:forEach>
		
	</table>
</body>
</html>