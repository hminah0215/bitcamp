<%@page import="com.bit.vo.BoardVO"%>
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
		int no = Integer.parseInt(request.getParameter("no"));
		BoardDAO dao = new BoardDAO();
		BoardVO b = dao.getBoard(no);
	%>
	
	<h2>게시물 수정</h2>
	<hr>
		<form action="updateBoardOK.jsp" method="post" enctype="multipart/form-data">
		<input type="hidden" name="no" value="<%=no%>">
		<table width = 70%>
		<tr>
			<td>글제목</td>
			<td><input type="text" name="title" value=<%=b.getTitle() %>></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><%=b.getWriter() %></td>
		</tr>
		<tr>
			<td>암호</td>
			<td><input type="password" name="pwd"></td>
		</tr>
		<tr>
			<td>글내용</td>
			<td><textarea rows="10" cols="80" name="content"><%=b.getContent() %></textarea></td>
		</tr>
		<tr>
			<td>첨부파일</td>
			<td>
			<%=b.getFname() %>
			
			<%
			// 파일이 있는경우 파일을 삭제하게 할건지 
				if(b.getFname() != null){
					%>
					<input type="checkbox" name="isDel" value="1">파일삭제
					<%
				}
			%>
			
			
			<%
				if( dao.isImage(b.getFname())){
					%>
					<img src="upload/<%=b.getFname() %>" width="50" height="50">
					<%
				}
			%><br>
			<input type="file" name="fname"></td>
			
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="수정">
							<input type="reset" value="취소">
							
		</tr>
		</table>
	
	</form>
</body>
</html>