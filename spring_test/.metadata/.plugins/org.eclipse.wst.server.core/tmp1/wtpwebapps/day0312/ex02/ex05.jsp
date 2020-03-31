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
		$("h1,p").css("color","red");
		//태그, 아이디, 클래스 지정자들을 , 구분해서 동시에 바꿀 수도 있다.
	});
</script>
</head>
<body>
	<h1>홍길동</h1>
	<h2>서울</h2>
	<p>010-1234-5678</p>
	<hr>
	<h1>이순신</h1>
	<h2>전주</h2>
	<p>010-7777-7777</p>
</body>
</html>