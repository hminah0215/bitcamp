
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
		//다음달 달력을 출력하도록 코드를 수정하세요!
		int year = 0;
		int month = 0;
		
		GregorianCalendar today = new GregorianCalendar();
		year = today.get(Calendar.YEAR);
		month = today.get(Calendar.MONTH);
		
		int thisYear = today.get(Calendar.YEAR);
		int thisMonth = today.get(Calendar.MONTH);
		int date = today.get(Calendar.DATE);
		
		if(request.getParameter("year") != null){
			year = Integer.parseInt(request.getParameter("year"));	
			month = Integer.parseInt(request.getParameter("month"));	
		
			System.out.println("전달된 연도:"+year);
			System.out.println("전달된 월:"+month);
		}
		
		if(month >= 12 ){
			month = 0;
			year++;
		}
		
		if(month < 0){
			month = 11;
			year--;
		}
	
		String tdColor ;
		String textColor;
		
		
		int lastday[] = {31,28,31,30,31,30,31,31,30,31,30,31};
		int last = lastday[month];
		
		if(today.isLeapYear(year) && month == 1){
			last = 29;
		}
		
		GregorianCalendar startDay = new GregorianCalendar(year, month, 1);
		int yoil = startDay.get(Calendar.DAY_OF_WEEK); //일요일이 1, date에서는 일요일이 0
		yoil--;
		
	%>
<h2><a href="calendarTEST02.jsp?year=<%=year %>&month=<%=month-1 %>">이전달</a><%=year %>년 <%=month+1 %>월 <a href="calendarTEST02.jsp?year=<%=year %>&month=<%=month+1 %>">다음달</a>	</h2>
	<br>

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
				tdColor = "white";
				textColor = "black";
				if( year == thisYear && month == thisMonth && i  == date  ){
					tdColor = "yellow";
				}
	
				if((i+yoil) %7 == 0){
					textColor = "blue";
				}
				
				if((i+yoil) %7 == 1){
					textColor = "red";
				}
				%>
				<td style="color: <%=textColor %>" bgcolor="<%=tdColor %>"> <%=i %> </td>
				<%
				if( (i+yoil) %7 == 0 && i != last){
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