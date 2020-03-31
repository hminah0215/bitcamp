<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.high_light_0{background: yellow;}
	.high_light_1{background: coral;}
	.high_light_2{background: skyblue;}
	.high_light_3{background: pink;}
	.high_light_4{background: green;}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("h1").each(function(idx, item){
			$(this).addClass("high_light_"+idx);
		});
		
		
	});
</script>
</head>
<body>
	<h1>사과</h1>
	<h1>포도</h1>
	<h1>오렌지</h1>
	<h1>복숭아</h1>
	<h1>수박</h1>

</body>
</html>