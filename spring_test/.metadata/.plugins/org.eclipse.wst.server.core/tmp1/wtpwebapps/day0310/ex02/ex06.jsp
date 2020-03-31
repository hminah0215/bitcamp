<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		var timer;
		var pro = function(){
			
			timer = setInterval(function(){
				var today = new Date();
				document.getElementById("display").innerHTML = today;
			} , 1000);
		}
		
		pro();
		
		document.getElementById("btnStop").onclick = function(){
			clearInterval(timer);
		}
		
		document.getElementById("btnStart").onclick = function(){
			pro();
		}

	}
</script>
</head>
<body>
	<h1>현재시간</h1>
	<h2 id="display"></h2>
	<button id="btnStart">시작</button>
	<button id="btnStop">중지</button>
</body>
</html>