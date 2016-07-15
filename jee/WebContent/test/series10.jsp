<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head></head>
	<meta charset="UTF-8" />
	<title>시리즈10</title>
	
</head>
<body>
<h>문제 : </h><br/>
	<%
	int sum = 0;
	for (int i = 1; i < 11; i++) {
		sum += i;
		if (i<10) {
			%><%=i+"+"%><%
		}else{
			%><%=i+"="%><%=sum%><%
		}
	}
	 %>
	 <br><h>문제 2:</h>
	 <br><h>구구단(책받침)</h></br>
	 <% for (int i = 1; i < 10; i++) {
			for (int j = 2; j < 6; j++) {
				%>
				<%=j %> x <%= i %> = <%= i*j%>
				<%
			} %><br>
		<%} %>
		<br>
		<br/>
		<%
		for (int i = 1; i < 10; i++) {
			for (int j = 6; j < 10; j++) {
				%>
				<%= j%> x <%= i%> = <%=i*j%>
				<%}%><br>
				<%}%>
</body>
</html>