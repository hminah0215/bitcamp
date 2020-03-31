<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		var data = ["java","oracle","javascript","spring","jquery","ajax"];
		
		document.getElementById("btnChange").onclick = function(){
			var arr  = document.getElementsByTagName("h1");	
			
			for(var i in arr){	// i는 데이터가 아니라 인덱스
		//  for(var i = 0; i <arr.length ; i++) 이렇게 해도 됨
				arr[i].innerHTML = data[i];
			}
		}
	}
</script>
</head>
<body>
	<h1>자바</h1>
	<h1>오라클</h1>
	<h1>자바스크립트</h1>
	<h1>스프링</h1>
	<h1>제이쿼리</h1>
	<h1>에이작스</h1>
	<button id="btnChange">영어로 바꾸기</button>
</body>
</html>