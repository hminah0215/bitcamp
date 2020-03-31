<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btn").click(function(){
			$("#name").css("color","blue");
		});
	});

</script>
</head>
<body>
	<button id="btn">글자색 변경</button>
	<h1 id="name">홍길동</h1>
</body>
</html>