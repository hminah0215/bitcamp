<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		document.getElementById("header").onclick = function(){
			this.style.color = "orange";
			this.style.background ="red";
		}
	}
</script>
</head>
<body>
	<h1 id="header">hello</h1>
</body>
</html>