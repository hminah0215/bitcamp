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
			{title:"코로나19 유럽·중동 확산에 WHO 첫 ‘팬데믹’ 선언", url:"https://news.naver.com/main/read.nhn?mode=LSD&mid=shm&sid1=104&oid=022&aid=0003445692", content:"신종 코로나바이러스 감염증(코로나19)의 팬데믹(세계적 대유행·pandemic) 정의에 선을 그어온 WHO(세계보건기구)가 9일(현지시간) 처음으로 '팬데믹 위협이 매우 현실화하고 있다'고 내다봤다. 발병지인 중국을 비롯해 인근 국가로 확산하던 코로나19가 유럽, 중동, 미국까지 빠르게 확산하고 있는데 따른 것이다."},
			{title:"트럼프, 코로나 확진자 접촉한 의원과 악수…워싱턴 발칵", url:"https://news.naver.com/main/read.nhn?mode=LSD&mid=shm&sid1=104&oid=025&aid=0002982621", content:"신종 코로나바이러스 감염증(코로나19) 확진자와 접촉한 하원의원과 접촉한 도널드 트럼프 미국 대통령은 코로나19 진단 검사를 받아야 할까. "},
			{title:"[날씨] 전국 흐리고 봄비...비 온 뒤 '찬 바람'", url:"https://news.naver.com/main/read.nhn?mode=LSD&mid=shm&sid1=103&oid=052&aid=0001412425", content:"오늘 나오실 때는 우산을 꼭 챙기시는 게 좋겠습니다.전국 곳곳에 봄비가 내리고 있는데요."},
			{title:"고국 돌아간다 버려졌지만… 성격 최고 믹스견", url:"https://news.naver.com/main/read.nhn?mode=LSD&mid=shm&sid1=103&oid=469&aid=0000474980", content:"매주 토요일 서울 이태원 근처 노란천막 아래에서는 자원봉사단체 ‘유기동물행복찾는사람들’(이하 유행사)회원들이 준비한 유기견, 유기묘의 가족 찾기 행사가 열립니다. "},
			{title:"하루 100kcal만, 고기 대신 '이것' 먹으면 사망 위험 ↓", url:"https://news.naver.com/main/read.nhn?mode=LSD&mid=shm&sid1=103&oid=346&aid=0000030905", content:"하루 먹는 식단의 100kcal를 고기 등 동물성 단백질 대신 콩, 견과류, 통곡물 등 식물성 단백질로 바꾸면 사망 위험이 감소한다는 연구 결과가 나왔다."}
		];
		
		
		for(var i = 0; i<newsList.length; i++){
			
			var news = newsList[i];
		
			li = document.createElement("li");
			var txt = document.createTextNode(news.title);
			li.appendChild(txt);
			li.setAttribute("idx",i)
			document.getElementsByTagName("ul")[0].appendChild(li);
			
			li.onclick = function(){
				var idx = this.getAttribute("idx");
				document.getElementById("content").value = newsList[idx].content
			}
	
		}
	}
</script>
</head>
<body>
	<h2>오늘의 주요뉴스</h2>	
	<ul></ul>
	<textarea rows="10" cols="80" id="content"></textarea>
</body>
</html>