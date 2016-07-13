<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="../../css/member.css" />
<style type="text/css">
 div{border: 1px solid black;margin: 7px auto;
 width: 400px;text-align: center;}
 div.joinDiv{border: 1px dotted gray; width: 80%; margin:8px;}
</style>
</head>
<body>
<div class = "box">

<form action="" method="get">
	이름 : <input type = "text" name="name"/><br/>
	ID : <input type = "text" name="id"/><br/>
	PW : <input type = "text" name="pw"/><br/>
	SSN : <input type = "text" name="ssn" size="6">
	- <input type = "text" size="1"/> <br/>"WebContent/member2/service/delete.html"
	
	통신사 :
	<input type="checkbox" name="SKT" value="skt"/>SKT
	<input type="checkbox" name="KT" value="kt"/>KT
	<input type="checkbox" name="LGU" value="lgu"/>LGU+ <br/>
	
	성별 :
	<input type="checkbox" name="gender" value="male"/> 남자
	<input type="checkbox" name="gender" value="female"/> 여자 <br/>
	<input type="submit" value="회원가입"/>
	<input type="reset" value="취소"/><br/>
	
	 <a href="../memberController.jsp"><img src="../../img/ThumbnailAction.jpg" alt="" width="10%" height="10%"></a>
	 <a href="../../index.jsp"><img src="../../img/home.png" alt="" width="10%" height="10%"></a>
	</form>
	</div>
</body>
</html>