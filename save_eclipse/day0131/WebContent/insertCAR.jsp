<%@page import="com.bit.vo.Car_typeVO"%>
<%@page import="com.bit.dao.Car_typeDAO"%>
<%@page import="com.bit.vo.Option_typeVO"%>
<%@page import="com.bit.dao.Option_typeDAO"%>
<%@page import="com.bit.vo.CenterVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bit.dao.CenterDAO"%>
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
		CenterDAO c_dao = new CenterDAO();
		ArrayList<CenterVO> list = c_dao.listAll();
	
		Option_typeDAO o_dao = new Option_typeDAO();
		ArrayList<Option_typeVO> list2 = o_dao.listOption();
		
		Car_typeDAO ca_dao = new Car_typeDAO();
		ArrayList<Car_typeVO> list3 = ca_dao.chooseType();

	%>
	<h2>자동차 등록</h2>
	<hr>
	<form action="insertCAROK.jsp" method="post" enctype="multipart/form-data">
	차량등록번호 : <input type="number" name="car_no"><br>	
	차 종류 : <input type="text" name="car_type"><br>	
	사무소 선택 : 
	<select name="center_no">
		<%
			for(CenterVO c : list){
		%>
			<option value="<%=c.getCenter_no()%>"><%=c.getCenter_name() %></option>
		<% 		
			}	
		%>
	</select><br>
	차 색상 : 
	<select name="color">
		<option value="red">빨간색</option>
		<option value="white">흰색</option>
		<option value="black">검정색</option>
	</select><br>
	몇 인승 : 
	<select name="seats">
		<option value="4">4인승</option>
		<option value="8">8인승</option>
		<option value="12">12인승</option>
	</select><br>
	일일 대여료 : <input type="number" name="rent_fee"><br>
	차량 사진 : <input type="file" name="fname"><br>
	옵션 :
	<%
		for(Option_typeVO o : list2){
	%>
	 <input type="checkbox" name="option_no" value="<%=o.getOption_no()%>"><%=o.getOption_name() %>
	<%
		}
	%>
	<br>
	자동차 타입 :	
	<select name="type_no">
		<%
			for(Car_typeVO ca : list3){
		%>
			<option value="<%=ca.getType_no() %>"><%=ca.getType_name() %></option>
		<%
			}
		%>

	</select><br>
	<input type="submit" value="등록">
	<input type="reset" value="취소">


	</form>
</body>
</html>