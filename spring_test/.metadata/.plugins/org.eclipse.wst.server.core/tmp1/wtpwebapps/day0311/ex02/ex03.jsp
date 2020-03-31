<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#canvas{
		width: 3000px;
		height: 1000px;
	}
	
	#man{
		position: absolute;
		left: 10px;
		top: 10px;
		transition-duration: 1s;
	}
</style>
<script type="text/javascript">
	window.onload = function() {
		var canvas = document.getElementById("canvas");
		var man = document.getElementById("man");
		
		canvas.onclick = function() {
			var event = window.event;
			var x = event.x;
			var y = event.y;
			
			setTimeout(function(){
				man.style.left = x +'px';
				man.style.top = y +'px';	
			},3000);
		}
			
	}
</script>
</head>
<body>
	<div id="canvas">
		<img id="man" src="man.png" width="80" height="80">
	</div>
</body>
</html>