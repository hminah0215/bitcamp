<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.high_light{background: yellow;}
	
	.active{background: red;}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
//마우스를 올리면 노란색배경, 클릭하면 빨간색 배경, 클릭한 li가 span에 출력 
	$(function(){
		
		$("li").hover(function(){
			$(this).addClass("high_light");
		},function(){
			$(this).removeClass("high_light");
		});
		
		$("li").click(function(){
			$("li").removeClass("active");
			$(this).addClass("active");
			$("#result").html( $(this).html() );
			
		});
	});
</script>
</head>
<body>
	<h2>인생에서 중요하게 여기는 것</h2>
	<ul>
		<li>건강</li>
		<li>사랑</li>
		<li>권력</li>
		<li>명예</li>
		<li>돈</li>
		<li>우정</li>
	</ul>
	<span id="result"></span>
</body>
</html>