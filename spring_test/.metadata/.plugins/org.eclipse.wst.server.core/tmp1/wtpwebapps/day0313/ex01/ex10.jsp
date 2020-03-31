<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		//$("h1").css("color","red");
		//h1노드의 모든 요소에 배경색은 노란색으로 설정하고 
		//글자색은 차례대로 빨간색, 파란색, 초록색으로 설정해봅니다. 
		
		var colorList =["red","blue","green"];
		
		$("h1").css({color:function(idx){
			return colorList[idx];
		},background:"yellow"});
		
	});
</script>
</head>
<body>
	<h1>이순신</h1>
	<h1>유관순</h1>
	<h1>홍길동</h1>
</body>
</html>