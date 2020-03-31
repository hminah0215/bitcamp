<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		
		var arr = document.getElementsByTagName("li");
		for( var i = 0; i<arr.length; i++ ){
			arr[i].ondblclick = function(){
				document.getElementsByTagName("ul")[0].removeChild(this);
			}
		}
		
	}
</script>
</head>
<body>
	<h2>직장인이 선호하는 점심메뉴</h2>
	<ul>
		<li>짬뽕</li>
		<li>짜장면</li>
		<li>불고기백반</li>
		<li>된장찌개</li>
		<li>동태탕</li>
	</ul>
</body>
</html>