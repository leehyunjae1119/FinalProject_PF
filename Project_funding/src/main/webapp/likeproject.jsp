<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="WEB-INF/inc/topbar.jsp" %>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="resources/assets/img/favicon.png">
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
<link href="resources/assets/css/material-kit.css?v=2.0.5" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="resources/assets/demo/demo.css" rel="stylesheet" />
<!-- index.css 참조 -->
<link href="resources/assets/css/index.css" rel="stylesheet" />
<link href="./src/main/webapp/resources/css/likeproject.css" rel="stylesheet" />
<link href="resources/css/coinmanage.css" rel="stylesheet" />
<!-- fontawesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">

<style type="text/css">
.boxed{
	border: 2px dashed #bcbcbc;
	border-radius:10px;
}

</style>
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
				<div class="col-sm-4">
				
					<div class="center-block">
						<div class="title">
							<h6>
								파트너스
								<button class="btn btn-primary btn-link" style="color: skyblue;">
									개인정보수정
									<div class="ripple-container"></div>
								</button>
							</h6>
							<div style="position: relative; left: 30px;">
								<img src="resources/assets/img/faces/avatar.jpg" alt="Circle Image"
									class="rounded-circle img-fluid"
									style="height: 80px; wedth: 80px;"> <br> <b
									style="position: relative; left: 20px;">wooju</b> <br> <b
									style="position: relative; left: -20px;"><small>wwzzzzzzz@naver.com</small></b>
							</div>
							<div></div>
						</div>
					</div>
				</div>
				<div class="col-sm-8">
					<h3><strong>관심 프로젝트</strong></h3>
					<h5>회원님이 관심 등록한 프로젝트를 확인할 수 있습니다.</h5>
					<div class="boxed">
						<br>
						<ol>
							<li>관심 프로젝트로 추가한 프로젝트 목록입니다.</li>
							<li>지원 완료한 프로젝트의 경우, 목록에서 지원 내역으로 이동됩니다.</li>
							<li>프로젝트 마감이 완료된 경우, 목록에서 자동으로 삭제됩니다.</li>
							<li>[프로젝트 지원하기]버튼을 클릭하여 해당 프로젝트에 지원할 수 있습니다.</li>	
						</ol>
					</div>
					<br>
					<b>관심 프로젝트가 없습니다.</b>
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
						Semantics, a large language ocean. A small river named Duden flows
						by their place and supplies it with the necessary regelialia. It
						is a paradisematic country, in which roasted parts of sentences
						fly into your mouth. Even the all-powerful Pointing has no control
						about the blind texts it is an almost unorthographic life One day
						however a small line of blind text by the name of Lorem Ipsum
						decided to leave for the far World of Grammar.</p>
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
	<script src="resources/assets/js/core/jquery.min.js" type="text/javascript"></script>
	<script src="resources/assets/js/core/popper.min.js" type="text/javascript"></script>
	<script src="resources/assets/js/core/bootstrap-material-design.min.js"
		type="text/javascript"></script>
	<script src="resources/assets/js/plugins/moment.min.js"></script>
	<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
	<script src="resources/assets/js/plugins/bootstrap-datetimepicker.js"
		type="text/javascript"></script>
	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="resources/assets/js/plugins/nouislider.min.js"
		type="text/javascript"></script>
	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
	<script src="resources/assets/js/material-kit.js?v=2.0.5"
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

		$(document).ready(function() {

			$('#facebook').sharrre({
				share : {
					facebook : true
				},
				enableHover : false,
				enableTracking : false,
				enableCounter : false,
				click : function(api, options) {
					api.simulateClick();
					api.openPopup('facebook');
				},
				template : '<i class="fab fa-facebook-f"></i> Facebook',
				url : 'https://demos.creative-tim.com/material-kit/index.html'
			});

			$('#googlePlus').sharrre({
				share : {
					googlePlus : true
				},
				enableCounter : false,
				enableHover : false,
				enableTracking : true,
				click : function(api, options) {
					api.simulateClick();
					api.openPopup('googlePlus');
				},
				template : '<i class="fab fa-google-plus"></i> Google',
				url : 'https://demos.creative-tim.com/material-kit/index.html'
			});

			$('#twitter').sharrre({
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
				click : function(api, options) {
					api.simulateClick();
					api.openPopup('twitter');
				},
				template : '<i class="fab fa-twitter"></i> Twitter',
				url : 'https://demos.creative-tim.com/material-kit/index.html'
			});

		});
	</script>


</body>
</html>