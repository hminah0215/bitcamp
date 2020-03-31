<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		사원번호 : <input type = "number" name="eno"><br>
		이름 : <input type="text" name="ename"><br>
		직급 : <input type="text" name="job"><br>
		급여 : <input type="number" name="sal"><br>
		커미션 : <input type="number" name="comm"><br>
		관리자번호 : <input type="number" name="mgr"><br>
		부서번호 : <input type="number" name="dno"><br>
		이메일 : <input type="text" name="email"><br>
		주민번호 : <input type="text" name="jumin"><br>
		<input type="submit" value="등록">
		<input type="reset" value="취소">
	</form>
</body>
</html>