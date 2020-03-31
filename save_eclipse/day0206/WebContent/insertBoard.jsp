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
		String id="";
		if(session.getAttribute("id")== null){
			response.sendRedirect("login.jsp");
		}else{
			id = (String)session.getAttribute("id");
		}
	
	%>


	<h2>게시물 등록</h2>
	<form action="insertBoardOK.jsp" method="post" enctype="multipart/form-data">
		<table width = 70%>
		<tr>
			<td>글제목</td>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="writer" readonly="readonly" value="<%=id %>"></td>
		</tr>
		<tr>
			<td>암호</td>
			<td><input type="password" name="pwd"></td>
		</tr>
		<tr>
			<td>글내용</td>
			<td><textarea rows="10" cols="80" name="content"></textarea></td>
		</tr>
		<tr>
			<td>첨부파일</td>
			<td><input type="file" name="fname"></td>
		</tr>
		<tr>		
			<td colspan="2"><input type="submit" value="등록">
							<input type="reset" value="취소">
		</tr>
		</table>
	
	</form>
</body>
</html>