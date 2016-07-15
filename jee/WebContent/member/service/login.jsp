<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%
    String ctx = application.getContextPath();
    %>
    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
<title>로그인</title>
<link rel="stylesheet" href=" <%= ctx %>/css/member.css" />

</head>
<body>
	<div class = "box">
		<form action = " <%= ctx %>/member/result/login_result.jsp" method="post">
			<span class="meta"> ID : </span> <input type="text" name="id"/><br/>
			<span class="meta"> PW : </span> <input type="password" name="pw"/><br/>
			
			<br/><br/>
			<input type = "submit" value="로그인">
			<input type = "reset" value="취소">
		</form>
		<a href=" <%= ctx %>/member/member_controller.jsp"><img src=" <%= ctx %>/img/ThumbnailAction.jpg" alt="" width="10%" height="10%"></a>
		<a href=" <%= ctx %>/index.jsp"><img src=" <%= ctx %>/img/home.png" alt="" width="10%" height="10%"></a>
	</div>
</body>
</html>