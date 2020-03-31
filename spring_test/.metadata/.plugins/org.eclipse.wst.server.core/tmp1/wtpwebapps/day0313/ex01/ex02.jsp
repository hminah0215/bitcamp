<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.border{
		border: 1px solid black;
		border-radius: 15px;
		width: 200px;
		height: 200px;
	}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		var str  = "<memberList>";		//이게 제일 부모노드
		
		str += "<member>";
		str +="<name>최영수</name>";
		str += "<address>대한민국 광양</address>";
		str += "</member>";
		
		str += "<member>";
		str +="<name>홍길동</name>";
		str += "<address>대한민국 천안</address>";
		str += "</member>";
		
		str += "<member>";
		str +="<name>최잉어</name>";
		str += "<address>중국 길림성</address>";
		str += "</member>";
		
		str += "</memberList>"	;		//열었으면 닫아줄것
		
		var xmlDoc = $.parseXML(str);
		
		var listMember = $(xmlDoc).find("member");	//xmlDoc로부터 member를 찾아주세요.
		
		$.each(listMember, function(idx, aa){
			var div = $("<div></div>").addClass("border");
			var h2 = $("<h2></h2>").html( $(this).find("name").text() );
			var p = $("<p></p>").html( $(this).find("address").text() );
			$(div).append(h2,p);
			$("body").append(div);
		});
	});
</script>
</head>
<body>

</body>
</html>