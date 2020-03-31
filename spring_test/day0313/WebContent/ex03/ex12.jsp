<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#canvas{
	border: solid 1px black;
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.7.min.js"></script>
<script type="text/javascript">
$(function(){
	var canvas = document.getElementById("canvas");
	var context = canvas.getContext("2d");
	
	$(canvas).click(function(){
	$(canvas).mousemove(function(event){
		var position = $(this).offset();
		var x = event.pageX - position.left;
		var y = event.pageY - position.top;
		
		context.beginPath();
		context.moveTo(x,y);
		
	},function(event){
		var position = $(this).offset();
		var x = event.pageX - position.left;
		var y = event.pageY - position.top;
		
		context.lineTo(x,y);
		context.stroke();//그려진 선을 보여줌
	});
	
	});

	$("#red").click(function(){
		context.strokeStyle = "red";
	});
	
	$("#green").click(function(){
		context.strokeStyle = "green";
	});
	
	$("#blue").click(function(){
		context.strokeStyle = "blue";
	});
	

});
</script>
</head>
<body>
<canvas id="canvas" width="800" height="500"></canvas>
<span id="red">빨간색</span>
<span id="green">초록색</span>
<span id="blue">파랑색</span>
</body>
</html>

