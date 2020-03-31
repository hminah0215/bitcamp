<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		var li;

		document.getElementById("btn").onclick = function() {

			li = document.createElement("li");
			var txt = document.getElementById("in").value;
			//여기까진 동일 
			
			// 이 아래 두줄은 appendChild 쓸때
			var a = document.createTextNode(txt);
			li.appendChild(a);
			
			//li.innerHTML = txt;

			document.getElementById("ul").appendChild(li);
		}
	}
</script>
</head>
<body>
	<ul id="ul"></ul>
	<input type="text" id="in">
	<button id="btn">등록</button>
</body>
</html>