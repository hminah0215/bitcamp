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
		int n = 0;

		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie co : cookies) {
				if(co.getName().equals("visitCount")){
					n = Integer.parseInt(co.getValue());
				}
			}
		}
		
		n = n + 1;
		out.println(n + "번째 방문입니다.");

		Cookie c = new Cookie("visitCount", n + "");
		//쿠키는 두개의 속성을 가짐 (둘다 스트링)
		response.addCookie(c);
	%>
</body>
</html>