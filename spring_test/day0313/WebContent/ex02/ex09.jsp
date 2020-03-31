<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	img{
		width: 100px;
		height: 100px;
	}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		setInterval(function(){
			$("img").first().appendTo("#div");
		},1000);
	});
</script>
</head>
<body>
	<button id="btn">이동시키기</button><br>
	<div id="div">
		<img src="stock1.jpg">
		<img src="stock2.jpg">
		<img src="stock3.jpg">
		<img src="stock4.jpg">
		<img src="stock5.jpg">
	</div>
	
	<hr>
	<h2>회원정보</h2>
	<table border="1" width="80%">
		<tr>
			<td>이름</td>
			<td>나이</td>
			<td>주소</td>
		</tr>
		
	</table>
</body>
</html>