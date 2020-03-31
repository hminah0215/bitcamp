<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

// 암호와 암호확인이 일치하는지 나이는 숫자형태

	window.onload = function(){
		document.getElementById("regForm").onsubmit = function(){
			
			var pwd = document.getElementById("pwd").value;
			var pwdCHK = document.getElementById("pwdCHK").value;
			
			if(pwd.length < 8){
				alert("암호는 8자이상이어야 합니다.");
				return false;
			}
			
			if(pwd != pwdCHK){
				alert("암호가 다릅니다. 다시 확인해주세요.");
				return false;
			}
		}
	}
</script>
</head>
<body>
	<h2>회원가입</h2>
	<form id="regForm" method="post" action="joinResult.jsp">
		아이디 : <input id="id" type="text" name="id" minlength="6" required="required"><br>
		암호 : <input id="pwd" type="password" name="pwd" minlength="8" required="required"><br>
		암호확인 : <input id="pwdCHK" type="password" minlength="8" required="required"><br>
		이름 : <input id="name" type="text" name="name" minlength="2" required="required"><br>
		나이 : <input id="age" type="number" name="age" required="required" min="1" max="120"><br>
		<input type="submit" value="가입">
	</form>
</body>
</html>