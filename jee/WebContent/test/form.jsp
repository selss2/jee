<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Document</title>
</head>
<body>
	<form action="" method="get">
	이름 : <input type = "text" name="name"/><br/>
	ID : <input type = "text" name="id"/><br/>
	PW : <input type = "text" name="pw"/><br/>
	SSN : <input type = "text" name="ssn" size="6">
	- <input type = "text" size="1"/> <br/>
	
	통신사 :
	<input type="checkbox" name="SKT" value="skt"/>SKT
	<input type="checkbox" name="KT" value="kt"/>KT
	<input type="checkbox" name="LGU" value="lgu"/>LGU+ <br/>
	
	성별 :
	<input type="checkbox" name="gender" value="male"/> 남자
	<input type="checkbox" name="gender" value="female"/> 여자 <br/>
	<input type="submit" value="회원가입"/>
	<input type="reset" value="취소"/>
	
	
	</form>
</body>
</html>