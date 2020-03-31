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
		
		$("tr:nth-child(5n)").css("background","#F2D5DD"); //tr 5번째 tr마다 색변경 
		$("tr:nth-child(5n +1)").css("background","#F2AEC7");
		$("tr:nth-child(5n +2)").css("background","#E8C2F2"); 
		$("tr:nth-child(5n +3)").css("background","#E8D0F2"); 
		$("tr:nth-child(5n +4)").css("background","#C2F2F2"); 
		
		$("tr:eq(0)").css("background","#000000").css("color","#ffffff");	//eq(0)은 첫번째행 
		
	});
</script>
</head>
<body>
	<table width="80%">
		<tr><td>이름</td><td>국어</td><td>영어</td><td>수학</td></tr>
		<tr class="member"><td>홍길동</td><td>55</td><td>77</td><td>99</td></tr>
		<tr><td>이순신</td><td>45</td><td>87</td><td>87</td></tr>
		<tr class="member"><td>유관순</td><td>98</td><td>99</td><td>65</td></tr>
		<tr><td>김유신</td><td>54</td><td>34</td><td>65</td></tr>
		<tr class="member"><td>강감찬</td><td>75</td><td>68</td><td>90</td></tr>
		<tr class="member"><td>홍길동</td><td>55</td><td>77</td><td>99</td></tr>
		<tr><td>이순신</td><td>45</td><td>87</td><td>87</td></tr>
		<tr class="member"><td>유관순</td><td>98</td><td>99</td><td>65</td></tr>
		<tr><td>김유신</td><td>54</td><td>34</td><td>65</td></tr>
		<tr class="member"><td>강감찬</td><td>75</td><td>68</td><td>90</td></tr>
		<tr class="member"><td>홍길동</td><td>55</td><td>77</td><td>99</td></tr>
		<tr><td>이순신</td><td>45</td><td>87</td><td>87</td></tr>
		<tr class="member"><td>유관순</td><td>98</td><td>99</td><td>65</td></tr>
		<tr><td>김유신</td><td>54</td><td>34</td><td>65</td></tr>
		<tr class="member"><td>강감찬</td><td>75</td><td>68</td><td>90</td></tr>
		<tr class="member"><td>홍길동</td><td>55</td><td>77</td><td>99</td></tr>
		<tr><td>이순신</td><td>45</td><td>87</td><td>87</td></tr>
		<tr class="member"><td>유관순</td><td>98</td><td>99</td><td>65</td></tr>
		<tr><td>김유신</td><td>54</td><td>34</td><td>65</td></tr>
		<tr class="member"><td>강감찬</td><td>75</td><td>68</td><td>90</td></tr>
		<tr class="member"><td>홍길동</td><td>55</td><td>77</td><td>99</td></tr>
		<tr><td>이순신</td><td>45</td><td>87</td><td>87</td></tr>
		<tr class="member"><td>유관순</td><td>98</td><td>99</td><td>65</td></tr>
		<tr><td>김유신</td><td>54</td><td>34</td><td>65</td></tr>
		<tr class="member"><td>강감찬</td><td>75</td><td>68</td><td>90</td></tr>
		<tr class="member"><td>홍길동</td><td>55</td><td>77</td><td>99</td></tr>
		<tr><td>이순신</td><td>45</td><td>87</td><td>87</td></tr>
		<tr class="member"><td>유관순</td><td>98</td><td>99</td><td>65</td></tr>
		<tr><td>김유신</td><td>54</td><td>34</td><td>65</td></tr>
		<tr class="member"><td>강감찬</td><td>75</td><td>68</td><td>90</td></tr>
		<tr class="member"><td>홍길동</td><td>55</td><td>77</td><td>99</td></tr>
		<tr><td>이순신</td><td>45</td><td>87</td><td>87</td></tr>
		<tr class="member"><td>유관순</td><td>98</td><td>99</td><td>65</td></tr>
		<tr><td>김유신</td><td>54</td><td>34</td><td>65</td></tr>
		<tr class="member"><td>강감찬</td><td>75</td><td>68</td><td>90</td></tr>
		<tr class="member"><td>홍길동</td><td>55</td><td>77</td><td>99</td></tr>
		<tr><td>이순신</td><td>45</td><td>87</td><td>87</td></tr>
		<tr class="member"><td>유관순</td><td>98</td><td>99</td><td>65</td></tr>
		<tr><td>김유신</td><td>54</td><td>34</td><td>65</td></tr>
		<tr class="member"><td>강감찬</td><td>75</td><td>68</td><td>90</td></tr>
		<tr class="member"><td>홍길동</td><td>55</td><td>77</td><td>99</td></tr>
		<tr><td>이순신</td><td>45</td><td>87</td><td>87</td></tr>
		<tr class="member"><td>유관순</td><td>98</td><td>99</td><td>65</td></tr>
		<tr><td>김유신</td><td>54</td><td>34</td><td>65</td></tr>
		<tr class="member"><td>강감찬</td><td>75</td><td>68</td><td>90</td></tr>
		<tr class="member"><td>홍길동</td><td>55</td><td>77</td><td>99</td></tr>
		<tr><td>이순신</td><td>45</td><td>87</td><td>87</td></tr>
		<tr class="member"><td>유관순</td><td>98</td><td>99</td><td>65</td></tr>
		<tr><td>김유신</td><td>54</td><td>34</td><td>65</td></tr>
		<tr class="member"><td>강감찬</td><td>75</td><td>68</td><td>90</td></tr>
		
	</table>
</body>
</html>