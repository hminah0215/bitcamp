<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#parent{width: 500px; height: 500px; background: purple;}
	
	#child{width: 200px; height: 200px; background: skyblue; 
			position: relative; margin-left: 100px; margin-top: 100px; }
			
	#other{width: 200px; height: 2000px; background: pink;}
</style>
</head>
<body>
	<div id="parent">
		<div id="child"></div>
	</div>
	<div id="other"></div>
</body>
</html>