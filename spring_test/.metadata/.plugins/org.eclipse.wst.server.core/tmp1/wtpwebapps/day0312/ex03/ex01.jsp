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
			//input중 타입이 text인것만
			var input = $("input[type = text]");
			//var input = $("input");	이렇게만하면 버튼까지 "입력하세요"라고 바뀐다.
			$(input).val("입력하세요");
		});
	});
</script>
</head>
<body>
	이름 : <input type="text"><br>
	주소 : <input type="text"><br>
	<input id="btn" type="button" value="확인">
</body>
</html>
