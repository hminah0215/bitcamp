<%@page import="java.io.File"%>
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
		GoodsDAO dao = new GoodsDAO();
		request.setCharacterEncoding("UTF-8");
		//파일의 실제 경로를 알아올 수 있음 getRealPath
		String path = request.getRealPath("upload");
		
		System.out.println(path);
		MultipartRequest multi = new MultipartRequest(request,path,"UTF-8");
		int no = Integer.parseInt(multi.getParameter("no"));
		
		//상품을 수정하기 전에 원래 상품사진 파일명을 담아둡니다.
		String oldFname = dao.getGoods(no).getFname();
	
		String item = multi.getParameter("item");
		int price = Integer.parseInt(multi.getParameter("price"));
		int qty = Integer.parseInt(multi.getParameter("qty"));
		
		//새로 업로드 할 상품사진이름을 담아와요.
		String fname = multi.getOriginalFileName("fname");
		String detail = multi.getParameter("detail");
	
		GoodsVO gv = new GoodsVO();	
		//상품번호는 시퀀스를 통해 자동으로 부여됨으로 설정하지 않아요.	
		gv.setNo(no);
		gv.setItem(item);
		gv.setPrice(price);
		gv.setQty(qty);
		gv.setDetail(detail);
			
		//상품사진을 수정하지 않으면 원래의 사진이름을 vo에 담고 
		//상품사진도 수정한다면 새로 업로드한 사진이름을 vo에 담아요.
		gv.setFname(oldFname);
		if(fname != null){
			gv.setFname(fname);
		}
		
		int re = dao.updateGoods(gv);
		
		if(re > 0){
			if(fname != null){
				File file = new File(path +"/"+ oldFname);
				file.delete();
			}
			response.sendRedirect("listGoods.jsp");
		}else{
			%>
			상품수정에 실패하였습니다.
			<%	
		}

	%>
	
</body>
</html>