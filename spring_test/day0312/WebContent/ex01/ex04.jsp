<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제이쿼리방식</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btn").click(function() {
			$("#msg").html("안녕");
		});
	
	});
</script>
</head>
<body>
	<button id="btn">눌러봐</button>
	<span id="msg"></span>
</body>
</html>