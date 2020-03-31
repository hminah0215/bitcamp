<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
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
		GregorianCalendar cal = new GregorianCalendar();
		int year = cal.get(Calendar.YEAR);
		int mon = cal.get(Calendar.MONTH);
		int date = cal.get(Calendar.DATE);
		int[] lastday = {31,28,31,30,31,30,31,31,30,31,30,31};
		int last = lastday[mon];
		if(cal.isLeapYear(year)){
			last = 29;
		}
	
		GregorianCalendar startday = new GregorianCalendar(year, mon, 1);
		int start = startday.get(Calendar.DAY_OF_WEEK);
		mon++;
	
	%>
	<h2><%=year %>년 <%=mon %>월</h2>

	<table border="1" width="50%" height="400">
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
		for(int i=1; i<start; i++){
	%>
		<td></td>
	<%
	}
	for(int i=1; i<=last; i++){
		if(i==date){
		%>
			<td bgcolor="yellow"><%=i %></td>
		<%
		}else{
			if((i+start-1)%7==0){
		%>
			<td><font color="blue"><%=i %></font></td>
		<%
		}else if((i+start-1)%7==1){
		%>
			<td><font color="red"><%=i %></font></td>
		<%	
		}else {
			%>
			<td><%=i %></td>
		<%	
		}
	}
	if((i+start-1)%7==0){
	%>
		</tr>
		<tr>
	<%
	}
}	
%>
</tr>
</table>
</body>
</html>