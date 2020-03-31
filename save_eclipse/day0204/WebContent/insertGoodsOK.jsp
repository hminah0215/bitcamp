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
		request.setCharacterEncoding("UTF-8");
		
		String path = request.getRealPath("upload");
		//파일의 실제 경로를 알아올 수 있음 getRealPath
		System.out.println(path);
		MultipartRequest multi = new MultipartRequest(request,path,"UTF-8");
		
		int no = Integer.parseInt(multi.getParameter("no"));
		String item = multi.getParameter("item");
		int price = Integer.parseInt(multi.getParameter("price"));
		int qty = Integer.parseInt(multi.getParameter("qty"));
		
		String fname = multi.getOriginalFileName("fname");
		//multi.getOriginalFileName 으로 경로에 저장된 파일을 가져온다.  
		
		String detail = multi.getParameter("detail");
	
		GoodsVO gv = new GoodsVO(no,item,price,qty,fname,detail);	
		GoodsDAO dao = new GoodsDAO();
		int re = dao.insertGoods(gv);
		
		if(re > 0){
			
			System.out.print("상품 등록에 성공하였습니다.");
		}else{
			System.out.print("상품 등록에 실패하였습니다.");
		}

	%>
	
	상품번호 : <%=no %>
	상품명 : <%=item %>
	가격 : <%=price %>
	수량 : <%=qty %>
	사진 : <%=fname %>
	상세설명 : <%=detail %>

</body>
</html>