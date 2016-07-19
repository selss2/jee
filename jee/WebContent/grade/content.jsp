<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctx = application.getContextPath(); %>
<jsp:include page="../../global/top.jsp"/>
	<jsp:include page="../../global/header.jsp"/>
	<jsp:include page="../../global/navi.jsp"/>
		<div class="box">
			<h2>서비스를 이용하시려면 회원가입이 필요합니다.</h2>
			<a href="<%= ctx %>/member/service/regist.jsp">회원가입 하러 가기</a><br/>
			<a href="<%= ctx %>/member/service/login.jsp">로그인 하러 가기</a><br/>
			<a href="<%= ctx %>/global/main.jsp">[임시]메인화면 바로 가기</a><br/>
		</div>
<jsp:include page="../../global/footer.jsp"/>
<jsp:include page="../../global/end.jsp"/>