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
		$("li").dblclick(function(){
			$(this).remove();
		});
	});
</script>
</head>
<body>
	<ul>
		<li>사랑</li>
		<li>우정</li>
		<li>권력</li>
		<li>돈</li>
		<li>명예</li>
		<li>건강</li>
		<li>가족</li>
	</ul>
</body>
</html>