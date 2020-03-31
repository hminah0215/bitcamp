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
	<h2>사원등록</h2>
	re : ${re }
	<hr>
	<form action="insertEmp.do" method="post">
	<table border="1">

	<tr>
		<td>사원이름</td><td> <input type="text" name="ename"></td>
	</tr>
	
	<tr>
		<td>직급</td><td> <input type="text" name="job"></td>
	</tr>
	
	<tr>
		<td>급여</td><td> <input type="number" name="sal"></td>
	</tr>
	
	<tr>
		<td>수당</td><td> <input type="number" name="comm"></td>
	</tr>
	
	<tr>
		<td>관리자명</td>
		<td><select name="mgr">
			<c:forEach var="m" items="${mList }">
				<option value="${m.eno}">${m.ename }(${m.job}, ${m.dno })</option>
			</c:forEach>
		</select></td>
	</tr>
	
	<tr>
		<td>소속부서</td>
		<td><select name="dno">
			<c:forEach var="d" items="${dList }">
				<option value="${d.dno}">${d.dname }(${d.dloc })</option>
			</c:forEach>
		</select></td>
	</tr>
	
	<tr>
		<td>이메일</td><td> <input type="email" name="email"></td>
	</tr>
	
	<tr>
		<td>주민번호</td><td> <input type="text" name="jumin"></td>
	</tr>
	
</table>

		<input type="submit" value="등록">
		<input type="reset" value="취소">
		</form>
</body>
</html>