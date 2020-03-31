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
		$("button").click(function(){
			$("*").css("color","blue");
			$(this).css("color","black");	//버튼은 검정색유지
		});
	});
</script>
</head>
<body>
	<h2>홍길동</h2>
	<h4>서울</h4>
	
	<h2>이순신</h2>
	<h4>부산</h4>
	
	<h2>유관순</h2>
	<h4>전주</h4>
	
	<button id="btn">모두 파란색</button>
</body>
</html>