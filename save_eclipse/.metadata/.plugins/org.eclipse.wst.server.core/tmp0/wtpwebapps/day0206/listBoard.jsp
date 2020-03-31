
<%@page import="com.bit.vo.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bit.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>게시물 목록</h2>
	<hr>
	<%
		if( session.getAttribute("id") == null ){	//id가 실렸는지!
			response.sendRedirect("login.jsp");
		}
	
		BoardDAO dao = new BoardDAO();
		ArrayList<BoardVO> list = dao.listAll();
	%>
	<a href="insertBoard.jsp">새글등록</a>
	<table border="1" width="70%">
		<tr>
			<td>글번호</td>
			<td>글제목</td>
			<td>작성자</td>
			<td>등록일</td>
			<td>조회수</td>
			<td>ip주소</td>
		</tr>
		<%
		for(BoardVO b : list){
			%>
		<tr>
		<td><%=b.getNo() %></td>
		<td>
			<a href="detailBoard.jsp?no=<%=b.getNo()%>"><%=b.getTitle() %></a>
		</td>
		<td><%=b.getWriter() %></td>
		<td><%=b.getRegdate() %></td>
		<td><%=b.getHit() %></td>
		<td><%=b.getIp() %></td>
	</tr>
		<%
			}
		%>
	</hr>
	</table>
</body>
</html>