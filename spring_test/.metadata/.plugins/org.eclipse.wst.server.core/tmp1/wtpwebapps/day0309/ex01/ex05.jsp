<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		document.getElementById("btnImg").onclick = function(){
			var img = document.createElement("img");
			img.src = "ball1.jpg";
			img.width = 100;
			img.height = 100;
			img.bit = "hello"	
			//bit라는 속성이 없으니 이렇게는 못쓰고 06에 setAttribute하면 쓸수있다.
			
			document.getElementById("result").appendChild(img);
		}
	}
</script>
</head>
<body>
	<div id="result"></div>
	<button id="btnImg">이미지 노드 추가</button>
</body>
</html>