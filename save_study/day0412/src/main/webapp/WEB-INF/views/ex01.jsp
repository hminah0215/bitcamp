<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function(){
	var btn = document.getElementById("btn");
	btn.onclick =  function(){
		var h2 = document.createElement("h2"); //h2 만듬
		var text = document.createTextNode("hello");
		h2.appendChild(text);
		//document.write(h2);
		document.body.appendChild(h2);
	}
}
</script>
</head>
<body>
	<button id="btn">버튼클릭</button>
</body>
</html>