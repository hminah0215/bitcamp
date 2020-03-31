<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		document.getElementById("btn").onclick = function() {
			var request = new XMLHttpRequest();
			request.open("get","hello.jsp",false);
			//실제 ajax 통신을 요청하는 메소드 send
			request.send();
			//서버가 응답한 데이터를 받아옴
			var str = request.responseText;
			//alert(str);
			document.getElementById("msg").innerHTML = str;
		}
	}
</script>
</head>
<body>
	<button id="btn">ajax 통신</button>
	<h2 id="msg"></h2>
</body>
</html>