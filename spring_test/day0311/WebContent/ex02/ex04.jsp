<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#canvas {
	width: 3000px;
	height: 1000px;
}

#man {
	position: absolute;
	left: 10px;
	top: 10px;
}
</style>
<script type="text/javascript">
	window.onload = function() {
		
		var x = 10;
		var y = 10;
		var vX = 10;	//x축으로 한번 움직이는 거리
		var vY = 10;	//y축으로 한번 움직이는 거리
		var dX = 0;		//x축으로 총 이동할 거리
		var dY = 0;		//y축으로 총 이동할 거리
		var endX = 0;	//마우스 눌러진 x 위치(최종목적지)
		var endY = 0;	//마우스 눌러진 y 위치(최종목적지)
		
		var timeID;	//타이머를 위한 아이디
		
		var canvas = document.getElementById("canvas");
		var man = document.getElementById("man");

		canvas.onclick = function() {
			var event = window.event;
			endX = event.x;
			endY = event.y;
			
			//x축으로 이동하는 거리와 y축으로 이동하는 거리를 
			//동일하게 하기 위하여 각각의 거리를 구하여 동일한 비율로 나눠요.
			dX = Math.abs(endX - x);
			dY = Math.abs(endY - y);
			
			vX = dX/100;
			vY = dY/100;
			
			if(x > endX){
				vX = -vX;
			}
			if(y > endY){
				vY = -vY;
			}
			
			var i = 0 ;
			timeID = setInterval(function(){
				x += vX;
				y += vY;
				man.style.left = x + 'px';
				man.style.top = y + 'px';
				
				if(i >= 100){
					clearInterval(timeID);
				}
				i++;
			},100);

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