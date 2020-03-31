<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#addLast").click(function() {
			$("<h2></h2>").html("이순신").appendTo("#div");
		});

		$("#addFirst").click(function() {
			$("<h2></h2>").html("이순신").prependTo("#div");
		});
	});
</script>
</head>
<body>
	<div id="div">
		<h2>홍길동</h2>
		<h2>홍길동</h2>
		<h2>홍길동</h2>
	</div>

	<button id="addLast">맨 뒤에 추가</button>
	<button id="addFirst">맨 앞에 추가</button>
</body>
</html>