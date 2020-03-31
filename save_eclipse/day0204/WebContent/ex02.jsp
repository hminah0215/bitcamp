<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 선언문 -->
	<%! 
		String name = "홍길동";
		public int addAge(int age){
			return age + 1;
		}
	%>
<h2>서블릿의 구성요소</h2>
1. 스크립트릿<br>
2. 표현식<br>
3. 선언문<br>
<!-- 스크립트릿 -->
	<%
		int age = 20;
		String addr = "서울시 마포구 신수동";
	%>
<!-- 표현식 -->	
이름 : <%=name %><br>
나이 : <%=age %><br>
주소 : <%=addr %><br>

	<%
		int age2 = addAge(age);
	%>
	증가된 나이 : <%=age2 %>
	증가한 나이 : <%=addAge(age) %>
</body>
</html>