<%@page import="com.bit.vo.GoodsVO"%>
<%@page import="com.bit.dao.GoodsDAO"%>
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
		GoodsDAO dao = new GoodsDAO();
		GoodsVO g = dao.getGoods(no);
	%>
	<h2>상품 상세설명</h2>
	<hr>
	파일명 : <%=g.getFname() %><br>
	<img src ="../upload/<%=g.getFname() %>"width="150" height="150"><br>
	상품번호 :<%=g.getNo() %><br> 
	상품명 : <%=g.getItem() %><br>
	가격 : <%=g.getPrice() %><br>
	수량 : <%=g.getQty() %><br>
	상품설명 : <br>
	<textarea rows="10"cols="40"readonly="readonly"><%=g.getDetail() %></textarea>
	<hr>
	<a href = "insertGoods.html">상품등록</a>
	<a href = "listGoods.jsp">상품목록</a>
	<a href = "updateGoods.jsp?no=<%=g.getNo()%>">상품수정</a>
	<a href = "deleteGoods.jsp?no=<%=g.getNo()%>">상품삭제</a>	
	
</body>
</html>