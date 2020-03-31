<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function(){
	
	var arr = [
		{name:"축구공",fname:"ball2.jpg"},
		{name:"운동복",fname:"cloth1.jpg"},
		{name:"축구화",fname:"shoe5.jpg"},
		{name:"축구양말",fname:"stock3.jpg"}]; //객체를 가지고있는 배열
		
	document.getElementById("btnRead").onclick = function(){
		for(var i=0; i<arr.length; i++){
			var g = arr[i];
			var txtNode = document.createTextNode(g.name);
			var li = document.createElement("li");
			li.setAttribute("idx",i);
			
			li.onclick = function(){
				var idx = this.getAttribute("idx");
				document.getElementById("img").src = arr[idx].fname;
				
			}
			
			li.appendChild(txtNode);
			document.getElementById("list").appendChild(li);
		}
	}	
}



</script>

</head>
<body>
	<ul id="list" ></ul>
	<button id="btnRead">상품 읽어오기</button>
	<img id="img">
</body>
</html>

