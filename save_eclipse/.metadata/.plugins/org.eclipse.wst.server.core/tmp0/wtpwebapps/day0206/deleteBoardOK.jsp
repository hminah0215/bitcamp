<%@page import="java.io.File"%>
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
	<%
		request.setCharacterEncoding("UTF-8");
		int no = Integer.parseInt(request.getParameter("no"));
		String pwd = request.getParameter("pwd");
		
		BoardDAO dao = new BoardDAO();
		//게시글과 함께 지울 첨부파일명을 미리 변수에 담아둡니다.
		String fname = dao.getBoard(no).getFname();
		//파일이 있는 실경로를 읽어옵니다.
		String path =request.getRealPath("upload");
		
		int re = dao.deleteBoard(no, pwd);
		
		if(re > 0){
			//삭제도 가능한상태고 파일도 있다면 파일을 지우도록 
			if(fname != null){
				File file = new File(path + "/" +fname);
				file.delete();
			}
			
			response.sendRedirect("listBoard.jsp");	//삭제에 성공하면 리스트로 다시 가도록
		}else{
			%>
				게시물 삭제에 실패하였습니다.
			<%
		}
	
	%>
</body>
</html>