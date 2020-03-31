<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 1~31 까지의 숫자를 표에담는다 
		한줄에 7개씩만 출력하도록 수정하세요-->
	<table border="1">
		<tr>
			<%
				for (int a = 1; a <= 31; a++) {
			%>
				<td><%=a%></td>
				<%
				if(a % 7 == 0){
				%>
					<tr>
					</tr>
				<% 
			}
				}
			%>
		
	</table>
</body>
</html>