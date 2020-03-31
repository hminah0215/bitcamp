<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		var data =["현민아","30","서울시 서대문구","010-4440-9830"];
		
		document.getElementById("btnData").onclick = function(){
			var arr = document.getElementsByTagName("td");
			for(var i = 0; i <arr.length ; i++){
				arr[i].innerHTML = data[i];
			}
		}
	}
</script>
</head>
<body>
	<table border="1" width="80%">
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<button id="btnData">데이터출력</button>
</body>
</html>