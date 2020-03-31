<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.7.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		
		$("h2").bind("click",function(){
			alert( $(this).html() );
		});
		
		$("body").append( $("<h2></h2>").html("이순신") );
	});
</script>
</head>
<body>
	<h2>홍길동</h2>
</body>
</html>