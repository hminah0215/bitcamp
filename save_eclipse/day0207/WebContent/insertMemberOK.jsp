<%@page import="java.util.ArrayList"%>
<%@page import="com.bit.dao.MemberDAO"%>
<%@page import="com.bit.vo.MemberVO"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		//bit1234/bit1234 계정을 생성하고
		//다음의 자료를 추가할 테이블(member)을 생성하고
		//데이터베이스에 insert를 수행하도록 기능을 추가합니다

		//SQL> create user c##bit1234 identified by bit1234;
		//SQL> grant connect, resource, dba to c##bit1234;

		/*
		create table member (id varchar2(20) primary key, pwd varchar2(20), name varchar2(20), tel varchar2(20),
		birth date, email varchar2(20), gender varchar2(10), blood varchar2(10), hobby varchar2(60), url varchar2(100),
		job varchar2(20), intro varchar2(1000));
		
		insert into member values (?,?,?,?,?,?,?,?,?,?,?,?);
		*/

		//사용자가 요청한 데이터는 한글입니다를 설정
		request.setCharacterEncoding("UTF-8");

		String method = request.getMethod();

		//사용자가 입력한 데이터를 가져옴
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String blood = request.getParameter("blood");
		String[] hobby = request.getParameterValues("hobby");
		String url = request.getParameter("url");
		String job = request.getParameter("job");
		String intro = request.getParameter("intro");
		String hobbys = "";

		//"생일"은 자료형을 어떻게 해요?
		//데이터베이스 컬럼은 date로 해요
		//vo는 String으로 해요
		//request.getParmater가 String을 반환합니다
		//vo에 있는걸 table로 보낼때 to_date함수 이용
		//table에 있는걸 vo로 가져올때 to_char함수 이용
		//to_date('2020/01/01', 'yyyy/mm/dd')

		//hobbys = Arrays.toString(hobby);
		for (String ho : hobby) {
			hobbys = hobbys + ho + ",";
	%>
	<%=hobbys%>
	<%
		}

		int re = -1;

		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		if (method.equals("POST")) {
			MemberVO m = new MemberVO(id, pwd, name, tel, birth, email, gender, blood, hobbys, url, job, intro);
			MemberDAO m_dao = new MemberDAO();
			re = m_dao.insertMember(m);

			if (re > 0) {
				System.out.println("등록성공");
			} else {
				System.out.println("등록실패");
			}
		}
	%>
	입력정보는 다음과 같습니다
	<br> 아이디 :
	<%=id%><br> 암호 :
	<%=pwd%><br> 이름 :
	<%=name%><br> 전화번호 :
	<%=tel%><br> 생일 :
	<%=birth%><br> 이메일 :
	<%=email%><br> 성별 :
	<%=gender%><br> 혈액형 :
	<%=blood%><br> 취미 :
	<br>
	<%
		//hobbys = Arrays.toString(hobby);
		for (String ho : hobby) {
			hobbys = hobbys + ho + ",";
	%>
	<%=hobbys%>
	<%
		}
	%><br> 홈페이지주소 :
	<%=url%><br> 직업 :
	<%=job%><br> 자기소개 :
	<%=intro%><br>


</body>
</html>









