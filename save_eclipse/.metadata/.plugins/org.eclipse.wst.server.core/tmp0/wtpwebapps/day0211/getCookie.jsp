<%@page import="java.net.URLDecoder"%>
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
		Cookie [] cookies = request.getCookies();
	
		if(cookies != null){
			for(Cookie c : cookies){
				if(c.getName().equals("name")){
					String v = URLDecoder.decode(c.getValue(),"utf-8") ;
					out.print("쿠키값 :" +v);
				}
			}
		}
	%>
</body>
</html>