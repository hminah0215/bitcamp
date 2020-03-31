<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#canvas{border: solid 2px orange;}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.7.min.js"></script>
<script type="text/javascript">
	$(function(){
		//캔버스 노드에 그림을 그리기 위해서, context가 자바스크립트 노드임
		var canvas = document.getElementById("canvas");
		var context = canvas.getContext("2d");	//2d를 그리기위한 context
		
		$("#btn").click(function(){
			context.beginPath();
			context.moveTo(10,10);
			context.lineTo(110,10);
			context.stroke();
		});
	});
</script>
</head>
<body>
	<canvas id="canvas" width="800" height="500"></canvas>
	<button id="btn">가로선 그리기</button>
</body>
</html>