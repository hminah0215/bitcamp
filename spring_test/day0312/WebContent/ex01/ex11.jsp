<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.high_light{
		background: yellow;
	}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		//$(".member").hover(function(){},function(){});	마우스 오버, 아웃(리브)를 하나로 쓸수있다.
		
		$(".member").hover(function(){
			$(this).addClass("high_light");
		},function(){
			$(this).removeClass("high_light");
		});				
		
	/*
		$(".member").mouseover(function(){
				$(this).css("background","yellow");
		});
		
		$(".member").mouseout(function(){
			$(this).css("background","white");	
		});
	*/
	});
</script>
</head>
<body>
	<table border="1" width="80%">
		<tr><td>이름</td><td>국어</td><td>영어</td><td>수학</td></tr>
		<tr class="member"><td>홍길동</td><td>55</td><td>77</td><td>99</td></tr>
		<tr class="member"><td>이순신</td><td>45</td><td>87</td><td>87</td></tr>
		<tr class="member"><td>유관순</td><td>98</td><td>99</td><td>65</td></tr>
		<tr class="member"><td>김유신</td><td>54</td><td>34</td><td>65</td></tr>
		<tr class="member"><td>강감찬</td><td>75</td><td>68</td><td>90</td></tr>
	</table>
</body>
</html>