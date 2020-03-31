<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#canvas {
	border: solid 1px black;
}
</style>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.7.min.js"></script>
<script type="text/javascript">
$(function(){
	var canvas = document.getElementById("canvas");
	var context = canvas.getContext("2d");
	var position= $(canvas).offset();
	var colorArr = ["red", "green", "blue"];
	
	var action = 0;
	
	$("span").css("background",function(idx){
		//$(this).attr("idx",idx);
		return colorArr[idx];
	});
	
	$(canvas).mousedown(function(event){
		action = 1;
		var x = event.pageX - position.left;
		var y = event.pageY - position.top;
		
		context.beginPath();
		context.moveTo(x,y);
	});
	
	$(canvas).mousemove(function(event){
		if(action == 1){
		var x = event.pageX - position.left;
		var y = event.pageY - position.top;
		
		context.lineTo(x,y);
		context.stroke();
		}
	});
	
	$(canvas).mouseup(function(){
		action = 0;
	});
	
	
	$("span").click(function(){
		var color = $(this).css("background-color");
		//var color =  colorArr[ $(this).attr("idx") ];	
		context.strokeStyle = color;
	});
	
});
</script>
</head>
<body>
	<canvas id="canvas" width="800" height="500"></canvas>
	<hr>
	<span>빨간색</span>
	<span>초록색</span>
	<span>파랑색</span>
</body>
</html>
