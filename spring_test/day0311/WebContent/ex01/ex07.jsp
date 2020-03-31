<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		var a = document.getElementsByClassName("tr");
		
		for(var i in a){
			var b = a[i];		
	
			b.onmouseover = function(){
				this.style.background ="pink";
			}		
			b.onmouseout = function(){
				this.style.background ="white";
			}
		
	}
}

</script>
</head>
<body>
	<table border="1" width="80%">
		<tr bgcolor = "skyblue"><td>이름</td><td>나이</td><td>주소</td><td>전화</td></tr>
		<tr class="tr"><td>홍길동</td><td>20</td><td>서울</td><td>010-111-1111</td></tr>
		<tr class="tr"><td>이순신</td><td>21</td><td>부산</td><td>010-222-2222</td></tr>
		<tr class="tr"><td>유관순</td><td>22</td><td>대전</td><td>010-333-3333</td></tr>
		<tr class="tr"><td>강감찬</td><td>23</td><td>부안</td><td>010-444-4444</td></tr>
		<tr class="tr"><td>백두산</td><td>24</td><td>제주</td><td>010-555-5555</td></tr>
	</table>
</body>
</html>