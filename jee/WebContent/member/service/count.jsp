<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%
    String ctx = application.getContextPath();
    %>
    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원수</title>
<link rel="stylesheet" href=" <%= ctx %>/css/member.css" />
</head>
<body>
<div class = "box">
	회원수 <br>
<a href=" <%= ctx %>/member/member_controller.jsp"><img src=" <%= ctx %>/img/ThumbnailAction.jpg" alt="" width="10%" height="10%"></a>
	 <a href=" <%= ctx %>/index.jsp"><img src=" <%= ctx %>/img/home.png" alt="" width="10%" height="10%"></a>
</div>
</body>
</html>
