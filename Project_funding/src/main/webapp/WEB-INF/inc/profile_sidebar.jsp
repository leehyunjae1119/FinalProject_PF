<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="resources/assets/css/pw_change.css" rel="stylesheet">
</head>
<body>

	<div class="col-md-3" id="sidebar">
		<b>파트너스</b>&nbsp;&nbsp; <a href="user_infoUpdate.do">기본정보 수정하기</a>

		<hr>
		<div class="user_info">
			<img src="resources/assets/img/Teemo.png"
				class="user_img rounded-circle img-fluid" />
			<div class="user_info">
				<p>${userdto.user_id }</p>
				<p>${userdto.user_email }</p>
			</div>
		</div>
		<hr>
		<div class="col-md-12">
			<a class="btn btn-link2 active" href="partnerReg_info.do">파트너스 정보</a>
			<a class="btn btn-link2 active" href="partnerReg_about.do">자기 소개</a>
			<a class="btn btn-link2 active" href="partnerReg_portfolio.do">포트폴리오</a>
			<a class="btn btn-link2 active" href="partnerReg_technology.do">보유
				기술</a> <a class="btn btn-link2 active" href="partnerReg_career.do">경력/학력/자격증</a>
		</div>

	</div>


</body>
</html>