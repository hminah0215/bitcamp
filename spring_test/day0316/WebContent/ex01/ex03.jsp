<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		document.getElementById("btn").onclick = function() {
			var request = new XMLHttpRequest();
			
			//비동기 방식으로 ajax통신을 진행할때는 이 이벤트와 같이쓰여야함
			request.onreadystatechange = function(event){	
				if(request.readyState == 4){//서버로부터 응답이 모두 완료되었는지 물음, 4가 완료
					if(request.status == 200){//응답이 오류없이 끝났는지, 200이면 오류가 없다는 뜻
						var str = request.responseText;
						document.getElementById("msg").innerHTML = str;
					}
				}
			}
			//open 매개변수 3개 (요청방식, 서블릿(컨트롤러)의 요청이름, 동기방식 false/비동기방식 true)
			request.open("get", "hello.jsp", true);
			request.send();
			
		}
	}
</script>
</head>
<body>
	<textarea rows="10" cols="20"></textarea>
	<br>
	<button id="btn">ajax통신</button>
	<h1 id="msg"></h1>
</body>
</html>