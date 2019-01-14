<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="./assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="./assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Project Funding</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!-- CSS Files -->
<link href="./assets/css/material-kit.css?v=2.0.5" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="./assets/demo/demo.css" rel="stylesheet" />
<!-- index.css 참조 -->
<link href="./assets/css/index.css" rel="stylesheet" />
<link href="./src/main/webapp/resources/css/partnerlist.css" rel="stylesheet" />
<!-- fontawesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">


</head>
<body>
<body class="index-page sidebar-collapse">

	<!-- 메뉴바 고정 -->
	<nav class="navbar fixed-top navbar-expand-lg" id="sectionsNav">
		<div class="container">
			<div class="navbar-translate">
				<a class="navbar-brand"
					href="https://demos.creative-tim.com/material-kit/index.html">
					Puding </a>
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
					<li class="nav-item"><a href="#pablo" class="nav-link">프로젝트
							등록</a></li>
					<li class="nav-item"><a href="#pablo" class="nav-link">프로젝트
							찾기</a></li>
					<li class="nav-item"><a href="#pablo" class="nav-link">파트너스
							목록</a></li>
					<li class="nav-item"><a href="#pablo" class="nav-link">이용
							방법</a></li>
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item" style="float: right;"><a href="#pablo"
						class="btn btn-rose btn-raised btn-fab btn-round"
						data-toggle="dropdown"> <i class="material-icons">email</i>
					</a></li>
					<li class="nav-item"><a href="#pablo" class="nav-link">Login</a>
					</li>
					<li class="nav-item"><a href="#pablo" class="nav-link">Join</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- 바탕 바꾸는곳 -->
	<div class="main main-raised">
		<!-- 나의푸딩 프로필부분 -->
		<div class="section section-basic">
			<div class="container">
				<div class="row">

					<div class="col-sm-12">

						<div class="boxed">
							<h2>
								<strong>파트너 목록</strong>
							</h2>
							<h5>함께 프로젝트 작업이 가능한 현재 활동중인 파트너스 리스트입니다.</h5>
							<div id="b">
								<form class="form-inline ml-auto">
									<div class="form-group has-black">
										<input type="text" class="form-control" placeholder="Search">
									</div>
									<button type="submit"
										class="btn btn-white btn-raised btn-fab btn-round">
										<i class="material-icons" style="background-color: black;">search</i>
									</button>
								</form>
							</div>
						</div>
						<br>
						<div class="project">
							<div class="row">
								<div class="col-sm-2" style="float: left; padding-left:35px; padding-top:25px;">
									<img src="./assets/img/faces/avatar.jpg"
										class="rounded-circle img-fluid" alt="circle"
										style="height: 80px; width: 80px;"
										id="img3">
									<br>
									<div>
										<b style="padding-left:25px;">개인</b>
									</div>
								</div>
								<div class="col-sm-6" style="wedth:100px;">
									<h3 id="x">
										<a style="color: skyblue;"><strong>wooju &nbsp</strong></a>
									</h3>
									<span id="y" class="badge badge-pill badge-success">메시지
										보내기</span>
									<!-- 메세지보내기 버튼 <button id="y" class="btn btn-primary btn-round" style="height:15px; width:35px;">메시지 보내기<div class="ripple-container"></div></button> -->

									<div class="pr">
										<b id="yoyak">신입개발자 새박이와 함께할 위인 구함니다.신입개발자 새박이와 함께할 위인 구함니다.
										신입개발자 새박이와 함께할 위인 구함니다.신입개발자 새박이와 함께할 위인 구함니다.신입개발자 새박이와 함께할 위인 구함니다.
										</b>
									</div>
									<div>
										<span class="badge badge-pill badge-secondary">java</span>
										<span class="badge badge-pill badge-secondary">python</span>
										<span class="badge badge-pill badge-secondary">javascript</span>
									</div>
								</div>
								<div class="col-sm-3" style="float:right; padding-top:30px;">
									<img src="./css/img/fuck.PNG"
										style="height: 120px; width: 230px;" id="img5">
								</div>						
							</div>
						</div>
						<br>
						<div class="project">
							<div class="row">
								<div class="col-sm-2" style="float: left; padding-left:35px; padding-top:25px;">
									<img src="./assets/img/faces/avatar.jpg"
										class="rounded-circle img-fluid" alt="circle"
										style="height: 80px; width: 80px;"
										id="img3">
									<br>
									<div>
										<b style="padding-left:25px;">개인</b>
									</div>
								</div>
								<div class="col-sm-6" style="wedth:100px;">
									<h3 id="x">
										<a style="color: skyblue;"><strong>wooju &nbsp</strong></a>
									</h3>
									<span id="y" class="badge badge-pill badge-success">메시지
										보내기</span>
									<!-- 메세지보내기 버튼 <button id="y" class="btn btn-primary btn-round" style="height:15px; width:35px;">메시지 보내기<div class="ripple-container"></div></button> -->

									<div class="pr">
										<b id="yoyak">신입개발자 새박이와 함께할 위인 구함니다.신입개발자 새박이와 함께할 위인 구함니다.
										신입개발자 새박이와 함께할 위인 구함니다.신입개발자 새박이와 함께할 위인 구함니다.신입개발자 새박이와 함께할 위인 구함니다.
										</b>
									</div>
									<div>
										<span class="badge badge-pill badge-secondary">java</span>
										<span class="badge badge-pill badge-secondary">python</span>
										<span class="badge badge-pill badge-secondary">javascript</span>
									</div>
								</div>
								<div class="col-sm-3" style="float:right; padding-top:30px;">
									<img src="./css/img/fuck.PNG"
										style="height: 120px; width: 230px;" id="img5">
								</div>						
							</div>
						</div>
						<br>
						<div class="project">
							<div class="row">
								<div class="col-sm-2" style="float: left; padding-left:35px; padding-top:25px;">
									<img src="./assets/img/faces/avatar.jpg"
										class="rounded-circle img-fluid" alt="circle"
										style="height: 80px; width: 80px;"
										id="img3">
									<br>
									<div>
										<b style="padding-left:25px;">개인</b>
									</div>
								</div>
								<div class="col-sm-6" style="wedth:100px;">
									<h3 id="x">
										<a style="color: skyblue;"><strong>wooju &nbsp</strong></a>
									</h3>
									<span id="y" class="badge badge-pill badge-success">메시지
										보내기</span>
									<!-- 메세지보내기 버튼 <button id="y" class="btn btn-primary btn-round" style="height:15px; width:35px;">메시지 보내기<div class="ripple-container"></div></button> -->

									<div class="pr">
										<b id="yoyak">신입개발자 새박이와 함께할 위인 구함니다.신입개발자 새박이와 함께할 위인 구함니다.
										신입개발자 새박이와 함께할 위인 구함니다.신입개발자 새박이와 함께할 위인 구함니다.신입개발자 새박이와 함께할 위인 구함니다.
										</b>
									</div>
									<div>
										<span class="badge badge-pill badge-secondary">java</span>
										<span class="badge badge-pill badge-secondary">python</span>
										<span class="badge badge-pill badge-secondary">javascript</span>
									</div>
								</div>
								<div class="col-sm-3" style="float:right; padding-top:30px;">
									<img src="./css/img/fuck.PNG"
										style="height: 120px; width: 230px;" id="img5">
								</div>						
							</div>
						</div>
						<br>
						<div class="project">
							<div class="row">
								<div class="col-sm-2" style="float: left; padding-left:35px; padding-top:25px;">
									<img src="./assets/img/faces/avatar.jpg"
										class="rounded-circle img-fluid" alt="circle"
										style="height: 80px; width: 80px;"
										id="img3">
									<br>
									<div>
										<b style="padding-left:25px;">개인</b>
									</div>
								</div>
								<div class="col-sm-6" style="wedth:100px;">
									<h3 id="x">
										<a style="color: skyblue;"><strong>wooju &nbsp</strong></a>
									</h3>
									<span id="y" class="badge badge-pill badge-success">메시지
										보내기</span>
									<!-- 메세지보내기 버튼 <button id="y" class="btn btn-primary btn-round" style="height:15px; width:35px;">메시지 보내기<div class="ripple-container"></div></button> -->

									<div class="pr">
										<b id="yoyak">신입개발자 새박이와 함께할 위인 구함니다.신입개발자 새박이와 함께할 위인 구함니다.
										신입개발자 새박이와 함께할 위인 구함니다.신입개발자 새박이와 함께할 위인 구함니다.신입개발자 새박이와 함께할 위인 구함니다.
										</b>
									</div>
									<div>
										<span class="badge badge-pill badge-secondary">java</span>
										<span class="badge badge-pill badge-secondary">python</span>
										<span class="badge badge-pill badge-secondary">javascript</span>
									</div>
								</div>
								<div class="col-sm-3" style="float:right; padding-top:30px;">
									<img src="./css/img/fuck.PNG"
										style="height: 120px; width: 230px;" id="img5">
								</div>						
							</div>
						</div>
						<br>
						<div class="project">
							<div class="row">
								<div class="col-sm-2"style="float: left; padding-left:35px; padding-top:25px;">
									<img src="./assets/img/faces/avatar.jpg"
										class="rounded-circle img-fluid" alt="circle"
										style="height: 80px; width: 80px;"
										id="img3">
									<br>
									<div>
										<b style="padding-left:25px;">개인</b>
									</div>
								</div>
								<div class="col-sm-6" style="wedth:100px;">
									<h3 id="x">
										<a style="color: skyblue;"><strong>wooju &nbsp</strong></a>
									</h3>
									<span id="y" class="badge badge-pill badge-success">메시지
										보내기</span>
									<!-- 메세지보내기 버튼 <button id="y" class="btn btn-primary btn-round" style="height:15px; width:35px;">메시지 보내기<div class="ripple-container"></div></button> -->

									<div class="pr">
										<b id="yoyak">신입개발자 새박이와 함께할 위인 구함니다.신입개발자 새박이와 함께할 위인 구함니다.
										신입개발자 새박이와 함께할 위인 구함니다.신입개발자 새박이와 함께할 위인 구함니다.신입개발자 새박이와 함께할 위인 구함니다.
										</b>
									</div>
									<div>
										<span class="badge badge-pill badge-secondary">java</span>
										<span class="badge badge-pill badge-secondary">python</span>
										<span class="badge badge-pill badge-secondary">javascript</span>
									</div>
								</div>
								<div class="col-sm-3" style="float:right; padding-top:30px;">
									<img src="./css/img/fuck.PNG"
										style="height: 120px; width: 230px;" id="img5">
								</div>						
							</div>
						</div>
						<br>
						<ul class="pagination pagination-info" style="padding-left:400px;">
                <li class="page-item">
                  <a href="javascript:void(0);" class="page-link"> prev</a>
                </li>
                <li class="page-item">
                  <a href="javascript:void(0);" class="page-link">1</a>
                </li>
                <li class="page-item">
                  <a href="javascript:void(0);" class="page-link">2</a>
                </li>
                <li class="active page-item">
                  <a href="javascript:void(0);" class="page-link">3</a>
                </li>
                <li class="page-item">
                  <a href="javascript:void(0);" class="page-link">4</a>
                </li>
                <li class="page-item">
                  <a href="javascript:void(0);" class="page-link">5</a>
                </li>
                <li class="page-item">
                  <a href="javascript:void(0);" class="page-link">next </a>
                </li>
              </ul>
						<!-- 페이징
						<div class="text-center">
							<ul class="pagination">
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
							</ul>
						</div>
						-->
					</div>
				</div>
			</div>
		</div>
		</div>

		<!-- Classic Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Modal title</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<i class="material-icons">clear</i>
						</button>
					</div>
					<div class="modal-body">
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in Bookmarksgrove right at the coast of the
							Semantics, a large language ocean. A small river named Duden
							flows by their place and supplies it with the necessary
							regelialia. It is a paradisematic country, in which roasted parts
							of sentences fly into your mouth. Even the all-powerful Pointing
							has no control about the blind texts it is an almost
							unorthographic life One day however a small line of blind text by
							the name of Lorem Ipsum decided to leave for the far World of
							Grammar.</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-link">Nice Button</button>
						<button type="button" class="btn btn-danger btn-link"
							data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
		<!--  End Modal -->
		<footer class="footer" data-background-color="black">
			<div class="container">
				<nav class="float-left">
					<div class="col-md-8 ml-auto mr-auto">
						<h2>Completed with examples</h2>
						<h4>
							The kit comes with three pre-built pages to help you get started
							faster. You can change the text and images and you're good to go.
							More importantly, looking at them will give you a picture of what
							you can built with this powerful kit. <br /> &copy;김이박
						</h4>
					</div>
				</nav>
			</div>
		</footer>
		<!--   Core JS Files   -->
		<script src="./assets/js/core/jquery.min.js" type="text/javascript"></script>
		<script src="./assets/js/core/popper.min.js" type="text/javascript"></script>
		<script src="./assets/js/core/bootstrap-material-design.min.js"
			type="text/javascript"></script>
		<script src="./assets/js/plugins/moment.min.js"></script>
		<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
		<script src="./assets/js/plugins/bootstrap-datetimepicker.js"
			type="text/javascript"></script>
		<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
		<script src="./assets/js/plugins/nouislider.min.js"
			type="text/javascript"></script>
		<!--  Google Maps Plugin    -->
		<script
			src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
		<!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
		<script src="./assets/js/material-kit.js?v=2.0.5"
			type="text/javascript"></script>
		<script>
			$(document).ready(function() {
				//init DateTimePickers
				materialKit.initFormExtendedDatetimepickers();

				// Sliders Init
				materialKit.initSliders();
			});

			function scrollToDownload() {
				if ($('.section-download').length != 0) {
					$("html, body").animate({
						scrollTop : $('.section-download').offset().top
					}, 1000);
				}
			}

			$(document)
					.ready(
							function() {

								$('#facebook')
										.sharrre(
												{
													share : {
														facebook : true
													},
													enableHover : false,
													enableTracking : false,
													enableCounter : false,
													click : function(api,
															options) {
														api.simulateClick();
														api
																.openPopup('facebook');
													},
													template : '<i class="fab fa-facebook-f"></i> Facebook',
													url : 'https://demos.creative-tim.com/material-kit/index.html'
												});

								$('#googlePlus')
										.sharrre(
												{
													share : {
														googlePlus : true
													},
													enableCounter : false,
													enableHover : false,
													enableTracking : true,
													click : function(api,
															options) {
														api.simulateClick();
														api
																.openPopup('googlePlus');
													},
													template : '<i class="fab fa-google-plus"></i> Google',
													url : 'https://demos.creative-tim.com/material-kit/index.html'
												});

								$('#twitter')
										.sharrre(
												{
													share : {
														twitter : true
													},
													enableHover : false,
													enableTracking : false,
													enableCounter : false,
													buttons : {
														twitter : {
															via : 'CreativeTim'
														}
													},
													click : function(api,
															options) {
														api.simulateClick();
														api
																.openPopup('twitter');
													},
													template : '<i class="fab fa-twitter"></i> Twitter',
													url : 'https://demos.creative-tim.com/material-kit/index.html'
												});

							});
		</script>
</body>
</html>