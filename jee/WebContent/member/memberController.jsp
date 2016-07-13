<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
<title>Insert title here</title>
<link rel="stylesheet" href="../css/member.css" />
<style>
div.memberClass{font-size: 20px;}
</style>
</head>
<body>
	<div id="box" class="memberClass box">
	<h1>회원관리</h1>
	<div style="width: 300px; margin: 0 auto; text-align: left;">
		<ol>
			<li><a href="service/regist.jsp">회원가입</a></li>
			<li><a href="service/findById.jsp">내정보보기</a></li>
			<li><a href="service/update.jsp">내정보수정(비번) </a></li>
			<li><a href="service/delete.jsp">탈퇴 </a></li>
			<li><a href="service/login.jsp">로그인</a></li>
			<li><a href="service/list.jsp">리스트 </a></li>
			<li><a href="service/findBy.jsp">검색(이름)</a></li>
			<li><a href="service/count.jsp">회원수</a></li>
		</ol>
		</div>
		<a href="../index.jsp"><img src="../../home.png" alt="" width="10%" height="10%"></a>
	</div>
	<div id="box2" class="memberClass">
	
	</div>
</body>
</html>