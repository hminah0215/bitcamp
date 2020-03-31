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
		$("#btn").click(function(){
		
		//input중 타입이 text인것만
		 var arr = $("input[type = text]");
		
		//제이쿼리가 제공해주는 반복문 $.each( 배열, 펑션(하나씩 꺼내올 변수이름){} );
		$.each(arr, function(idx, input){
			alert($(this).val());
		});
			
		});
	});
</script>
</head>
<body>
	이름 : <input type="text"><br>
	주소 : <input type="text"><br>
	전화 : <input type="text"><br>
	<input id="btn" type="button" value="확인">
</body>
</html>
