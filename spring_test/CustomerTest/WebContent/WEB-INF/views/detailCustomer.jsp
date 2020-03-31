<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>고객 상세정보</h2>
	<hr>	
	<!-- mav.addObject("c",dao.getCustomer(custid));
		컨트롤러의 이부분에서 정한 이름과 같아야함. 저기서 c로 해뒀으니 
		c.custid 이런식으로 호출해야 내용이 나온다. -->
	고객번호 : ${c.custid } <br><br>
	고객이름 : ${c.name } <br><br>
	고객주소 : ${c.address } <br><br>
	전화번호 : ${c.phone } <br><br>
	<hr>	
	<a href="updateCustomer.do?custid=${c.custid }">수정</a>
	<a href="deleteCustomer.do?custid=${c.custid }">삭제</a>
</body>
</html>