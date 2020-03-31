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
		$("#btnSet").click(function(){
			$("img").attr("src","stock4.jpg");
		});
		
		$("#btnGet").click(function(){
			//var src = $("img").attr("src");
			//alert(src);
			
			var arr = [];
			$("img").each(function(idx, item){
				arr.push( $(this).attr("src") );
			});
			
			$.each(arr, function(idx, src){
				alert(src);
			});
		});
	});
</script>
</head>
<body>
	<img src="stock1.jpg" width="100" height="100">
	<img src="stock2.jpg" width="100" height="100">
	<img src="stock3.jpg" width="100" height="100">
	<button id="btnSet">설정하기</button>
	<button id="btnGet">읽어오기</button>
</body>
</html>