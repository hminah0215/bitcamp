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
		$("#a h1").css("color","red");	// a > h1 일땐 자식만, > 없으면 후손의 h1까지 색이 변경됨 
	});
</script>
</head>
<body>	<!-- 바디의 자식은 a,b 후손은 전부 -->
	<div id="a">
		<h1>A입니다.</h1>
		<div id="ap">
			<h1 id="aph1">홍길동</h1>
			<h2 id="aph2">서울</h2>
		</div>
	</div>
	<div id="b">
	<h1>B입니다.</h1>
		<div id="bp">
			<h1 id="bph1">이순신</h1>
			<h2 id="bph2">전주</h2>
		</div>
	</div>
</body>
</html>