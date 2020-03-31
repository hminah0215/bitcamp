<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		var data = ["a","b","c"];
		
		document.getElementById("btn").onclick = function(){
			
			var td = document.getElementsByTagName("td");
			var tr = document.getElementById("tr");
			
			for(var i in data){
	
					td[i].innerHTML = data[i];
					//자바의 기본형태인 변수들을 html 노드안에 넣어준다.
					//textnode와 비슷한 결과를 낸다. 
					//어쩔수없이 노드가 필요한, 태그안에 태그가 있는 것들을 제외하면 innerHTML이 더 많이 쓰인다.
			}
		
			tr.appendChild(td);	
			document.getElementById("tb").appendChild(tr);
			
		}
	}
</script>
</head>
<body>
<table border="1" id="tb">
	<tr id="tr">
		<td></td>
		<td></td>
		<td></td>
	</tr>
</table>
	<button id="btn">추가</button>
</body>
</html>