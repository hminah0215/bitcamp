<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		
		var arr = ["축구공","스타킹","유니폼","축구화"];
		var imgArr = ["ball2.jpg","stock3.jpg","cloth1.jpg","shoe5.jpg"];
		var selLi;
		
		document.getElementById("btnRead").onclick = function(){
			
			for(var i =0; i<arr.length; i++){
				
				var txt = document.createTextNode(arr[i]);
				var li = document.createElement("li");
				li.setAttribute("idx",i);
				li.appendChild(txt);
				
				li.onclick = function(){
						
					var idx = this.getAttribute("idx");
					document.getElementById("img").src = imgArr[idx];
					
					var liList = document.getElementsByTagName("li");
						for(var i = 0; i <liList.length;i++){
							liList[i].style.background = "white";
						}
						
						selLi = this;
						this.style.background= "pink";
					}
				
				document.getElementById("list").appendChild(li);
			}
			
		}
	}
</script>
</head>
<body>
	<ul id="list"></ul>
	<button id="btnRead">상품목록 읽어오기</button><br>
	<img id="img">
</body>
</html>