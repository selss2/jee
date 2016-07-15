<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	String ctx = application.getContextPath();
%>

<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Document</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href=" <%=ctx%>/css/member.css" />
<style>
h1 {
	color: blue;
}

h5 {
	border: 1px solid black;
	width: 800px;
	margin: 0 auto;
}

p {
	color: red;
}

span.meta {
	width: 200px;
	background-color: yellow;
	float: left;
}

div.joinDiv {
	border: 1px dotted black;
	width: 500px;
	margin: 0 auto;
}
</style>
</head>
<body>
	<div class="box">
		<span class="meta"> 이름 </span>
		<%=request.getParameter("name")%><br /> <span class="meta">
			ID </span>
		<%=request.getParameter("id")%><br /> <span class="meta"> PW
		</span>
		<%=request.getParameter("pw")%><br /> <span class="meta"> SSN
		</span>
		<%=request.getParameter("ssn")%>
		-
		<%=request.getParameter("ssn2")%><br /> <span class="meta">
			전공 </span>
		<%=request.getParameter("major")%><br /> <span class="meta">
			수강과목 : </span>
		<%
			String[] subjects = request.getParameterValues("subject");
			if (subjects != null) {
				for (int i = 0; i < subjects.length; i++) {
		%><%=subjects[i]%><br />
		<%
			}
			}
		%>
		회원가입을 축하드립니다.
		<%=request.getParameter("name")%>
		님♥<br /> <a href=" <%=ctx%>/member/member_controller.jsp"><img
			src=" <%=ctx%>/img/ThumbnailAction.jpg" alt="" width="10%"
			height="10%"></a> <a href=" <%=ctx%>/index.jsp"><img
			src=" <%=ctx%>/img/home.png" alt="" width="10%" height="10%"></a>

	</div>
</body>
</html>