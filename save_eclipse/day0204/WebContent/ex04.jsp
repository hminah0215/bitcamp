<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- ex03에 이어, 현재날짜를 읽어와서 표위에 올해 년월을 출력 
	2월은 28일까지 처럼, 그 달에 맞는 날짜들만 나오도록 수정 -->
	
	<%
		int []q = {31,28,31,30,31,30,31,31,30,31,30,31};		
		Date today = new Date();
		int year = today.getYear() + 1900;
		int mon = today.getMonth();
		int last = q[mon];
		mon++;
	%>
	<h2><%=year %>년 <%=mon %>월</h2><hr>
	
	
	<table border="1">
		<tr>
			<%
				for (int a = 1; a <= last; a++) {
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