<%@page import="java.util.Date"%>
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
		String str = null;
		Cookie [] cookies = request.getCookies();
		
		if(cookies != null){
			for(Cookie co : cookies){
				if(co.getName().equals("lastVist")){
					str = co.getValue();
				}
			}
		}
		
		if(str == null){
			out.print("처음 방문입니다.");
		}else{
			out.println("마지막 방문일은 "+ str +"입니다.");
		}
	
		Date today = new Date();
		Cookie cookie = new Cookie("lastVist",today.toString());
		response.addCookie(cookie);
	%>
</body>
</html>