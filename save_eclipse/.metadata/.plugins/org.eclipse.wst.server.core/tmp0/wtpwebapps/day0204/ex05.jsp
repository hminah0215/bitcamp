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
	<!-- 요일에 대한 행을 추가한 후,
		그달의 1일의 요일에 대한 정수값을 가져와서 그 숫자만큼 빈칸을 출력하고
		날짜를 출력하도록 코드를 변경하세요   -->
	
	<%
		int []q = {31,28,31,30,31,30,31,31,30,31,30,31};		
		Date today = new Date();
		int year = today.getYear();
		//date은 연도에서 1900을 뺀 값을 가지고 처리하니까 + 1900을 지운다. 
		int mon = today.getMonth();
		
		Date startDay = new Date(year, mon, 1); //그달의 1일을 찾는다.
		int yoil = startDay.getDay();
	
		int last = q[mon];
		mon++;
		year += 1900;
	%>
	<h2><%=year %>년 <%=mon %>월</h2><hr>

	<table border="1">
		<tr>
			<td>일</td>
			<td>월</td>
			<td>화</td>
			<td>수</td>
			<td>목</td>
			<td>금</td>
			<td>토</td>
		</tr>
			<%
				for(int j = 1 ; j <= yoil; j++){
					%>
					<td></td>
					<%
				}

				for (int a = 1; a <= last; a++) {
			%>
				<td><%=a%></td>
				<%
				if( (a+yoil) % 7 == 0){
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