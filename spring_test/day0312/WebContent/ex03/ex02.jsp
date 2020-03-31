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
		$("#btnSet").click(function() {
			$("#name").val("홍길동");	//input태그에 값 설정 val(입력값)
		});

		$("#btnRead").click(function() {
			var name = $("#name").val();
			alert(name);
		});
	});
</script>
</head>
<body>
	<input type="text" id="name">
	<input type="button" id="btnSet" value="설정하기">
	<input type="button" id="btnRead" value="읽어오기">
</body>
</html>