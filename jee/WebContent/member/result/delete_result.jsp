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
<title>탈퇴</title>
<link rel="stylesheet" href=" <%= ctx %>/css/member.css" />
	
</head>
<body>
<div class = "box">
	탈퇴결과창 <br>
<%
	MemberService service = MemberServiceImpl.getInstance();
	MemberBean mem = new MemberBean();
		service.delete(mem);
%><h2>탈퇴되었습니다!!!</h2>
<a href=" <%= ctx %>/member/service/login.jsp">로그인하러 가기</a>
	</div>
</body>
</html>