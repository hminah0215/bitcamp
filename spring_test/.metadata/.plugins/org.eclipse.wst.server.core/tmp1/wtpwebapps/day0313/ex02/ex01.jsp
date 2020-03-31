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
		var h2 = $("<h2></h2>").html("hello");
		
		//두가지 방법으로 추가할 수 있다.
		$("body").append(h2);
		$(h2).appendTo("body");
	});
</script>
</head>
<body>

</body>
</html>