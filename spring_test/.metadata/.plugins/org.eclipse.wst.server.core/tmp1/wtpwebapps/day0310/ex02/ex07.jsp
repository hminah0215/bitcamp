<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		var sun = document.getElementById("sun");
		var earth = document.getElementById("earth");
		var moon = document.getElementById("moon");
		
		sun.style.position = "absolute";	//중심
		earth.style.position = "absolute";
		moon.style.position = "absolute";
		
		sun.style.left = 250+'px';
		sun.style.top = 200+'px';
		
		var earthAngle = 0;
		var moonAngle = 0;
		
		setInterval(function(){
			//각도를 사용해 지구와 달의 좌표를 구합니다.
			var earthLeft = 250 + 150 * Math.cos(earthAngle);
			var earthTop = 200 + 150 * Math.sin(earthAngle);
			var moonLeft = earthLeft + 50 * Math.cos(moonAngle);
			var moonTop = earthTop + 50 * Math.sin(moonAngle);
			
			//위치를 이동합니다.
			earth.style.left = earthLeft +'px';
			earth.style.top = earthTop +'px';
			moon.style.left = moonLeft +'px';
			moon.style.top = moonTop +'px';
			
			//각도를 변경합니다.
			earthAngle += 0.1;
			moonAngle += 0.3;
			
		}, 1000/30);
	}
</script>
</head>
<body>
	<div id="sun"><img src="sun.png" width="50" height="50"></div>
	<div id="earth"><img src="earth.png" width="50" height="50"></div>
	<div id="moon"><img src="moon.png" width="50" height="50"></div>
</body>
</html>