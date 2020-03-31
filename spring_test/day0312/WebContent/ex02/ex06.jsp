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
		$("#btn1").click(function(){
			$(".student").css({color:"black",background:"white"});
			$(".team1").css({color:"red",background:"skyblue"});
			
			//팀1 구성원 버튼을 누르면 팀1 사람들 이름만 보이고, 나머지는 안보이게!
			//$(".team1").css("display","block");
			//$(".team1").css("display","none");
		});
		
		$("#btn2").click(function(){
			$(".student").css({color:"black",background:"white"});
			$(".team2").css({color:"red",background:"skyblue"});
		});
		
		$("#man0").click(function(){
			$(".student").css({color:"black",background:"white"});
			$(".manager").css({color:"red",background:"skyblue"});
		});
		
		$("#man1").click(function(){
			$(".student").css({color:"black",background:"white"});
			$(".team1.manager").css({color:"red",background:"skyblue"});
		});
		
		$("#man2").click(function(){
			$(".student").css({color:"black",background:"white"});
			$(".team2.manager").css({color:"red",background:"skyblue"});
		});
		
		
	});
</script>
</head>
<body>
	<p class="student team1">1.이종호</p>
	<p class="student team1">2.전은진</p>
	<p class="student team2">3.김혜선</p>
	<p class="student team2">4.하지연</p>
	<p class="student team1">5.홍수지</p>
	<p class="student team1 manager" >6.이동현</p>
	<p class="student team1">7.서동욱</p>
	
	<p class="student team1">8.박유철</p>
	<p class="student team2">9.고요한</p>
	<p class="student team2">10.유현성</p>
	<p class="student team1">11.김정규</p>
	<p class="student team2">12.곽설아</p>
	<p class="student team2">13.박도형</p>
	<p class="student team2 manager">14.이근희</p>
	
	<button id="btn1">팀1의 구성원</button>
	<button id="btn2">팀2의 구성원</button>
	<button id="man0">모든관리자</button>
	<button id="man1">팀1의 관리자</button>
	<button id="man2">팀2의 관리자</button>
</body>
</html>