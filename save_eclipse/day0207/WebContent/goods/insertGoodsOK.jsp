<%@page import="com.bit.dao.GoodsDAO"%>
<%@page import="com.bit.vo.GoodsVO"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
		//상품목록, 상품상세, 상품상세, 상품삭제에 대한 기능을 차례대로 구현합니다.
		request.setCharacterEncoding("UTF-8");
		//파일의 실제 경로를 알아올 수 있음 getRealPath
		String path = request.getRealPath("upload");
		
		System.out.println(path);
		MultipartRequest multi = new MultipartRequest(request,path,"UTF-8");
		
		String item = multi.getParameter("item");
		int price = Integer.parseInt(multi.getParameter("price"));
		int qty = Integer.parseInt(multi.getParameter("qty"));
		
		String fname = multi.getOriginalFileName("fname");
		//multi.getOriginalFileName 으로 경로에 저장된 파일을 가져온다.  
		
		String detail = multi.getParameter("detail");
	
		GoodsVO gv = new GoodsVO(0,item,price,qty,fname,detail);	
		//상품번호는 시퀀스를 통해 자동으로 부여됨으로 설정하지 않아요.		
		GoodsDAO dao = new GoodsDAO();
		int re = dao.insertGoods(gv);
		
		if(re > 0){
			response.sendRedirect("listGoods.jsp");
		}else{
			%>
			상품등록에 실패하였습니다.
			<%	
		}

	%>
	
</body>
</html>