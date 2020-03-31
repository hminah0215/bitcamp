<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
//다음의 조건에 맞지않으면 서버로 이동하지 않도록 기본이벤트를 제거하도록 합니다. 
//아이디는 6자이상, 이름은 2글자이상, 암호는 8자이상, 암호와 암호확인이 일치하는지 나이는 숫자형태

	window.onload = function(){
		document.getElementById("regForm").onsubmit = function(){
			var id = document.getElementById("id").value;
			var pwd = document.getElementById("pwd").value;
			var pwdCHK = document.getElementById("pwdCHK").value;
			var name = document.getElementById("name").value;
			var age = document.getElementById("age").value;
					
			if(id.length < 6 ){
				alert("아이디는 6자 이상이어야 합니다.");
				return false;
			}
			
			if(pwd.length < 8){
				alert("암호는 8자이상이어야 합니다.");
				return false;
			}
			
			if(pwd != pwdCHK){
				alert("암호가 다릅니다. 다시 확인해주세요.");
				return false;
			}
			
			if(name < 2){
				alert("이름은 두글자 이상이어야합니다.");
				return false;
			}
			
			if(isNaN(age) || age ==""  ){
				alert("나이는 숫자로 입력해야합니다.");
				return false;
			}
			
		}
	}
</script>
</head>
<body>
	<h2>회원가입</h2>
	<form id="regForm" method="post" action="joinResult.jsp">
		아이디 : <input id="id" type="text" name="id"><br>
		암호 : <input id="pwd" type="password" name="pwd"><br>
		암호확인 : <input id="pwdCHK" type="password"><br>
		이름 : <input id="name" type="text" name="name"><br>
		나이 : <input id="age" type="text" name="age"><br>
		<input type="submit" value="가입">
	</form>
</body>
</html>