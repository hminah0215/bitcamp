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
		$("#btnDel").click(function(){
			$("h1").first().remove();
		});
	});
</script>
</head>
<body>
	<h1>홍길동</h1>
	<h1>이순신</h1>
	<h1>유관순</h1>
	<button id="btnDel">첫번째 노드 삭제</button>
</body>
</html>