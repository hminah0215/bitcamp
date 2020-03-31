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
			alert( $("h2").html() );	
			//id없이 h2 전체를 이렇게 읽으면 맨 처음것만 읽어온다.	
			//h2 태그들 중에 맨 첫번째 요소의 html을 출력해요.
		});
	});
</script>
</head>
<body>
	<h2>홍길동</h2>
	<h2>이순신</h2>
	<h2>유관순</h2>
	<button id="btn">읽어오기</button>
</body>
</html>