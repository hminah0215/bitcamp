<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.bit.dao.CarDAO"%>
<%@page import="com.bit.vo.CarVO"%>
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
	
		String path ="c:/rentcar";
		MultipartRequest multi = new MultipartRequest(request,path);
		
		int car_no = Integer.parseInt(multi.getParameter("car_no"));
		String car_type = multi.getParameter("car_type");
		String color = multi.getParameter("color");
		int seats = Integer.parseInt(multi.getParameter("seats"));
		int rent_fee = Integer.parseInt(multi.getParameter("rent_fee"));
		String fname = multi.getParameter("fname");
		int center_no = Integer.parseInt(multi.getParameter("center_no"));
		int type_no = Integer.parseInt(multi.getParameter("type_no"));
		
		String []arr_option = multi.getParameterValues("option_no");
		
	%>
	
	입력한 정보는 다음과 같습니다.<hr>
	자동차번호 : <%=car_no %><br>
	차종 : <%=car_type %><br>
	색상 : <%=color %><br>
	좌석수 : <%=seats %><br>
	일일대여료 : <%=rent_fee %><br>
	사진파일명 : <%=fname %><br>
	사무소번호 : <%=center_no %><br>
	자동차 타입 : <%=type_no %><br>
	<br>
	옵션의 종류 :
	<%
		for(String option : arr_option){
			out.print(option+" ");
		}
	
	// 1.carvo를 생성하고 사용자가 요청한 정보를 vo에 담아요
	CarVO cv = new CarVO();
	cv.setCar_no(car_no);
	cv.setCar_type(car_type);
	cv.setColor(color);
	cv.setSeats(seats);
	cv.setRent_fee(rent_fee);
	cv.setFname(fname);
	cv.setCenter_no(center_no);
	cv.setType_no(type_no);
	
	//2. cardao를 생성하여 insert를 요청합니다.
	CarDAO c_dao = new CarDAO();
	/* int re1 = c_dao.insertCar(cv);
	
	//3. 자동차 등록에 성공하면 옵션의 수 만큼 options에 레코드를 추가합니다. 
	if(re1 > 0){
		for(String option : arr_option){
			int option_no = Integer.parseInt(option);
			c_dao.insertOptions(car_no, option_no);
		}
	} */

	%>

	
</body>
</html>