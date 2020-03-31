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
		$("#btnHTML").click(function(){
			var str = "<img src = 'stock1.jpg'>";
			$("#result").html(str);
		});
		
		$("#btnTEXT").click(function(){
			var str = "<img src = 'stock1.jpg'>";
			$("#result").text(str);
		});
	});
</script>
</head>
<body>
	<div id="result"></div>
	<button id="btnHTML">HTML</button>
	<button id="btnTEXT">TEXT</button>
</body>
</html>