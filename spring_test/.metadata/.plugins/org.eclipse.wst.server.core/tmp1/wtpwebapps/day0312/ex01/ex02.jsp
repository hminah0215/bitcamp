<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- src에 jquery라이브러리가 있는 url적기 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>	
<script type="text/javascript">
	//ex01과 달리 제이쿼리방식으로!
	$(function(){
		$("#btn").click( function(){alert("ok");} );
	});
</script>
</head>
<body>
	<button id="btn">눌러봐</button>
</body>
</html>