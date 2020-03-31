<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#ball{
		width: 100px;
		height: 100px;
		position: absolute;
		
		animation-name: changeWidth;
		animation-duration: 3s;
		animation-timing-function: ease;
		animation-iteration-count: infinite;
		animation-direction: normal;
		animation-delay: 2s;
	}
	
	@keyframes changeWidth{
		from {left: 10px; transform: rotate(0deg); width: 100px; height: 100px;}
		to {left: 1000px; transform: rotate(360deg); width: 150px; height: 150px;}
	}
	
</style>
</head>
<body>
	<img id="ball" src="ball1.jpg">
</body>
</html>