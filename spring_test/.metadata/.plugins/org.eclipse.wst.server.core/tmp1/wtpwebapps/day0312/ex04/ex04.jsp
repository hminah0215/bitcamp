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
		var data = ["홍길동","서울","010-111-1111"];
		
		$("span").each(function(idx, s){
			$(s).html(data[idx]);
		});
		
	});
</script>
</head>
<body>
	이름 : <span></span><br>
	주소 : <span></span><br>
	전화 : <span></span><br>
</body>
</html>