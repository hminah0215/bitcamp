<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){
			var keyword = $("#keyword").val();
			var data = {keyword:keyword};	// : 앞의 keyword는 매개변수와 이름이 같아야한다.
			$.ajax("tour",{data:data,success:function(r){
				//alert(r);

				var title = $(r).find("title");
				$.each(title,function(idx,item){
					//alert(item); object Element라고 10번 뜬다 
					//alert($(item).text()); //text형태로 읽어오면 관광지 이름이 뜸  
					var li = $("<li></li>").append($(item).text());
					$("#ul").append(li);
				});
			}});
		});
	});
</script>
</head>
<body>
	<input type="text" id="keyword">
	<button id="btn">검색</button><br>
	<ul id="ul">
	
	</ul>
</body>
</html>