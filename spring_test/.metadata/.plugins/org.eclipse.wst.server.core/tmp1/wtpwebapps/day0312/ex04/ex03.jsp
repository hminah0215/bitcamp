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
		var arr = ["이순신","유관순","홍길동"];
		
		$.each(arr, function(idx, name){
			//alert(name);
			alert(arr[idx]);
		});
	});
</script>
</head>
<body>

</body>
</html>