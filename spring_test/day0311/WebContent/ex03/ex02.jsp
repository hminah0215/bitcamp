<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		document.getElementById("myform").onsubmit	= function(){
			var pwd = document.getElementById("pwd").value;
			var pwdCHK = document.getElementById("pwdCHK").value;
			
			if(pwd != pwdCHK || pwd == ""){
				alert("암호를 확인해주세요")
				return false;
			}
			
		}
	}
</script>
</head>
<body>
	<form id="myform" action="hello.jsp" method="post">
		암호 : <input id="pwd" type="password"><br>
		암호확인 : <input id="pwdCHK" type="password"><br>
		<input type="submit" value="확인">
	</form>
</body>
</html>