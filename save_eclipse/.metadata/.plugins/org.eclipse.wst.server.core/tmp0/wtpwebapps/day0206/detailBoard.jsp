<%@page import="com.bit.dao.BoardDAO"%>
<%@page import="com.bit.vo.BoardVO"%>
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
		int no = Integer.parseInt(request.getParameter("no"));
		BoardDAO dao = new BoardDAO();
		dao.updateHit(no);
		BoardVO b = dao.getBoard(no);
	%>
	
	글번호 : <%=b.getNo() %><br>
	작성자 : <%=b.getWriter() %><br>
	제목 : <%=b.getTitle() %><br>
	조회수 : <%=b.getHit() %><br>
	글내용 : <br>
	<textarea row="10" cols="80" readonly="readonly"><%=b.getContent() %></textarea><br>
	등록일 : <%=b.getRegdate() %><br>
	ip주소 : <%=b.getIp()%><br>
	파일명 : <%=b.getFname() %><br>
	<%
		if(dao.isImage(b.getFname())){
			%>
				<img src="upload/<%=b.getFname() %>"width="200" height="200">
			<%
		}
	%>
	<hr>
	<a href="insertBoard.jsp">새글등록</a>
	<a href="listBoard.jsp">글 목록</a>
	<a href="updateBoard.jsp?no=<%=b.getNo()%>">글 수정</a>
	<a href="deleteBoard.jsp?no=<%=b.getNo()%>">글 삭제</a>
</body>
</html>