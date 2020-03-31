<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	//방법1.
	
	$(function() {
		$("button").click(function(){
			var sel = "#"+$(this).text();
			//.html로 하면 > 특수문자 인식이 안됨. 
			$(sel).css("color","red");
		});
	
	});
</script>
</head>
<body>
	
	<div id="a">
		<h1>A입니다.</h1>
		<div id="ap">
			<h1 id="aph1">홍길동</h1>
			<h2 id="aph2">서울</h2>
		</div>
	</div>
	
	<div id="b">
		<h1>B입니다.</h1>
		<div id="bp">
			<h1 id="bph1">이순신</h1>
			<h2 id="bph2">전주</h2>
		</div>
	</div>

	<button>a >h1</button>
	<button>b >h1</button>
	<button>a  *</button>
	<button>b  *</button>
</body>
</html>