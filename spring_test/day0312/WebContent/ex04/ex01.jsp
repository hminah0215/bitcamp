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
		//첫번째방법
		var arr = $("h2");
		
		//첫번째 매개변수 인덱스, 2번째 사용자지정 속성?
		$.each(arr,function(idx,h2 ){
			var str = $(h2).text();
			alert(str);
		});	
	});
</script>
</head>
<body>
	<h2>홍길동</h2>
	<h2>이순신</h2>
	<h2>유관순</h2>
</body>
</html>