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
		$("tr:eq(0)").css("background","black").css("color","white");
		//4칸 4n + 1 이 첫번째칸 
		$("td:nth-child(4n+1)").css("background","#F2D5DD");
		$("td:nth-child(4n+2)").css("background","#E8C2F2");
		$("td:nth-child(4n+3)").css("background","#E8D0F2");
		$("td:nth-child(4n)").css("background","#C2F2F2");
		
		
	});
</script>
</head>
<body>
	<table width="80%">
		<tr><th>이름</th><th>국어</th><th>영어</th><th>수학</th></tr>
		<tr><td>홍길동</td><td>55</td><td>77</td><td>99</td></tr>
		<tr><td>이순신</td><td>45</td><td>87</td><td>87</td></tr>
		<tr><td>유관순</td><td>98</td><td>99</td><td>65</td></tr>
		<tr><td>김유신</td><td>54</td><td>34</td><td>65</td></tr>
		<tr><td>강감찬</td><td>75</td><td>68</td><td>90</td></tr>
		
	</table>
</body>
</html>