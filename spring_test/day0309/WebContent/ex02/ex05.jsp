<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		//전역변수로 설정, 수정/등록/삭제에 다 필요하니까
		var arr;
		var input = document.getElementsByTagName("input");
		var selTr;
		
		document.getElementById("btnDelete").onclick = function(){
			document.getElementById("tb").removeChild(selTr);
		}
		
		
		document.getElementById("btnUpdate").onclick = function() {
			var tot = 0;
			for(var i in input){
				arr[i].innerHTML = input[i].value;
				if(i != 0){
					tot += eval(input[i].value);
				}
				if( i == 3){
					break;
				}
			}
			var avg = tot/3;
			arr[4].innerHTML = tot;
			arr[5].innerHTML = avg;
		}

		//등록버튼을 눌렀을때
		document.getElementById("btnAdd").onclick = function() {

			var tr = document.createElement("tr");

			//미래에 만들어진 tr에 이벤트
			tr.onclick = function() {
				selTr = this;
				arr = this.childNodes; //  this.childNode 나의 자식노드들
				
				//클릭하면 그 행의 색이 바뀌게! 다른걸 클릭하면 다시 하얀색으로
				var trlist = document.getElementsByTagName("tr");
				for(var i = 0 ; i<trlist.length; i++){
					trlist[i].style.background = "white";
				}
				
				this.style.backgroundColor = "orange";
			
				
				//눌러진 행의 정보를 각각의 입력양식에 출력하기
				for ( var i in input) {
					input[i].value = arr[i].innerHTML;

				}

			}
			var tot = 0;
			for (var i = 0; i < 4; i++) {
				var td = document.createElement("td");
				var txt = document.createTextNode(input[i].value);
				td.appendChild(txt);
				tr.appendChild(td);
				if (i != 0) {
					tot += eval(input[i].value);
				}
			}

			var txtTot = document.createTextNode(tot);
			var txtAvg = document.createTextNode(tot / 3);
			var tdTot = document.createElement("td");
			var tdAvg = document.createElement("td");
			tdTot.appendChild(txtTot);
			tdAvg.appendChild(txtAvg);
			tr.appendChild(tdTot);
			tr.appendChild(tdAvg);
			document.getElementById("tb").appendChild(tr);

			for ( var i in input) {
				input[i].value = "";
			}
		}
	}
</script>
</head>
<body>
	<table border="1" width="80%" id="tb">
		<tr>
			<td>이름</td>
			<td>국어</td>
			<td>영어</td>
			<td>수학</td>
			<td>총점</td>
			<td>평균</td>
		</tr>
	</table>

	이름 :<input type="text"><br> 
	국어 :<input type="text"><br> 
	영어 :<input type="text"><br> 
	수학 :<input type="text"><br>

	<button id="btnAdd">등록</button>
	<button id="btnUpdate">수정</button>
	<button id="btnDelete">삭제</button>
</body>
</html>