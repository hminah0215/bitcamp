<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
//스크립트는 늘 head안에, 특수한 경우에는 body에도 사용이 가능하다. 디폴트는 헤드!
	
	//바디를 먼저읽고나서 스크립트를 실행하게된다. 
	window.onload = function(){
		//alert("ㅂ");
		
		//var a = document.getElementById("btn");	
		//노드를 통째로 가지고온다. 스크립트에서는 변수타입이 var가 주로 쓰인다.
		//var는 모든 타입에 다 호환이 된다. (자바의 기본형태들을 전부 받아들일 수 있다.)
		
		//var b = document.getElementsById("h1");
		//아이디가 없는걸 가져올땐 tagname 반환은 무조건 배열, 넣을 값이 하나라면 id를 지정해주는게 편함
		
		 var a  = document.createElement("h1");
		//노드를 만들어줌. 바디에 없는 노드도 지정할 수 있다. 
		
		var txt = document.createTextNode("타이핑을 해도되고, 변수를 넣어도 된다.");
		
		a.appendChild(txt);
		// appendChild사용시 부모, 자식이 둘다 노드여야한다. 
		
		document.getElementById("dd").appendChild(a);
	}
</script>
</head>
<body>
	<!-- 노드란, 바디안에서 사용되는 객체(노드) 
		노드와 텍스트노드 구분중요 -->
		<button id="btn">버튼이다</button>
		<div id="dd"></div>
</body>
</html>