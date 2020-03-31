<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		document.getElementById("btn").onclick = function(){
			var a = 10;
			alert(a);
		}
	}
</script>
</head>
<body>
	<button id="btn">눌러봐</button>
</body>
</html>