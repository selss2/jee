<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%
    String ctx = application.getContextPath();
    %>
    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
<title>내 정보 보기</title>
<link rel="stylesheet" href=" <%= ctx %>/css/member.css" />

</head>
<body>
	<div  class = "box" style="width:500px;margin: 0 auto;text-align:center;">
		<h1>내 정보 보기</h1> <br>
		
		<img src="w3schools.jpg" alt="W3Schools.com" width="104" height="142">
		<a href=" <%= ctx %>/member/member_controller.jsp"><img src=" <%= ctx %>/img/ThumbnailAction.jpg" alt="" width="10%" height="10%"></a>
	 <a href=" <%= ctx %>/index.jsp"><img src=" <%= ctx %>/img/home.png" alt="" width="10%" height="10%"></a>	
	</div>
</body>
</html>