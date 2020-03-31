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
		$("#btn").click(function(){
			alert( $("#lee").html() );	//html() 에 매개변수가 있으면 바꾸고, 없으면 읽어온다		
		});
	});
</script>
</head>
<body>
	<h2>홍길동</h2>
	<h2 id="lee">이순신</h2>
	<h2>유관순</h2>
	<button id="btn">읽어오기</button>
</body>
</html>