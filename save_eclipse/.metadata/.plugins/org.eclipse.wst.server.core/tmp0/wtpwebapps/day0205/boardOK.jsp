<%@page import="java.util.ArrayList"%>
<%@page import="com.bit.dao.BoardDAO"%>
<%@page import="com.bit.vo.BoardVO"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
		request.setCharacterEncoding("UTF-8");
		String path = request.getRealPath("img");	//파일의 실제경로 읽어오기
		MultipartRequest multi = new MultipartRequest(request, path, "UTF-8");
		
		int no = 0;
		String title = multi.getParameter("title");
		String writer = multi.getParameter("writer");
		String pwd = multi.getParameter("pwd");
		int hit = 0;
		String regdate = multi.getParameter("regdate");
		String content = multi.getParameter("content");
		String fname = multi.getOriginalFileName("fname");
		
		BoardVO vo = new BoardVO(no, title, writer, pwd, hit, regdate, content, fname);
		BoardDAO dao = new BoardDAO();
		int a = dao.insertBoard(vo);
		
		if(a > 0){
			System.out.println("게시물 등록에 성공하였습니다.");
		}else{
			System.out.println("게시물 등록에 실패하였습니다.");
		}
	
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		list = dao.listBoard();
	%>
	
	<h2>게시판 목록</h2>
	<hr>
	<table width="70%">
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>작성자</td>
	</tr>	
	<%
		for( BoardVO b : list ){
			%>
			<tr>
				<td><%=b.getNo() %></td>
				<td><%=b.getTitle() %></td>
				<td><%=b.getWriter() %></td>
			<%
		}
	%>
	</tr>
	</table>
</body>
</html>