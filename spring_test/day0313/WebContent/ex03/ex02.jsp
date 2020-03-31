<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.high_light{
		background: skyblue;
	}
</style>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("h2").bind("click", function() {
			alert($(this).html());
		});

		$("h2").bind("mouseover", function() {
			$(this).addClass("high_light");
		});

		$("h2").bind("mouseleave", function() {
			$(this).removeClass("high_light");
		});

		//두개가 똑같음. 위에거는 과거에 쓰임
		//	$("h2").click(function(){
		//		alert( $(this).html() );
		//	});
	});
</script>
</head>
<body>
	<h2>이순신</h2>
	<h2>홍길동</h2>
	<h2>유관순</h2>
</body>
</html>