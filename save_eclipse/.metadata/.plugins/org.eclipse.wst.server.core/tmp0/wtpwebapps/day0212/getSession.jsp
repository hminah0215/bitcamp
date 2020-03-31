<%@page import="java.util.ArrayList"%>
<%@page import="com.bit.vo.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- setSession.jsp문서에서 설정한 모든 세션값을 읽어와서 출력하도록 합니다. -->
	<h2>세션값 확인</h2>
	title : <%=session.getAttribute("title") %><br>
	year: <%=session.getAttribute("year") %><br>
	
	<%

		Person p = (Person)session.getAttribute("member");
	%>
	member의 정보 <br>
	이름 : <%=p.getName() %><br>
	나이 : <%=p.getAge()%><br>
	주소 : <%=p.getAddr() %><br>
	
	<%
		ArrayList<Person> list = (ArrayList<Person>)session.getAttribute("list");
	%>
	<table border="1" width="60%">
		<tr>
			<td>이름</td>
			<td>나이</td>
			<td>주소</td>
		</tr>
		
	<%
		for(Person pe : list){
			%>
			<tr>
				<td><%=pe.getName() %></td>
				<td><%=pe.getAge() %></td>
				<td><%=pe.getAddr() %></td>
			</tr>
		
			<%
		}
	
	%>
	</table>
</body>
</html>