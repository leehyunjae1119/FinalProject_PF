<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

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
<link href="resources/assets/css/User_Coin.css" rel="stylesheet" />
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

.project {
	border-style: solid;
	border-color: #bcbcbc;
	border-width: 1px;
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
					<div class="col-sm-3" style="padding-right: 90px;">

						<div class="center-block">
							<div class="sidebar">
								<b> 투자자 </b> <a href="user_infoUpdate.do"
									style="font-size: 13px; color: skyblue; float: right;">기본정보
									수정하기</a>
								<br>
								<hr>
								<div align="center">
									<img src="resources/assets/img/faces/avatar.jpg" alt="Circle Image"
										class="rounded-circle img-fluid"
										style="height: 120px; wedth: 120px;">
									<br><br>
									<b>wooju</b> <br> <b><small>wwzzzzzzz@naver.com</small></b>
								</div>
								<hr>
								<div align="center">
								<a href="user_coin.do"><button class="btn btn-primary btn-link" id="bu"
									style="font-family: Roboto, Helvetica, Arial, sans-serif;">
									코인 조회/결제
									<div class="ripple-container"></div>
								</button></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<h3>
							<strong>코인 관리</strong>
						</h3>
						<h5>회원님의 코인을 조회하고 충전할 수 있습니다.</h5>
						<hr>
						<b style="color: gray;">코인 조회<br></b> <br> <b>보유 코인
							&nbsp : &nbsp<a>150,000</a>
						</b>
						<hr>
						<b style="color: gray;">코인 사용 내역<br></b>

						<table class="table table-striped">
							<tbody>
								<tr>
									<th>충전날짜</th>
									<th>충전금액</th>
									<th>사용금액</th>
									<th>사용내역</th>
								</tr>
								<tr>
									<td>2019.01.18</td>
									<td>200,000</td>
									<td>200,000</td>
									<td>RGB팬 제어 GUI 프로그램</td>
								</tr>
								<tr>
									<td>2019.01.18</td>
									<td>200,000</td>
									<td>200,000</td>
									<td>RGB팬 제어 GUI 프로그램</td>
								</tr>
								<tr>
									<td>2019.01.18</td>
									<td>200,000</td>
									<td>200,000</td>
									<td>RGB팬 제어 GUI 프로그램</td>
								</tr>
								<tr>
									<td>2019.01.18</td>
									<td>200,000</td>
									<td>200,000</td>
									<td>RGB팬 제어 GUI 프로그램</td>
								</tr>
								<tr align="center"></tr>
							</tbody>
						</table>
						
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
						<br> <br> <br> <br> <br> <br>
						<ul class="pagination pagination-info" style="padding-left:240px;">
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
						<hr />
						<b style="color: gray;">코인 충전 및 결제<br></b>
						<div id="select" style="padding-top:10px;">
							<select class="btn btn-default dropdown-toggle"
								name="location_name"
								style="height: 40px; width: 100%; background-color: white; color: gray;">
								<option value="" selected="selected">충전할 금액을 선택해주세요.</option>
								<option value="50,000">50,000 <a>원</a></option>
								<option value="100,000">100,000 <a>원</a></option>
								<option value="500,000">500,000 <a>원</a></option>
							</select>
						</div>
						<div class="form-check" style="padding-top:10px;">
							<label class="form-check-label"> <input
								class="form-check-input" type="checkbox" value="">
								코인 충전 결제에 동의합니다. <span class="form-check-sign"> <span
									class="check"></span>
							</span>
							</label>
						</div>
						<br>
						<div align="center" style="padding-bottom:50px;">
							<button class="btn" >결제하기<div class="ripple-container"></div></button>
						</div>
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