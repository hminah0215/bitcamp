<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.active{
		background: pink;
	}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(function(){
	var selH2;
	
	$("h2").click(function(){
		$("h2").removeClass("active");
		$(this).addClass("active");
		selH2 = $(this);
		$("#input").val( $(this).text() );
	});
	
	$("#btnUpdate").click(function(){
		$(selH2).html( $("#input").val() );
	});
	
	
	
	$("#delTeam1").click(function(){
		$("#team1").empty();
	});
	
	$("#delTeam2").click(function(){
		$("#team2").empty();
	});
	
	
	$("h2").dblclick(function(){
		$(this).remove();
	});
	
	$("#addTeam1").click(function(){
		 var h2 = $("<h2></h2>").html(  $("#input").val() );
		
		 $(h2).click(function(){
			 $("h2").removeClass("active");
			 $(this).addClass("active");
		 });
		 
		 $("#team1").append(h2 );
		$(h2).dblclick(function(){
				$(this).remove();
		});
	});
	$("#addTeam2").click(function(){
		var h2 = $("<h2></h2>").html(  $("#input").val() );
		
		 $(h2).click(function(){
			 $("h2").removeClass("active");
			 $(this).addClass("active");
		 });
		
		$("#team2").append( h2);
		$(h2).dblclick(function(){
			$(this).remove();
	});
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
		<h2>안철수</h2>
	</div>
	
	<input id="input" type="text">
	<button id="addTeam1">팀1추가</button>
	<button id="addTeam2">팀2추가</button>
	<button id="btnUpdate">수정</button>
	<br>
	<button id="delTeam1">팀1 모두삭제</button><br>
	<button id="delTeam2">팀2 모두삭제</button><br>
	
</body>
</html>
