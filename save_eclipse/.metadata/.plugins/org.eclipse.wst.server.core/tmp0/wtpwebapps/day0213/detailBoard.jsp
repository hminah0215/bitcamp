<%@page import="com.bit.dao.BoardDAO"%>
<%@page import="com.bit.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>게시물 상세보기</h2>
	<hr>
	글번호 : ${b.no }<br><br>
	글제목 : ${b.title }<br><br>
	작성자 : ${b.writer }<br><br>
	조회수 : ${b.hit }<br><br>
	등록일 : ${b.regdate }<br><br>
	글내용 : <br>
	<textarea row="10" cols="80" readonly="readonly">${b.content }</textarea><br><br>
	ip주소 : ${b.ip }<br><br>
	
	<c:if test="${isImg == true }">
		<img src="upload/${b.fname }" width="200" height="200">
	</c:if>
	
	<c:if test="${isImg == false }">
		파일명 : <a href="upload/${b.fname }">${b.fname }</a>
	</c:if>
	
	<br>
	<a href="insertBoard.do?no=${b.no }">답글작성</a>&nbsp;
	<a href="deleteBoard.do?no=${b.no }">글 삭제</a>&nbsp;
	<a href="listBoard.do">게시물 목록</a>&nbsp;

</body>
</html>