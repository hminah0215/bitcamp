<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		document.getElementById("btnImg").onclick = function(){
			var img = document.createElement("img");
			img.setAttribute("src","ball1.jpg");
			img.setAttribute("width",100);
			img.setAttribute("height",100);
			img.setAttribute("bit","hello");
			//원래 없던 bit라는 속성, 필요에의해 부여할때 사용.
			
			document.getElementById("result").appendChild(img);
		}
	}
</script>
</head>
<body>
	<div id="result"></div>
	<button id="btnImg">이미지 노드 추가</button>
</body>
</html>