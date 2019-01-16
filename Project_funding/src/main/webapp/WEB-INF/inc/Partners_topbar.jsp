<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Puding</title>
<link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
<style type="text/css">
#ho:hover {
	position: relative;
	top: calc(100% - 0.125rem);
	border-bottom: 4px solid #FFA7A7;
	left: 50%;
	right: 50%;
	transition: all 0.5s ease;
	left: 0;
	right: 0;
	transition: all 0.5s ease;
}
</style>
</head>

<body>
	<nav
		class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg"
		id="sectionsNav">
		<div class="container">
			<div class="navbar-translate">
				<a href="index.do"><img
					src="resources/assets/img/main_Icon_white.png" id="main_logo"
					style="width: 100px;" /></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="sr-only">Toggle navigation</span> <span
						class="navbar-toggler-icon"></span> <span
						class="navbar-toggler-icon"></span> <span
						class="navbar-toggler-icon"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav">
					<li class="nav-item" id="item1"></li>
					<li class="nav-item"><a href="partner_mypage.do" class="nav-link">나의
							푸딩</a></li>
					<li class="nav-item"><a href="project_insert.do"
						class="nav-link" style="color: white">프로젝트 등록</a></li>
					<li class="nav-item"><a href="project_list.do"
						class="nav-link" style="color: white">프로젝트 찾기</a></li>
					<li class="nav-item"><a href="partner_list.do"
						class="nav-link" style="color: white">파트너스 목록</a></li>
					<li class="nav-item"><a href="question.do" class="nav-link"
						style="color: white">이용 방법</a></li>
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item" style="float: right;"><a href="#pablo"
						class="btn btn-rose btn-raised btn-fab btn-round"
						data-toggle="dropdown"> <i class="material-icons">email</i>
					</a></li>
				<li class="nav-item"><a href="#pablo" class="nav-link">${userdto.user_id }</a>

					<li class="nav-item">
						<a href="logOut.do" class="nav-link"style="color: white">Log out</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<nav
		class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg"
		id="sectionsNav"
		style="background-color: #D5D5D5; margin-top: 70px; height: 55px;">
		<div class="container">
			<div class="navbar-translate" style="width: 100px;">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="sr-only">Toggle navigation</span> <span
						class="navbar-toggler-icon"></span> <span
						class="navbar-toggler-icon"></span> <span
						class="navbar-toggler-icon"></span>
				</button>
			</div>

			<div class="collapse navbar-collapse">
				<ul class="navbar-nav" style="color: black;">
					<li class="nav-item" id="item1"></li>
					<li class="nav-item"><a href="partners_profile.do"
						class="nav-link" id="ho" style="padding-top: 17px;">내 프로필</a></li>
					<li class="nav-item"><a href="user_typeUpdate.do"
						class="nav-link" id="ho" style="padding-top: 17px;">계정 유형 변경
							신청</a></li>
					<li class="nav-item"><a href="project_supportList.do"
						class="nav-link" id="ho" style="padding-top: 17px;">지원 내역</a></li>
					<li class="nav-item"><a href="project_ing.do" class="nav-link"
						id="ho" style="padding-top: 17px;">진행중인 프로젝트</a></li>
					<li class="nav-item"><a href="project_end.do" class="nav-link"
						id="ho" style="padding-top: 17px;">완료한 프로젝트</a></li>
				</ul>
			</div>
			</div>
			
	</nav>
	<br>
	<br>
	<br>
</body>
</html>