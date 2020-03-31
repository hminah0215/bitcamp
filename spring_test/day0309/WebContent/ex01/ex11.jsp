<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		var arr = ["stock1.jpg","stock2.jpg","stock3.jpg","stock4.jpg","stock5.jpg"];
		
		document.getElementById("btnImg").onclick = function(){
			var img = document.getElementsByTagName("img");
			for(var i = 0; i <img.length ; i++){
				img[i].src = arr[i];
				img[i].width = 100;
				img[i].height = 100;
			}
		}
		
	}
</script>
</head>
<body>
	<img>
	<img>
	<img>
	<img>
	<img>
	<button id="btnImg">이미지 읽어오기</button>
	
</body>
</html>