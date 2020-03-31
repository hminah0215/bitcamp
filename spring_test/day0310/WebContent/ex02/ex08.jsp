<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/*
		졸라맨을 좌측하단에 출력합니다.
		시간이 흐름에 따라 반복하여 오른쪽으로 이동하도록 합니다.
		졸라맨이 오른쪽 끝에 도달하면 방향을 전환해 이동하도록 합니다.
	*/
	
	window.onload = function(){
		var arr =["man.png","man2.png","man3.png","sun.png"];
		var man = document.getElementById("man");
		var i = 0;
		
		man.style.position = "absolute";	
		
		man.style.left = 0 +'px';
		man.style.top = 450+'px';
		
		var manleft = 0;
		
		setInterval(function(){
			
			man.style.left = manleft + 50 +'px';
			manleft += 10;
			
			man.childNodes[0].src = arr[i];
			i++;
			
			if(i >= arr.length){
				i = 0;
			}
			
		}, 100);
	}
</script>
</head>
<body>
	<div id="man"><img src="man.png" width="80" height="80"></div>
</body>
</html>