<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		var input = document.getElementsByTagName("input");
		// 모든 input태그들을 바라보는 배열
		
		var selTr;	//삭제할때 선택한 행을 바라보는 변수
		var arr;   //선택한 행의 자식노드들(td들)을 바라볼 변수(배열)
		
		
		//삭제버튼이 눌러졌을때의 이벤트처리
		document.getElementById("btnDelete").onclick = function(){
			//테이블(tb)로부터 선택한 행(selTr)을 삭제한다.
			document.getElementById("tb").removeChild(selTr);
		}
		
		
		//수정버튼이 눌러졌을때의 이벤트처리
		document.getElementById("btnUpdate").onclick = function(){
			//총점을 누적하기 위한 변수 (값이 수정되면 다시 계산해야하니까)
			var tot = 0;
			
			//input태그의 수 만큼 반복실행한다.
			for( var i = 0 ; i < input.length ; i++){
				
				//입력내용으로 선택한 행의 td의 내용을 바꾼다.
				arr[i].innerHTML = input[i].value;
				
				//총점을 누적한다. (0번째는 이름이니 제외)
				if( i != 0){
					//입력양식의 내용은 문자로 취급하므로 eval을 이용해 계산할 수 있는 형태로 변경하여 누적한다.
					tot += eval(input[i].value);
				}
			}
			
			// 평균을 계산한다.
			avg = tot/3;
			
			//계산된 총점과 평균을 선택한 행의 td에 담는다.
			arr[4].innerHTML = tot;
			arr[5].innerHTML = avg;
			
		}
		
		
		//등록버튼이 눌러졌을때의 이벤트처리 
		document.getElementById("btnAdd").onclick = function(){
			
			//총점을 누적하기 위한 변수를 선언한다. 
			var tot = 0;
			
			//tr노드를 생성한다. 
			var tr = document.createElement("tr");		
			
			
			// 생성된 tr에 클릭이벤트를 설정하여 선택한 행의 정보를 각각의 입력창에 출력해요.
			tr.onclick = function(){
				
				//모든 tr의 배경을 흰색으로 설정해요.
				var trlist = document.getElementsByTagName("tr");
				for(var i  = 0; i<trlist.length;  i++){
					trlist[i].style.background = "white";
				}
				
				
				//선택한 행에 하이라이트를 설정해요.
				this.style.background = "skyblue";
				
				//선택한 tr(자기자신)을 selTr에 설정해요. 
				selTr = this;
				
				//선택한 tr의 자식노드를 읽어옵니다. 그것은 곧 td들 입니다.
				arr = this.childNodes;
				
				//선택한 행의 td중에 이름, 국어, 영어, 수학만 입력창에 출력해요.
				for(var i =0; i < input.length; i++){
					input[i].value = arr[i].innerHTML;
				}
				
			
			}
			
			
			
			
			//input태그들의 요소만큼 txt 노드를 생성한다.
			for(var i = 0; i< input.length ; i++){
				var txtNode = document.createTextNode( input[i].value );
				
				//td를 생성한다.
				var td = document.createElement("td");
				
				//td에 텍스트노드를 담는다. 
				td.appendChild(txtNode);
				
				//td를 tr에 추가한다.
				tr.appendChild(td);
				
				//총점을 누적한다. 
				//i가 0일때는 이름이므로, 제외하고 누적한다.
				if( i != 0){
					
					//계산할 수 있는 숫자로 변환하여 누적한다.eval, number 
					tot += eval( input[i].value	 );
				}//end if
			}// end for
			
			//평균을 계산한다.
			avg = tot/3;
			
			//총점을 위한 텍스트노드를 생성한다.
			var txtTot = document.createTextNode(tot);
			
			//평균을 위한 텍스트노드를 생성한다.
			var txtAvg = document.createTextNode(avg);
			
			//총점을 위한 td태그를 생성한다.
			var tdTot = document.createElement("td");
			
			//평균을 위한 td태그를 생성한다.
			var tdAvg = document.createElement("td");
			
			//총점을 위한 td태그에 텍스트노드를 담는다.
			tdTot.appendChild(txtTot);
			
			//평균을 위한 td태그에 텍스트노드를 담는다.
			tdAvg.appendChild(txtAvg);
			
			//총점을 위한 td를 tr에 담는다. 
			 tr.appendChild(tdTot);
			
			//평균을 위한 td를 tr에 담는다. 
			 tr.appendChild(tdAvg);
			
			//생선된 tr을 테이블에 담아요. 
			document.getElementById("tb").appendChild(tr);
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

	이름 : <input type="text"><br> 
	국어 : <input type="text"><br> 
	영어 : <input type="text"><br> 
	수학 : <input type="text"><br>

	<button id="btnAdd">등록</button>
	<button id="btnUpdate">수정</button>
	<button id="btnDelete">삭제</button>
</body>
</html>