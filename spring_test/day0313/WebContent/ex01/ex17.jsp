<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		//팀원명을 더블클릭하면 해당 팀원을 삭제합니다. 
		//각 버튼의 처리도 하기
		//선택한 항목에 하이라이트를 설정하고, 선택한 항목의 내용을 텍스트필드에 출력합니다.
		//수정에 대한 기능을 구현합니다.
		var info;
		
		$("h2").click(function(){
			$("h2").css("background","white");
			$(this).css("background","skyblue");
			var txt = $(this).text();
			$("#addMember").val(txt);
			info = $(this);
		});
		
		$("#btnUpdate").click(function(){
			var up =$("#addMember").val();
			$(info).html(up);
		});
		
		$("h2").dblclick(function() {
			$(this).remove();
		});

		$("#addT1").click(function() {
			//var member = $("#addMember").val();
			//var h2 = $("<h2></h2>").html(member);
			//$("#team1").append(h2);
			//위는 내가 한 방법, 아래는 한줄로 쓰기
			var h2 = $("<h2></h2>").html($("#addMember").val());
			$("#team1").append(h2);
			$(h2).dblclick(function() {
			$(this).remove();
			});
			
		});

		$("#addT2").click(function() {
			var member = $("#addMember").val();
			var h2 = $("<h2></h2>").html(member);
			$("#team2").append(h2);

			$(h2).dblclick(function() {
				$(this).remove();
			});
		});

		$("#delT1").click(function() {
			$("#team1 >h2").remove();
		});

		$("#delT2").click(function() {
			$("#team2 >h2").remove();
		});
	});
</script>
</head>
<body>
	<h1>팀1의 구성원</h1>
	<div id="team1">
		<h2>이순신</h2>
		<h2>유관순</h2>
		<h2>홍길동</h2>
	</div>
	<hr>
	<h1>팀2의 구성원</h1>
	<div id="team2">
		<h2>강감찬</h2>
		<h2>김유신</h2>
		<h2>세종대왕</h2>
	</div>

	<input type="text" id="addMember">
	<button id="addT1">팀1 추가</button>
	<button id="addT2">팀2 추가</button>
	<button id="btnUpdate">수정</button>
	<br>
	<button id="delT1">팀1 모두 삭제</button>
	<br>
	<button id="delT2">팀2 모두 삭제</button>
	<br>
</body>
</html>