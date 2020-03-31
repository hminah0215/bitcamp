<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		var original = ["add.jpg", "update.jpg", "del.jpg"];	
		var change = [ "add2.jpg", "update2.jpg", "del2.jpg" ];
		var menu = document.getElementsByClassName("orgin");
		var i;
		
		for( i=0; i < menu.length; i++){
			//menu[i].setAttribute("idx",i);
			
			menu[i].onmouseover = function(){
				console.log(i);
			//	var idx = this.getAttribute("idx");
			//	this.src = change[idx];
				this.src = change[i];
			}
			
			menu[i].onmouseleave = function(){
				console.log(i);
			//	var idx = this.getAttribute("idx");
			//	this.src = original[idx];
				this.src = original[i];
			}
		}
		
	}
</script>
</head>
<body>
	<img src="add.jpg" class="orgin">
	<img src="update.jpg" class="orgin">
	<img src="del.jpg" class="orgin">
</body>
</html>