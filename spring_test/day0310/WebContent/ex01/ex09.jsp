<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
//	var arr = ["사과","포도","수박"];
	
	var arr = {name:"사과", qty:10, price:1000};
	
	for( var i in arr){
		alert(i);		
		// 배열일땐 인덱스 0,1,2 이렇게 나옴! 객체일땐 속성명들 name,qty,price 이렇게 나옴.
	}
	
	/*
	for(var i = 0; i < arr.length ; i++){
		alert(arr[i]);		//사과, 포도, 수박 이렇게 나옴 
	}
	*/
</script>
</body>
</html>