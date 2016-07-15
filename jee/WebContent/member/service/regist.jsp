<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%
    String ctx = application.getContextPath();
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href=" <%= ctx %>/css/member.css" />
<style>
h1 {color: blue;}
h5 {border: 1px solid black; width: 800px; margin: 0 auto;}
p {color : red;}
span.meta{width: 200px; background-color: yellow; float: left;}
div.joinDiv{border: 1px dotted black; width: 500px; margin: 0 auto;}
</style>
</head>
<body>
<div class = "box">

	<form action=" <%= ctx %>/member/result/regist_result.jsp" method="post">
	<span class="meta"> 이름 : </span><input type="text" name="name"><br/>
	<span class="meta"> ID : </span> <input type="text" name="id"><br/>
	<span class="meta"> PW : </span> <input type="text" name="pw"><br/>
	<span class="meta"> SSN : </span> <input type="text" name="ssn"><br/>
	
	<span class="meta"> 전공 </span>
	<input type="radio" name="major" value="computer" checked/> 컴퓨터공학
	<input type="radio" name="major" value="mgmt"/> 경영학부
	<input type="radio" name="major" value="math"/> 수학부
	<input type="radio" name="major" value="eng"/> 영문학부

	<span class="meta"> 수강과목 </span>
	<input type="checkbox" name="subject" value="java"/>Java
	<input type="checkbox" name="subject" value="sql"/>SQL
	<input type="checkbox" name="subject" value="cpp"/>C++
	<input type="checkbox" name="subject" value="python"/>파이썬
	<input type="checkbox" name="subject" value="delphi"/>델파이<br/>
	
	<input type="submit" value="회원가입"/>
	<input type="reset" value="취소"/><br/>
	</form>
	
	 <a href=" <%= ctx %>/member/member_controller.jsp"><img src=" <%= ctx %>/img/ThumbnailAction.jpg" alt="" width="10%" height="10%"></a>
	 <a href=" <%= ctx %>/index.jsp"><img src=" <%= ctx %>/img/home.png" alt="" width="10%" height="10%"></a>
	</div>
</body>
</html>