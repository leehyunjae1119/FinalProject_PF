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
<link href="resources/css/question.css" rel="stylesheet" />
<!-- fontawesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">

<style type="text/css">
.boxed {
	border: 2px dashed #bcbcbc;
	border-radius: 10px;
}
</style>
</head>
<body>
<body class="index-page sidebar-collapse">

	<!-- 바탕 바꾸는곳 -->
	<div class="main main-raised">
		<!-- 나의푸딩 프로필부분 -->
		<div class="section section-basic">
			<div class="container">
				<div class="row">
					<div class="col-sm-3">
						<div class="center-block">
							<div class="title"
								style="font-family: Roboto, Helvetica, Arial, sans-serif; padding-top: 10px;">
								<ul class="nav nav-pills nav-stacked"
									style="list-style-type: none;">
									<li><button class="btn btn-primary btn-link" id="bu">
											서비스 소개
											<div class="ripple-container"></div>
										</button></li>
									<li><button class="btn btn-primary btn-link" id="bu">
											클라이언트 이용방법
											<div class="ripple-container"></div>
										</button></li>
									<li><button class="btn btn-primary btn-link" id="bu">
											파트너스 이용방법
											<div class="ripple-container"></div>
										</button></li>
									<li><button class="btn btn-primary btn-link" id="bu"
											style="background-color: purple; color: white;">
											자주 묻는 질문
											<div class="ripple-container"></div>
										</button></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<h3>
							<b>자주 묻는 질문</b>
						</h3>
						<h5>회원님들이 자주 찾는 질문들입니다.</h5>
						<hr />
						<div class="tab-content">
							<div class="tab-pane active" id="클라이언트" role="tabpanel">
								<section class="p5-faq-section-last">
									<a name="Top 10"></a>
									<h4 class="subcategory-title">Top 10</h4>
									<div class="accordion-group p5-faq-list">
										<div class="p5-faq-list-pannel">
											<div class="p5-faq-list-question p5-faq-list-question-first">
												<h4 class="panel-title">
													<a class="accordion-toggle faq-title-opener"
														data-toggle="collapse" href="#qna_165">프로젝트를 의뢰하려면
														클라이언트/파트너 중 어떤 유형으로 가입해야 하나요? <i class="fa fa-angle-down"
														style="float: right;"></i><i class="fa fa-angle-up"
														style="float: right;"></i>
													</a>
												</h4>
											</div>
											<div class="panel-collapse collapse in" id="qna_165"
												style="height: auto;">
												<div class="p5-faq-list-answer">
													<p>
														'위시켓은 '클라이언트'와 '파트너스' 각 계정을 따로 가입해 활동할 수 있습니다. <br>'클라이언트'로
														가입하시면 프로젝트를 의뢰하고 작업자를 찾으실 수 있습니다.
													</p>
												</div>
											</div>
										</div>
										<div class="p5-faq-list-pannel">
											<div class="p5-faq-list-question p5-faq-list-question-first">
												<h4 class="panel-title">
													<a class="accordion-toggle faq-title-opener"
														data-toggle="collapse" href="#qna_166">의뢰하려는 프로젝트의 견적이
														궁금합니다. <i class="fa fa-angle-down" style="float: right;"></i><i
														class="fa fa-angle-up" style="float: right;"></i>
													</a>
												</h4>
											</div>
											<div class="panel-collapse collapse in" id="qna_166"
												style="height: auto;">
												<div class="p5-faq-list-answer">
													<p>
														프로젝트의 견적이 궁금하시다면 위시켓 사이트에 프로젝트를 등록해주세요.<br>제작하고자 하는
														프로젝트 내용을 작성해 등록해주시면 위시켓 검수 매니저가 유선상으로 견적 상담을 제공합니다.<br>검수
														매니저는 프로젝트 2만여 건을 상담한 경험이 있는 전문가로, 프로젝트에 맞는 합리적인 견적을
														안내해드립니다.<br> <br>프로젝트 등록하러 가기 ▶<br> <a
															href="https://www.wishket.com/project/add/detail/">https://www.wishket.com/project/add/detail/</a>
													</p>
												</div>
											</div>
										</div>
										<div class="p5-faq-list-pannel">
											<div class="p5-faq-list-question p5-faq-list-question-first">
												<h4 class="panel-title">
													<a class="accordion-toggle faq-title-opener"
														data-toggle="collapse" href="#qna_167">프로젝트의 예상 기간, 지출
														가능 예산을 작성하기 어렵습니다. <i class="fa fa-angle-down"
														style="float: right;"></i><i class="fa fa-angle-up"
														style="float: right;"></i>
													</a>
												</h4>
											</div>
											<div class="panel-collapse collapse in" id="qna_167"
												style="height: auto;">
												<div class="p5-faq-list-answer">
													<p>
														내부적으로 책정된 예산이 없고 프로젝트 금액 및 기간을 산정하기 어려우시다면, 해당 공간에 '1'로
														작성하여 등록해주세요. <br>프로젝트 등록 후 24시간 이내에 위시켓 검수 매니저가 유선상으로
														견적 상담을 제공합니다.<br>검수 매니저는 프로젝트 2만여 건을 상담한 경험이 있는 전문가로,
														프로젝트에 맞는 합리적인 견적을 안내해드립니다.<br> <br>프로젝트 등록하러 가기
														▶<br> <a
															href="https://www.wishket.com/project/add/detail/">https://www.wishket.com/project/add/detail/</a>
													</p>
												</div>
											</div>
										</div>
										<div class="p5-faq-list-pannel">
											<div class="p5-faq-list-question p5-faq-list-question-first">
												<h4 class="panel-title">
													<a class="accordion-toggle faq-title-opener collapsed"
														data-toggle="collapse" href="#qna_168">서비스 이용 절차를
														알려주세요. <i class="fa fa-angle-down" style="float: right;"></i><i
														class="fa fa-angle-up" style="float: right;"></i>
													</a>
												</h4>
											</div>
											<div class="panel-collapse collapse" id="qna_168">
												<div class="p5-faq-list-answer">
													<p>
														프로젝트 등록 &gt; 검수 &gt; 지원자 모집 &gt; 미팅 &gt; 계약 &gt; 프로젝트 시작<br>
														<br>1. 프로젝트를 등록하시면, 위시켓 팀의 검수 과정을 거친 후 파트너에게 프로젝트가
														공개됩니다. <br>2. 지원자 중에 가장 적합한 파트너를 선정하신 후 온/오프라인 미팅을
														진행하게 됩니다.<br>3. 협의가 끝난 업무 범위를 바탕으로 계약하고, 프로젝트를 진행합니다.
														<br> <br>위시켓에서는 프로젝트의 시작부터 끝까지 전 과정 진행을 도와드립니다.<br>단계별로
														담당 매니저가 배정돼 신속하고 정확한 응대를 받으실 수 있습니다.
													</p>
												</div>
											</div>
										</div>
										<div class="p5-faq-list-pannel">
											<div class="p5-faq-list-question p5-faq-list-question-first">
												<h4 class="panel-title">
													<a class="accordion-toggle faq-title-opener collapsed"
														data-toggle="collapse" href="#qna_169">위시켓 이용요금은
														얼마인가요? <i class="fa fa-angle-down" style="float: right;"></i><i
														class="fa fa-angle-up" style="float: right;"></i>
													</a>
												</h4>
											</div>
											<div class="panel-collapse collapse" id="qna_169">
												<div class="p5-faq-list-answer">
													<p>
														프로젝트 비용 외에 클라이언트님께서 위시켓에 지급해야 하는 서비스 이용요금은 없습니다.<br>프로젝트가
														끝날 때까지 위시켓을 무료로 이용하실 수 있습니다.
													</p>
												</div>
											</div>
										</div>
										<div class="p5-faq-list-pannel">
											<div class="p5-faq-list-question p5-faq-list-question-first">
												<h4 class="panel-title">
													<a class="accordion-toggle faq-title-opener collapsed"
														data-toggle="collapse" href="#qna_170">등록한 프로젝트 내용을
														수정하고 싶어요. <i class="fa fa-angle-down"
														style="float: right;"></i><i class="fa fa-angle-up"
														style="float: right;"></i>
													</a>
												</h4>
											</div>
											<div class="panel-collapse collapse" id="qna_170">
												<div class="p5-faq-list-answer">
													<p>
														등록하신 프로젝트 내용은 검수 과정 후에 사이트에 공개됩니다.<br>검수 과정에서 위시켓 검수
														팀의 상담 연락을 받아보실 수 있으며, 내용 수정을 원하시는 경우 검수 매니저에게 말씀해 주시면 바로
														수정해드립니다.
													</p>
												</div>
											</div>
										</div>
										<div class="p5-faq-list-pannel">
											<div class="p5-faq-list-question p5-faq-list-question-first">
												<h4 class="panel-title">
													<a class="accordion-toggle faq-title-opener collapsed"
														data-toggle="collapse" href="#qna_171">프로젝트를 재등록하고
														싶어요. <i class="fa fa-angle-down" style="float: right;"></i><i
														class="fa fa-angle-up" style="float: right;"></i>
													</a>
												</h4>
											</div>
											<div class="panel-collapse collapse" id="qna_171">
												<div class="p5-faq-list-answer">
													<p>
														프로젝트 재등록은 견적을 조정해야 하거나 프로젝트 내용이 변경되어 재등록이 불가피할 때만 가능합니다.<br>해당
														경우에는 위시켓 고객센터(02-6925-4849)로 연락 주시면 도와드리겠습니다.
													</p>
												</div>
											</div>
										</div>
										<div class="p5-faq-list-pannel">
											<div class="p5-faq-list-question p5-faq-list-question-first">
												<h4 class="panel-title">
													<a class="accordion-toggle faq-title-opener collapsed"
														data-toggle="collapse" href="#qna_172">미팅 신청은 몇 명까지
														가능한가요? <i class="fa fa-angle-down" style="float: right;"></i><i
														class="fa fa-angle-up" style="float: right;"></i>
													</a>
												</h4>
											</div>
											<div class="panel-collapse collapse" id="qna_172">
												<div class="p5-faq-list-answer">
													<p>
														미팅은 최대 2명의 파트너를 만나보실 수 있습니다. <br>미팅한 파트너 측의 문제로 프로젝트
														진행이 불가능할 경우, 추가 미팅을 하실 수 있습니다.
													</p>
												</div>
											</div>
										</div>
										<div class="p5-faq-list-pannel">
											<div class="p5-faq-list-question p5-faq-list-question-first">
												<h4 class="panel-title">
													<a class="accordion-toggle faq-title-opener collapsed"
														data-toggle="collapse" href="#qna_173">가입한 이메일 주소를
														변경하고 싶어요. <i class="fa fa-angle-down"
														style="float: right;"></i><i class="fa fa-angle-up"
														style="float: right;"></i>
													</a>
												</h4>
											</div>
											<div class="panel-collapse collapse" id="qna_173">
												<div class="p5-faq-list-answer">
													<p>
														이메일 변경을 원하실 경우, 위시켓에 등록된 이메일을 통해 변경할 이메일 주소, 변경 사유를 작성하여
														고객센터 이메일(help@wishket.com)로 보내주세요.<br>단, 계약 이력이 있을 경우
														이메일 주소 변경이 불가능합니다.
													</p>
												</div>
											</div>
										</div>
										<div class="p5-faq-list-pannel">
											<div class="p5-faq-list-question p5-faq-list-question-first">
												<h4 class="panel-title">
													<a class="accordion-toggle faq-title-opener collapsed"
														data-toggle="collapse" href="#qna_174">클라이언트, 파트너 계정
														아이디를 동일하게 사용할 수는 없나요? <i class="fa fa-angle-down"
														style="float: right;"></i><i class="fa fa-angle-up"
														style="float: right;"></i>
													</a>
												</h4>
											</div>
											<div class="panel-collapse collapse" id="qna_174">
												<div class="p5-faq-list-answer">
													<p>
														네, 그렇습니다.<br>클라이언트-파트너 간 이용 목적의 혼동을 막기 위해 계정이 분리되어 있는
														점 양해 부탁드립니다.
													</p>
												</div>
											</div>
										</div>
									</div>
								</section>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br>
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