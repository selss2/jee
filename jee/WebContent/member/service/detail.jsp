<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원 상세정보</title>
<link rel="stylesheet" href="../../css/member.css" />
<style>
	#member_detail{border: 1px solid gray; width 100%; height: 400px; margin: 0 auto; border-collapse: collapse;
	}
	#member_detail tr{border: 1px solid gray; height: 20%;}
	#member_detail tr td{border: 1px solid gray;}
	.font_bold{font-weight: bold;}
	.bg_color_yellow{background-color: yellow}
	
 </style>
</head>
<body>
	<!-- id, birth,name,regDate,gender,profileImg  -->
	<div class="box">
		<h1>회원 상세정보</h1>
		<br>

		<table id="member_detail">
			<tr>
				<td rowspan="3" style="width: 30%">
				<img src="../../img/p0G006wv.jpg" alt="" width="100%" height="60%"/>
				<!-- width="104" height="142" -->
				</td>
				<td style="width: 20%" class="font_bold bg_color_yellow">ID</td>
				<td style="width: 40%"></td>
			</tr>
			<tr>
				<td class="font_bold bg_color_yellow">이름</td>
				<td></td>
			</tr>
			<tr>
				<td class="font_bold bg_color_yellow">성별</td>
				<td></td>
			</tr>
			<tr>
				<td class="font_bold bg_color_yellow">생년월일</td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td class="font_bold bg_color_yellow">등록일</td>
				<td colspan="2"></td>
			</tr>
		</table>

		<a href="../memberController.jsp"><img src="../../img/ThumbnailAction.jpg" alt="" width="10%" height="10%"></a>
	 <a href="../../index.jsp"><img src="../../img/home.png" alt="" width="10%" height="10%"></a>

	</div>

</body>
</html>