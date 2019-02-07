<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Puding</title>
<link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <!-- 구글로그인api -->
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id" content="194507075586-fqdh9s1af0jq81cq27hqe5m9fim0692t.apps.googleusercontent.com">
  

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
				<a href="main.do"><img src="resources/assets/img/main_Icon_white.png" id="main_logo" style="width:100px;"/></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					aria-expanded="false" aria-label="Toggle navigation" >
					<span class="sr-only">Toggle navigation</span> <span
						class="navbar-toggler-icon"></span> <span
						class="navbar-toggler-icon"></span> <span
						class="navbar-toggler-icon"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav">

					<li class="nav-item">
                    <a href="project_list.do?page=1" class="nav-link">프로젝트 찾기</a>
                  </li>
                  <li class="nav-item">
                    <a href="partner_list.do" class="nav-link">파트너스 목록</a>
                  </li>
                  <li class="nav-item">
                    <a href="question.do" class="nav-link">이용 방법</a>
                  </li>
				</ul>
					<ul class="navbar-nav ml-auto">
					<li class="nav-item" style="float: right;">
						<a href="message_re.do?page=1" class="btn btn-rose btn-raised btn-fab btn-round">
							 <i class="material-icons">email</i>
						</a>
					</li>
					<li class="nav-item"><a href="#pablo" class="nav-link">${userdto.user_id }</a>

					<li class="nav-item">
						<a href="logOut.do" class="nav-link"style="color: white" onclick="signOut();">Logout</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<nav
		class="navbar navbar-transparent fixed-top navbar-expand-lg"
		id="sectionsNav2"
		style="background-color: #D5D5D5; margin-top: 70px; height: 55px;">
		<div class="container">
			<div class="navbar-translate" style="width: 100px;">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					aria-expanded="false" data-target="#investor_topbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="navbar-toggler-icon"></span> <span
						class="navbar-toggler-icon"></span> <span
						class="navbar-toggler-icon"></span>
				</button>
			</div>

			<div class="collapse navbar-collapse" id="investor_topbar">
				<ul class="navbar-nav" style="color:black;">
					<li class="nav-item"><a href="user_coin.do?page=1&user_no=${userdto.user_no }" class="nav-link" id="ho"
						style="padding-top: 17px;">코인 관리</a></li>
					<li class="nav-item"><a href="user_typeUpdate.do" class="nav-link" id="ho"
						style="padding-top: 17px;">계정 유형 변경 신청</a></li>
					<li class="nav-item"><a href="project_fundinglist.do" class="nav-link" id="ho"
						style="padding-top: 17px;">투자한 프로젝트</a></li>
				</ul>
			</div>
			</div>
	
	</nav>
	<br>
	<br>
	<br>
<script>
  function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      console.log('User signed out.');
    });
  }
</script>
</body>
</html>