<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		var btn = document.getElementsByTagName("button");
		btn[0].onclick = function(){
			var h2 = document.getElementsByTagName("h2");
			h2[0].style.color = "red";
			h2[0].style.fontFamily = "궁서";
			h2[0].style.border = "2px solid Blue";
		}

	}
</script>
</head>
<body>
	<h2>오늘은 월요일 입니다.</h2>
	<button>스타일 변경</button>
</body>
</html>