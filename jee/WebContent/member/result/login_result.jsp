<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="member.MemberService" %>
    <%@ page import="member.MemberServiceImpl" %>
    <%@ page import="member.MemberBean" %>
    <%String ctx = application.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 result</title>
<link rel="stylesheet" href="<%=ctx%>/css/member.css" />
</head>
<body>
<div class="box">
<%
	MemberService service = MemberServiceImpl.getInstance();
	MemberBean mem = new MemberBean();
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	application.log("넘어온ID"+id);
	application.log("넘어온PW"+pw);
	if(id=="" || pw==""){
		%>
		<h2>로그인 실패!!</h2>
		<a href=" <%= ctx %>/member/service/login.jsp">다시 시도하기</a>
	
		<%
	}else{
		mem.setId(id);
		mem.setPw(pw);
		String name = service.login(mem);
		application.log("DB다녀온 이름:"+name);
		if(name==""){
			%>
			<h2>로그인 실패!!</h2>
			<a href=" <%= ctx %>/member/service/login.jsp">다시 시도하기</a>
				<%
		}else{
			response.sendRedirect(ctx+"/global/main.jsp");
		}
	}
%>
</div>	
</body>
</html>