<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		document.getElementById("btnList").onclick = function(){
			var str = "";
			str += "<ul>";
			str +="<li>javaScript</li>";
			str +="<li>jquery</li>";
			str +="<li>Ajax</li>";
			str += "</ul>";
			
			document.getElementById("result").innerHTML = str;
			//document.getElementById("result").appendChild(str);   str은 노드가 아니라 사용할 수 없다.
		}
	}
</script>
</head>
<body>
	<div id="result"></div>
	<button id="btnList">리스트 노트 추가</button>
</body>
</html>