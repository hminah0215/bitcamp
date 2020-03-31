<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  	판매결과 : ${re }<br>
	<h2>도서판매</h2>
	<hr> 
	<form action="insertOrders.do" method="post">
		고객명 : 
			<select name="custid">
				<c:forEach var="c" items="${cList }">
					<option value="${c.custid }">${c.name }</option>
				</c:forEach>
			</select><br>
			
		도서명 : 
			<select name="bookid">
				<c:forEach var="b" items="${bList }">
					<option value="${b.bookid }">${b.bookname}(${b.publisher })/${b.price }</option>
				</c:forEach>
			</select><br>
		
		판매가격 : <input type="number" name="saleprice" ><br>
		<input type="submit" value="판매">
		<input type="reset" value="취소">
	</form>
</body>
</html>