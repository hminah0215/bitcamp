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
		var arr = [	{name:"홍길동", age:20},
					{name:"이순신", age:40}	];
		
		//배열안의 객체, 이중반복문
		for(var i in arr){	
			for( var j in arr[i]){
				//alert("ok");	//ok 4번 나옴
				alert(arr[i][j]);
			}
		}
		
		/*
		for(var i in arr){	//in arr[0]을하면 아래서 속성명이나옴 
			alert(i);	//0,1 이 나옴
		}
		*/
	</script>
</body>
</html>