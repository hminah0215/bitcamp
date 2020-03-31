<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		var arr  = [
			{no:1, name:"스타킹1", qty:10, price:1200, fname:"stock1.jpg"},
			{no:2, name:"스타킹2", qty:10, price:1700, fname:"stock2.jpg"},
			{no:3, name:"스타킹3", qty:10, price:1100, fname:"stock3.jpg"},
			{no:4, name:"스타킹4", qty:10, price:900, fname:"stock4.jpg"},
			{no:5, name:"스타킹5", qty:10, price:1000, fname:"stock5.jpg"}]
		
		document.getElementById("btn").onclick = function(){
			
				
			for(var i = 0; i<arr.length; i++){
				
				var tr = document.createElement("tr");
				
				var td_no = document.createElement("td");
				var td_name = document.createElement("td");
				var td_qty = document.createElement("td");
				var td_price = document.createElement("td");
				var td_img = document.createElement("td");
				var td_fname = document.createElement("img");
				
				
				var no = document.createTextNode(arr[i].no);
				var name = document.createTextNode(arr[i].name);
				var qty = document.createTextNode(arr[i].qty);
				var price = document.createTextNode(arr[i].price);
				var fname = document.createTextNode(arr[i].fname);
				
				td_no.appendChild(no);
				td_name.appendChild(name);
				td_qty.appendChild(qty);
				td_price.appendChild(price);
				td_fname.src = arr[i].fname;
				td_fname.width ="50";
				td_fname.height ="50";
							
				td_img.appendChild(td_fname);
				
				tr.appendChild(td_no);
				tr.appendChild(td_name);
				tr.appendChild(td_qty);
				tr.appendChild(td_price);
				tr.appendChild(td_img);
				
				document.getElementById("tb").appendChild(tr);
			}
	
		}
	}
</script>
</head>
<body>
	<h2>장바구니 목록</h2>
	<table border="1" width="80%" id="tb">
		<tr>
			<td>상품번호</td>
			<td>상품명</td>
			<td>수량</td>
			<td>가격</td>
			<td>사진</td>
		</tr>
	
	</table>
	<button id="btn">장바구니 목록 읽어오기</button>
</body>
</html>