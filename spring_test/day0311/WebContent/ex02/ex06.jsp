<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
//사과버튼을 누르면 포도의 개수가 자동으로 증가!
	window.onload = function(){
		var a = document.getElementById("a");
		var b = document.getElementById("b");
		
		var spanA = document.getElementById("spanA");
		var spanB = document.getElementById("spanB");
		
		a.onclick = function(){
			spanA.innerHTML = eval(spanA.innerHTML)+1;
			b.onclick();
		}
		
		b.onclick = function(){
			spanB.innerHTML = eval(spanB.innerHTML)+1;
		}
	
	}
</script>
</head>
<body>
	<button id="a">사과</button>
	<button id="b">포도</button>
	<h1>사과수량 : <span id="spanA">0</span></h1>
	<h1>포도수량 : <span id="spanB">0</span></h1>
</body>
</html>