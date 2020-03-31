<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		var li;
		
		var newsList = [
			{title:"코로나19 유럽·중동 확산에 WHO 첫 ‘팬데믹’ 선언", url:"https://news.naver.com/main/read.nhn?mode=LSD&mid=shm&sid1=104&oid=022&aid=0003445692"},
			{title:"트럼프, 코로나 확진자 접촉한 의원과 악수…워싱턴 발칵", url:"https://news.naver.com/main/read.nhn?mode=LSD&mid=shm&sid1=104&oid=025&aid=0002982621"},
			{title:"[날씨] 전국 흐리고 봄비...비 온 뒤 '찬 바람'", url:"https://news.naver.com/main/read.nhn?mode=LSD&mid=shm&sid1=103&oid=052&aid=0001412425"},
			{title:"고국 돌아간다 버려졌지만… 성격 최고 믹스견", url:"https://news.naver.com/main/read.nhn?mode=LSD&mid=shm&sid1=103&oid=469&aid=0000474980"},
			{title:"하루 100kcal만, 고기 대신 '이것' 먹으면 사망 위험 ↓", url:"https://news.naver.com/main/read.nhn?mode=LSD&mid=shm&sid1=103&oid=346&aid=0000030905"}
		];
		
		
		for(var i = 0; i<newsList.length; i++){
			
			var news = newsList[i];
		
			li = document.createElement("li");
			var txt = document.createTextNode(news.title);
			
			var a = document.createElement("a");
			a.appendChild(txt);
			a.href = news.url;
			
			li.appendChild(a);
			document.getElementsByTagName("ul")[0].appendChild(li);
			
		}
	}
</script>
</head>
<body>
	<h2>오늘의 주요뉴스</h2>	
	<ul></ul>
</body>
</html>