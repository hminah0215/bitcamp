<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#div{
		width: 600px;
		height: 1000px;
	}
</style>
<script type="text/javascript">
	window.onload = function(){
		document.body.onclick = function(){
			var div = document.getElementById("div");
			div.innerHTML ="";
			
			var event = window.event;
			
			for(var key in event){
				div.innerHTML += key +"=====>"+ event[key]+ "<br>";
			}
		}
	}
</script>
</head>
<body>
	<div id="div"></div>
</body>
</html>