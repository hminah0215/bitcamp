
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
			$.ajax("hello.jsp",{success:function(data){//요청할 url, 객체 성공했을때 동작할 함수
				$("#msg").html(data);
			}});
		});
	});
</script>
</head>
<body>
	<textarea rows="10" cols="60"></textarea>
	<br>
	<button id="btn">ajax통신</button>
	<h2 id="msg"></h2>
</body>
</html>