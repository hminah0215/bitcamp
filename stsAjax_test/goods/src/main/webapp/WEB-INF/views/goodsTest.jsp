<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	th{color: red;}
	img{width: 70px; height: 70px;}
	.active{background: skyblue;}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		var arr;
		$.ajax("listGoods.do",{success:function(data){
			//alert(data);
			arr = data;
			$.each(arr, function(idx, goods){
				var td1 = $("<td></td>").html(goods.no);
				var td2 = $("<td></td>").html(goods.item);
				var tr = $("<tr></tr>").attr("idx", idx).append(td1, td2);
				$("#tb").append(tr);


				$(tr).click(function(){	
					$("tr").removeClass("active");
					$(this).addClass("active");
					
					var idx = $(this).attr("idx");
					var goods = arr[idx];
					$("#img").attr("src","resources/"+goods.fname);
					$("#no").html(goods.no);
					$("#item").html(goods.item);
					$("#qty").html(goods.qty);
					$("#price").html(goods.price);
					$("#detail").html(goods.detail);
			
				});
			});
		}});
	});
</script>
</head>
<body>
	<h2>상품관리</h2>
	<hr>
	<table id="tb" border="1" width="80%">
		<tr>
			<th>상품번호</th>
			<th>상품명</th>
		</tr>
		</table>
		<table>
		<tr>
			<td>
				<img id="img" src="">
			</td>
			<td>
				상품번호 : <span id="no"></span><br>
				상품명 : <span id="item"></span><br>
				수량 : <span id="qty"></span><br>
				가격 : <span id="price"></span><br>
				상품설명 : <span id="detail"></span><br> 
			</td>
		</tr>
	</table>
</body>
</html>