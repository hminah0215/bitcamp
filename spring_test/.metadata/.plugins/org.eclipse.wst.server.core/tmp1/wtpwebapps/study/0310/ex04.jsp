<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		var li;
		var s;
		
		document.getElementById("btn").onclick = function() {

			li = document.createElement("li");
			var show = document.getElementById("in");

			li.onclick = function() {
				s = this
				show.value = this.innerHTML;	//input창에 선택한 li의 내용이 보이도록
				
				var liList = document.getElementsByTagName("li");
				for(var i = 0; i <liList.length;i++){
					liList[i].style.background = "white";
				}
				s.style.background ="coral";
				
				
				
				document.getElementById("del").onclick = function(){
					s.parentNode.removeChild(s);	
					//s는 onclick에서 선택한 this 이다. 그 this의 부모를 찾고 지워줘!
				}
				
			}

			var txt = document.getElementById("in").value;
			//여기까진 동일 

			// 이 아래 두줄은 appendChild 쓸때
			//var a = document.createTextNode(txt);
			//li.appendChild(a);

			li.innerHTML = txt;

			document.getElementById("ul").appendChild(li);
		}

	}
</script>
</head>
<body>
	<ul id="ul"></ul>
	<input type="text" id="in">
	<button id="btn">등록</button>
	<button id="del">삭제</button>
</body>
</html>