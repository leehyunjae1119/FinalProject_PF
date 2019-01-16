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
<link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="resources/assets/demo/demo.css" rel="stylesheet" />
<!-- index.css 참조 -->
<link href="./src/main/webapp/resources/css/coinmanage.css" rel="stylesheet" />
<link href="resources/assets/css/Project_LikeList.css" rel="stylesheet" />
<!-- fontawesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
</head>
<body>
<body class="index-page sidebar-collapse">

	<!-- 바탕 바꾸는곳 -->
	<div class="main main-raised">
		<!-- 나의푸딩 프로필부분 -->
		<div class="section section-basic">
			<div class="container">
				<div class="row">
					<%@ include file="WEB-INF/inc/sidebar.jsp" %>
					<div class="col-sm-8">
						<h3>
							<strong>관심 프로젝트</strong>
						</h3>
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
						<div class="project">
							<div>
								<h5>
									<a style="color: skyblue;"><strong>&nbsp&nbsp 자바
											프레임워크 웹 어플리케이션 개발자 양성과정</strong></a>
								</h5>
								<span class="badge badge-pill badge-success">모집중</span>
							    <img
									src="resources/assets/img/heart.PNG" alt="HEART"
									style="height: 30px; wedth: 30px;" id="img2">

							</div>
							<div>
								&nbsp;&nbsp;
								<img
									src="resources/assets/img/money.png" alt="mo"
									style="height: 20px; wedth: 35px;" id="img3">
									<b>500000원</b>
								<img
									src="resources/assets/img/time.png" alt="da"
									style="height: 23px; wedth: 37px;" id="img4">
									<b>150일</b>
								<img
									src="resources/assets/img/calendar.png" alt="fi"
									style="height: 23px; wedth: 37px;" id="img5">
									<b>2019.05.25</b>
							</div>

							<div class="a">
								<b id="yoyak">하이틴 영화를 떠올리게 만드는 핫한 커플이 탄생했다! 바로 영화 <콜 미 바이 유어
										네임>으로 헐리웃 최고 유망주 떠오른 티모시 샬라메와 바네사 파라디와 조니 뎁의 딸로 모델이자 배우로
									활약 중인 릴리 로즈 뎁이 그 주인공.</b>
							</div>
						</div>
						<br>
						<div class="project">
							<div>
								<h5>
									<a style="color: skyblue;"><strong>&nbsp&nbsp 자바
											프레임워크 웹 어플리케이션 개발자 양성과정</strong></a>
								</h5>
								<span class="badge badge-pill badge-success">모집중</span>
							    <img
									src="resources/assets/img/heart.PNG" alt="HEART"
									style="height: 30px; wedth: 30px;" id="img2">

							</div>
							<div>
								&nbsp;&nbsp;
								<img
									src="resources/assets/img/money.png" alt="mo"
									style="height: 20px; wedth: 35px;" id="img3">
									<b>500000원</b>
								<img
									src="resources/assets/img/time.png" alt="da"
									style="height: 23px; wedth: 37px;" id="img4">
									<b>150일</b>
								<img
									src="resources/assets/img/calendar.png" alt="fi"
									style="height: 23px; wedth: 37px;" id="img5">
									<b>2019.05.25</b>
							</div>
							
							<div class="a">
								<b id="yoyak">하이틴 영화를 떠올리게 만드는 핫한 커플이 탄생했다! 바로 영화 <콜 미 바이 유어
										네임>으로 헐리웃 최고 유망주 떠오른 티모시 샬라메와 바네사 파라디와 조니 뎁의 딸로 모델이자 배우로
									활약 중인 릴리 로즈 뎁이 그 주인공.</b>
							</div>
						</div>
						<br>
							<div class="project">
							<div>
								<h5>
									<a style="color: skyblue;"><strong>&nbsp&nbsp 자바
											프레임워크 웹 어플리케이션 개발자 양성과정</strong></a>
								</h5>
								<span class="badge badge-pill badge-success">모집중</span>
							    <img
									src="resources/assets/img/heart.PNG" alt="HEART"
									style="height: 30px; wedth: 30px;" id="img2">

							</div>
							<div>
								&nbsp;&nbsp;
								<img
									src="resources/assets/img/money.png" alt="mo"
									style="height: 20px; wedth: 35px;" id="img3">
									<b>500000원</b>
								<img
									src="resources/assets/img/time.png" alt="da"
									style="height: 23px; wedth: 37px;" id="img4">
									<b>150일</b>
								<img
									src="resources/assets/img/calendar.png" alt="fi"
									style="height: 23px; wedth: 37px;" id="img5">
									<b>2019.05.25</b>
							</div>
							
							<div class="a">
								<b id="yoyak">하이틴 영화를 떠올리게 만드는 핫한 커플이 탄생했다! 바로 영화 <콜 미 바이 유어
										네임>으로 헐리웃 최고 유망주 떠오른 티모시 샬라메와 바네사 파라디와 조니 뎁의 딸로 모델이자 배우로
									활약 중인 릴리 로즈 뎁이 그 주인공.</b>
							</div>
						</div>
						<br>
									<div class="project">
							<div>
								<h5>
									<a style="color: skyblue;"><strong>&nbsp&nbsp 자바
											프레임워크 웹 어플리케이션 개발자 양성과정</strong></a>
								</h5>
								<span class="badge badge-pill badge-success">모집중</span>
							    <img
									src="resources/assets/img/heart.PNG" alt="HEART"
									style="height: 30px; wedth: 30px;" id="img2">

							</div>
							<div>
								&nbsp;&nbsp;
								<img
									src="resources/assets/img/money.png" alt="mo"
									style="height: 20px; wedth: 35px;" id="img3">
									<b>500000원</b>
								<img
									src="resources/assets/img/time.png" alt="da"
									style="height: 23px; wedth: 37px;" id="img4">
									<b>150일</b>
								<img
									src="resources/assets/img/calendar.png" alt="fi"
									style="height: 23px; wedth: 37px;" id="img5">
									<b>2019.05.25</b>
							</div>
							
							<div class="a">
								<b id="yoyak">하이틴 영화를 떠올리게 만드는 핫한 커플이 탄생했다! 바로 영화 <콜 미 바이 유어
										네임>으로 헐리웃 최고 유망주 떠오른 티모시 샬라메와 바네사 파라디와 조니 뎁의 딸로 모델이자 배우로
									활약 중인 릴리 로즈 뎁이 그 주인공.</b>
							</div>
						</div>
						<br>
							<div class="project">
							<div>
								<h5>
									<a style="color: skyblue;"><strong>&nbsp&nbsp 자바
											프레임워크 웹 어플리케이션 개발자 양성과정</strong></a>
								</h5>
								<span class="badge badge-pill badge-success">모집중</span>
							    <img
									src="resources/assets/img/heart.PNG" alt="HEART"
									style="height: 30px; wedth: 30px;" id="img2">

							</div>
							<div>
								&nbsp;&nbsp;
								<img
									src="resources/assets/img/money.png" alt="mo"
									style="height: 20px; wedth: 35px;" id="img3">
									<b>500000원</b>
								<img
									src="resources/assets/img/time.png" alt="da"
									style="height: 23px; wedth: 37px;" id="img4">
									<b>150일</b>
								<img
									src="resources/assets/img/calendar.png" alt="fi"
									style="height: 23px; wedth: 37px;" id="img5">
									<b>2019.05.25</b>
							</div>
							<div class="a">
								<b id="yoyak">하이틴 영화를 떠올리게 만드는 핫한 커플이 탄생했다! 바로 영화 <콜 미 바이 유어
										네임>으로 헐리웃 최고 유망주 떠오른 티모시 샬라메와 바네사 파라디와 조니 뎁의 딸로 모델이자 배우로
									활약 중인 릴리 로즈 뎁이 그 주인공.</b>
							</div>
						</div>
						
						<br>
						<ul class="pagination pagination-info" style="padding-left:230px;">
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
	<%@ include file="WEB-INF/inc/footer.jsp" %>
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