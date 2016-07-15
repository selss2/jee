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
<style>
img {
	display: block;
	margin: 0 auto;
}
</style>
<body>
	<div class="box"><div class = "box">
	<%
	MemberService service = MemberServiceImpl.getInstance();
	MemberBean mem = new MemberBean();
	service.getSession().getId();
	
	if(service.getSession().getId()==null){
		%><h1>로그인이 되어있지 않습니다!!</h1><br/>
		<a href="<%= ctx%>/member/service/login.jsp">로그인하러 이동!!</a>
		<%
	}else{
%>
	<form action = " <%= ctx %>/member/result/delete_result.jsp" method="post">
			<span class="meta"> 정말로 탈퇴!? ㅠㅠ </span> <br/>
			<input type = "submit" value="확인">
			<input type = "reset" value="취소">
		</form>
		<a href=" <%= ctx %>/member/member_controller.jsp"><img src=" <%= ctx %>/img/ThumbnailAction.jpg" alt="" width="10%" height="10%"></a>
		<a href=" <%= ctx %>/index.jsp"><img src=" <%= ctx %>/img/home.png" alt="" width="10%" height="10%"></a>
	<%
	}
	%>
		</div>
</body>
</html>