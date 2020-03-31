<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		var arr = [
			{no:1, name:"스타킹1", price:1000, qty:10, fname:"stock1.jpg"},
			{no:2, name:"스타킹2", price:2000, qty:10, fname:"stock2.jpg"},
			{no:3, name:"스타킹3", price:3000, qty:10, fname:"stock3.jpg"},
			{no:4, name:"스타킹4", price:4000, qty:10, fname:"stock4.jpg"},
			{no:5, name:"스타킹5", price:5000, qty:10, fname:"stock5.jpg"}
			];
		
		$.each(arr, function(idx, item){
			var li = $("<li></li>").html("<h2>" +item.no + "/" +item.name + "</h2>");
			$(li).attr("idx",idx);
			$("#list").append(li);
			
			$("li").click(function(){
				var idx = $(this).attr("idx");
				var g = arr[idx];
				$("#img").attr("src", g.fname);
				$("#no").html(g.no);
				$("#name").html(g.name);
				$("#qty").html(g.qty);
				$("#price").html(g.price);
			});
		});
	});
</script>
</head>
<body>
	<ul id="list"></ul>
	<table>
		<tr>
			<td><img id="img" width="100" height="100"></td>
			<td>
				<p id="no"></p>
				<p id="name"></p>
				<p id="qty"></p>
				<p id="price"></p>
			</td>
		</tr>
	</table>
</body>
</html>