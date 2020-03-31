<%@page import="com.bit.dao.CenterDAO"%>
<%@page import="com.bit.vo.CenterVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>센터 등록</h2>
	<hr>
	<form action="insertCENTER.jsp" method="post">
		센터번호 :<input type="number" name="center_no"><br> 
		센터이름 :<input type="text" name="center_name"><br> 
		센터전화 :<input type="text" name="center_tel"><br> 
		센터주소 :<input type="text" name="center_addr"><br> 
		<input type="submit" value="등록">
		<input type="reset" value="취소">
		<!-- 센터를 입력하다가 잘못입력해서 지울때 -->
	</form>
 
	<%
		request.setCharacterEncoding("UTF-8");
		
		if(request.getMethod().equals("POST")){
		int center_no = Integer.parseInt(request.getParameter("center_no"));
		String center_name = request.getParameter("center_name");
		String center_tel = request.getParameter("center_tel");
		String center_addr = request.getParameter("center_addr");

		CenterVO c = new CenterVO(center_no, center_name,  center_tel, center_addr);
		CenterDAO dao = new CenterDAO();
		int re = dao.insertCenter(c);
		
		if (re > 0) {
		%>
			<font color='blue'>센터등록에 성공하였습니다.</font>
		<%
		} else {
		%>
			<font color='red'>센터등록에 실패하였습니다.</font>
		<%
		}
		}
	%>


</body>
</html>