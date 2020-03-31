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
		GregorianCalendar today = new GregorianCalendar();
		int year = today.get(Calendar.YEAR);
		int month = today.get(Calendar.MONTH);
		
		int lastday[] = {31,28,31,30,31,30,31,31,30,31,30,31};
		int last = lastday[month];
		
		if(today.isLeapYear(year) && month == 1){
			last = 29;
		}
		
		GregorianCalendar startDay = new GregorianCalendar(year, month, 1);
		int yoil = startDay.get(Calendar.DAY_OF_WEEK); //일요일이 1, date에서는 일요일이 0
		yoil--;
		
	%>
	<h2><%=year %>년 <%=month %>월</h2><br>
	
	<table border="1" width="60%" height="400">
		<tr bgcolor="pink">
			<td>일</td>
			<td>월</td>
			<td>화</td>
			<td>수</td>
			<td>목</td>
			<td>금</td>
			<td>토</td>
		</tr>
		<tr>
		<%
			for(int j = 1; j <= yoil; j++){
				%>
				<td>&nbsp;</td>
				<%
			}
			
			for(int i = 1; i <= last; i++){
				%>
				<td> <%=i %> </td>
				<%
				if( (i+yoil) %7 == 0){
					%>
					</tr><tr>
					<%
				}
			}
		%>
	
		</tr>
	</table>
</body>
</html>