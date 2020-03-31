<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	//pdf part1 자바스크립트 p.255
	//버튼을 누르면 처음에는 없던 h1 태그가 생기는 프로그램.
	
	window.onload = function(){	
	// body의 태그들이 모두 만들어 지고 난 다음에 동작해요.
		
		var btnAdd = document.getElementById("btnAdd");	
		// id가 btnAdd인 노드를 찾아서 변수 btnAdd에 담아요.
				
		btnAdd.onclick = function(){	
		// 버튼이 눌러졌을때 동작할 이벤트를 설정해요.	
					
			var h1 = document.createElement("h1");
			// h1태그를 하나 만들어요. 
		
			var txt = document.createTextNode("안녕");	
			// 위에서 만든 h1노드에 들어갈 글자노드를 만들어요. 
			
			h1.appendChild(txt);
			// h1노드에 글자노드를 연결합니다.(담습니다.)
			
			document.getElementById("result").appendChild(h1);
			// id가 result인 노드를 찾아서 h1노드를 담아요.
		}
	}
</script>

</head>
<body>
	<div id="result"></div>
	<!-- 동적으로 태그를 만들어 담을 공간을 만들고 id를 설정해요.  -->
	
	<button id="btnAdd">노드추가</button>	
	<!-- 노드 : 태그를 뜻함(요소), 자바스크립트에서 찾을 수 있도록 id를 설정해요. -->
</body>
</html>