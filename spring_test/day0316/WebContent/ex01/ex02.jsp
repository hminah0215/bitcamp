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
			//open 매개변수 3개 (요청방식, 서블릿(컨트롤러)의 요청이름, 동기방식 false/비동기방식 true)
			request.open("get", "hello.jsp", false);
			request.send();
			var str = request.responseText;
			document.getElementById("msg").innerHTML = str;
		}
	}
//버튼을 누르고 hello가 뜨면 텍스트에리어에 더이상 글이 안써짐, 응답하는 동안 다른일을 할 수 있음
//크롬에서 실행해야 먹는다
</script>
</head>
<body>
	<textarea rows="10" cols="20"></textarea>
	<br>
	<button id="btn">ajax통신</button>
	<h1 id="msg"></h1>
</body>
</html>