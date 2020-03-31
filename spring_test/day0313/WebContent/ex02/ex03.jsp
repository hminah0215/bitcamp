<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		//$("body").append( $("<img/>").attr("src","stock1.jpg") );
		//$("<img/>").attr({src:"stock1.jpg", width:50 ,height:50}) .appendTo("body");
	
		$("<img/>",{src:"stock1.jpg", width:50 ,height:50}).appendTo("body");
		//attr을 직접 안쓰고 객체 생성할때 두번째 매개변수로 속성을 지정할 수 있다.
	});
</script>
</head>
<body>

</body>
</html>