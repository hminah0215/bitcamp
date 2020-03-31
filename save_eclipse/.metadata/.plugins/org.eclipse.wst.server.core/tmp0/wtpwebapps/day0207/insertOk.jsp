<%@page import="com.bit.dao.MemberDAO"%>
<%@page import="com.bit.vo.MemberVO"%>
<%@page import="java.util.Arrays"%>
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
		//사용자가 요청한 데이터는 한글입니다를 설정
		//이 파일은 그 jsp문장구성요소 할때 쓴것. insertMember.html과 연결해서
	%>
	<jsp:useBean id="m" class="com.bit.vo.MemberVO" />
	<jsp:setProperty property="*" name="m" />
	<%=m%>
</body>
</html>