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
		//사용자가 요청한 문자는 한글임을 설정합니다.
		request.setCharacterEncoding("UTF-8");
		
		//파일을 복사할 실경로를 얻어옵니다.
		String path = request.getRealPath("upload");
		System.out.println(path);
		
		//파일을 업로드 하면서 사용자의 입력정보를 받아오기 위한 
		//MultipartRequest객체를 생성합니다. 
		MultipartRequest multi = new MultipartRequest(request, path, "UTF-8");
		
		//업로드한 파일은 위에서 MultipartRequest 객체 생성시에 이미 복사가 되었습니다. 
		//이제 나머지 정보들 (글제목,작성자,글내용,암호)을 multi를 통해서 받아옵니다. 
		BoardVO b = new BoardVO();
		b.setTitle(multi.getParameter("title"));
		b.setWriter(multi.getParameter("writer"));
		b.setPwd(multi.getParameter("pwd"));
		b.setContent(multi.getParameter("content"));
	
		//IP주소를 받아온다.
		b.setIp(request.getRemoteAddr());
		
		//파일이름은 이렇게 하면 안돼요! 
		//b.setFname(multi.getParameter("fname")
		//파일명이 오는것이 아니라 파일의 내용이 오기때문에 위와같이 담을 수 없음 
		
		//파일명도 담아오기	multi.getOriginalFileName
		b.setFname(multi.getOriginalFileName("fname"));
		
		BoardDAO dao = new BoardDAO();
		int re = dao.insertBoard(b);
		if(re > 0){

			%>
				게시물 등록에 성공하였습니다.
			<% 
		}else{
			%>
				게시물 등록에 실패하였습니다.
			<% 
		}

	%>
	<hr>
	<a href="insertBoard.jsp">새글등록</a>
	<a href="listBoard.jsp">글 목록</a>
</body>
</html>