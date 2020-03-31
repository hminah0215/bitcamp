<%@page import="com.bit.vo.GoodsVO"%>
<%@page import="java.util.ArrayList"%>
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
	<h2>상품목록</h2>
	<hr>
	<%
		GoodsDAO dao = new GoodsDAO();
		ArrayList<GoodsVO> list = dao.listAll();
	%>
	<a href="insertGoods.html">상품등록</a><br>
	<table border="1" width="70%">
		<tr>
			<td>상품번호</td>
			<td>상품명</td>
			<td>가격</td>
			<td>수량</td>
			<td>상품사진</td>
		</tr>
		<%
			for(GoodsVO g : list){
				%>
				<tr>
					<td><a href="detailGoods.jsp?no=<%=g.getNo()%>"><%=g.getNo() %></a></td>
					<td><%=g.getItem() %></td>
					<td><%=g.getPrice() %></td>
					<td><%=g.getQty() %></td>
					<td><img src="../upload/<%=g.getFname() %>"width="50" height="50"></td>
				</tr>
				<%
			}
		%>
	</table>
</body>
</html>