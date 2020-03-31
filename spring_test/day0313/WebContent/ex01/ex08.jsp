<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btnAdd").click(function() {
			$("h2").attr("data-index", function(idx){
				return idx;
			})
		});

		$("#btnRemove").click(function() {
			$("h2").removeAttr("data-index");
		});
	});
</script>
</head>
<body>
	<h2>홍길동</h2>
	<h2>이순신</h2>
	<h2>유관순</h2>
	<button id="btnAdd">속성 추가</button>
	<button id="btnRemove">속성 제거</button>
</body>
</html>