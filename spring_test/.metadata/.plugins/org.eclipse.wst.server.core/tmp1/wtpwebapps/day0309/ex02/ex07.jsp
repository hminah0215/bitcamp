<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		document.getElementById("btnRemove").onclick = function(){
			var img = document.getElementById("img");
			document.body.removeChild(img);
		}
	}
</script>
</head>
<body>
	<img src="stock1.jpg">
	<img src="stock2.jpg">
	<img src="stock3.jpg" id="img">
	<img src="stock4.jpg">
	<button id="btnRemove">3번째 스타킹 지우기</button>
</body>
</html>