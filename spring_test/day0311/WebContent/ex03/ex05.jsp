<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#div{
		background: coral;
		width: 500px;
		height: 500px;
	}
</style>

<script type="text/javascript">
	window.onload = function(){
		document.getElementById("div").onclick = function(){
			alert("레이어를 눌렀어요");
		}
		document.getElementById("btn").onclick = function(){
			alert("버튼을 눌렀어요");
			var event = window.event;
			
			//부모노드로의 이벤트 전파를 막아주세요.
			event.stopPropagation();
		}
	}
</script>
</head>
<body>
	<div id="div">
		레이어입니다.<br>
		<button id="btn">눌러봐</button>
	</div>
</body>
</html>