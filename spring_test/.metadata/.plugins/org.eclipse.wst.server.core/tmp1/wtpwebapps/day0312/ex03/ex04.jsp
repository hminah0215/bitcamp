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
		setTimeout(function(){
		//select의 option중에 선택된 것을 뿌려줘!
			var str  =	$("select > option:selected").val();
			alert(str);
		},5000);
	});
</script>
</head>
<body>
	<select>
		<option>사과</option>
		<option>포도</option>
		<option>오렌지</option>
		<option>수박</option>
		<option>딸기</option>
	</select>
</body>
</html>