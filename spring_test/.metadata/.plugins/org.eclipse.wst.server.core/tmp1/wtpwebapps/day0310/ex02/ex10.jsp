<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		document.getElementById("btn").onclick = function(){
			var str ="";
			for(var i in window){
				str += i +"===>"+ window[i] +"\n";
			}
			document.getElementById("result").value = str;
		}
	}
</script>
</head>
<body>
	<button id="btn">윈도우 속성 알아보기</button>
	<br>
	<textarea id="result" rows="20" cols="80"></textarea>
</body>
</html>