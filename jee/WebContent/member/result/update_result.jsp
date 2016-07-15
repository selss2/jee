<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="member.MemberService" %>
    <%@ page import="member.MemberServiceImpl" %>
    <%@ page import="member.MemberBean" %>
    <%String ctx = application.getContextPath(); %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
<title>수정</title>
<link rel="stylesheet" href=" <%= ctx %>/css/member.css" />
	
</head>
<body>
<div class = "box">
	수정 결과 <br>
<%
	MemberService service = MemberServiceImpl.getInstance();
	MemberBean mem = new MemberBean();
	
	
	String pw = request.getParameter("pw");
	application.log("변경할 비번 출력해보기 : "+pw);
		mem.setId(service.getSession().getId());
		mem.setPw(pw);
		service.update(mem);
%><h2>비밀번호 변경완료!!!</h2>
<a href=" <%= ctx %>/member/service/login.jsp">변경된 비밀번호로 로그인하러 가기</a>
	</div>
</body>
</html>