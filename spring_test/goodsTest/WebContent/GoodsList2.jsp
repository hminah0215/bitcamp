<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	img{width: 50px; height: 50px;}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){
			$.ajax("GoodsServlet",{success:function(data){
				var arr = eval("("+data+")");
				
				$.each(arr,function(idx, goods){
					var td1 = $("<td></td>").html(goods.no);
					var td2 = $("<td></td>").html(goods.item);
					var td3 = $("<td></td>").html(goods.qty);
					var td4 = $("<td></td>").html(goods.price);
					var img = $("<img>").attr("src",goods.fname);
					var td5 = $("<td></td>").append(img);
					var td6 = $("<td></td>").html(goods.detail);
					
					var tr = $("<tr></tr>").append(td1,td2,td3,td4,td5,td6);
					$("#tb").append(tr);
				});
			}});
		});
	});
</script>
</head>
<body>
	<table id="tb" border="1" width="80%">
		<tr>
			<th>상품번호</th>
			<th>상품명</th>
			<th>수량</th>
			<th>가격</th>
			<th>상품사진</th>
			<th>상세설명</th>
		</tr>
	</table>
	<button id="btn">회원정보 읽어오기</button>
</body>
</html>