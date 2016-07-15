<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String ctx = application.getContextPath();
%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>footer</title>
</head>
<body>
<div align="center">
	<a href="<%=ctx%>/global/main.jsp">메인화면으로</a><br/>
	<img src="<%=ctx%>/img/hydrangeas.jpg"/>
	<br>
	<%
		int sum = 0;
		for (int i = 0; i <= 10; i++){
			sum += i;
		}
	%><%=sum%><br/>
</div>
</body>
</html>