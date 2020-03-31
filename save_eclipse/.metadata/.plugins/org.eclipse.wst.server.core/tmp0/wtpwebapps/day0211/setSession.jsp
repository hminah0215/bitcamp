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
	<%
		session.setAttribute("title", "비트캠프");
		session.setAttribute("year", 2020);
		
		Person p = new Person("이순신",20,"서울시 마포구 신수동");
		session.setAttribute("member", p);
		
		ArrayList<Person> list = new ArrayList<Person>();
		list.add(new Person("유관순",16,"울산"));
		list.add(new Person("김유신",20,"광주"));
		list.add(new Person("홍길동",21,"전주"));
		
		session.setAttribute("list", list);
	%>
	세션값을 설정하였습니다.<br>
	<a href="getSession.jsp">세션값 확인</a>
	<a href="listMember.jsp">회원목록</a>
</body>
</html>