<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int day[] = {31,28,31,30,31,30,31,31,30,31,30,31};
		
		GregorianCalendar today = new GregorianCalendar();
		int year = today.get(Calendar.YEAR);
		int month = today.get(Calendar.MONTH);
	
		GregorianCalendar startDay = new GregorianCalendar(year,month,1);
		int yoil = startDay.get(Calendar.DAY_OF_WEEK) - 1;
		//시작하는 일요일의 값이 1이라서 
		int last = day[month];
		month++;	//그레고니언 캘린더는 월이 0~11 
	%>
	<h2><%=year %>년 <%=month %>월</h2><hr>

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
		
</body>
</html>