<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="author" href="https://plus.google.com/113101541449927918834" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600'
	rel='stylesheet' type='text/css'>
<!-- index.css 참조 -->
<link href="resources/assets/css/index.css" rel="stylesheet" />

<!-- chart.js -->
<link rel="stylesheet" type="text/css"
	href="chart.js/Chart.js-master/docs/style.css">
<script async="" src="//www.google-analytics.com/analytics.js"></script>
<script src="https://unpkg.com/chart.js@2.7.2/dist/Chart.bundle.js"></script>
<style type="text/css">/* Chart.js */
@
-webkit-keyframes chartjs-render-animation {
	from {opacity: 0.99
}

to {
	opacity: 1
}

}
@
keyframes chartjs-render-animation {
	from {opacity: 0.99
}

to {
	opacity: 1
}

}
.chartjs-render-monitor {
	-webkit-animation: chartjs-render-animation 0.001s;
	animation: chartjs-render-animation 0.001s;
}
</style>
<script src="chart.js/Chart.js-master/samples/utils.js"></script>
<script src="chart.js/Chart.js-master/samples/charts/area/analyser.js"></script>

<!-- slick-sliders -->
<script type="text/javascript" src="slick-1.8.1/slick/slick.min.js"></script>
<script type="text/javascript"
	src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="slick-1.8.1/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="slick-1.8.1/slick/slick-theme.css" />

</head>
<body class="index-page sidebar-collapse">

	<c:if test="${userdto eq null }">
		<%@ include file="WEB-INF/inc/index_topbar.jsp"%>
	</c:if>

	<c:if test="${userdto.getUser_type() eq '파트너스' }">
		<%@ include file="WEB-INF/inc/Partners_topbar.jsp"%>
	</c:if>

	<c:if test="${userdto.getUser_type() eq '클라이언트' }">
		<%@ include file="WEB-INF/inc/client_topbar.jsp"%>
	</c:if>

	<c:if test="${userdto.getUser_type() eq '투자자' }">
		<%@ include file="WEB-INF/inc/investor_topbar.jsp"%>
	</c:if>

	<c:if test="${userdto.getUser_type() eq '관리자' }">
		<%@ include file="WEB-INF/inc/admin_topbar.jsp"%>
	</c:if>
</head>
<div class="page-header header-filter clear-filter gray-filter"
	data-parallax="true"
	style="background-image: url('resources/assets/img/bg1.jpg');">

	<div class="container">
		<div class="row">
			<div class="col-md-8 ml-auto mr-auto">
				<div class="brand">
					<h1>Creative Project</h1>
					<h3>Let's make a valuable investment.</h3>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="main main-raised-index">
	<div class="section section-basic">
		<div class="container">
			<div class="number_container">
				<div class="number">

					<h3>
						<b>등록된 프로젝트</b>
					</h3>
					<h3>
						<b>프로젝트 금액</b>
					</h3>
					<h3>
						<b>프로젝트 & 프리랜서</b>
					</h3>
					<h2>
						<span class="counter">${totalCount}</span>
					</h2>
					<h2>
						<span class="counter">${CountCoin}</span>
					</h2>
					<h2>
						<span class="counter">12345</span>
					</h2>
				</div>

			</div>
			<hr />

			<div class="useway">
				<div class="title">
					<h3 style="text-align: center;">
						<b>이렇게 이용하세요!</b>
					</h3>
				</div>
				<div class="useway_container">
					<div class="useway1">
						<div class="use1">
							<img src="resources/assets/img/project.jpg"
								class="rounded-circle img-fluid" />
						</div>
						<div class="use1_content">
							<p class="text-muted">
								원하는 프로젝트를 <br /> 쉽고 빠르게 진행할 수 있습니다. <br /> 수많은 푸딩 파트너들에게 <br />
								당신의 프로젝트를 소개해 보세요.
							</p>
						</div>
					</div>
					<div class="useway2">
						<div class="use2">
							<img src="resources/assets/img/client.png"
								class="rounded-circle img-fluid" />
						</div>
						<div class="use2_content">
							<p class="text-muted">
								다양한 지원자들의 포트폴리오와 <br /> 클라이언트의 평가를 <br /> 비교할 수 있습니다. <br />
								푸딩의 전문가들을 만나보세요.
							</p>
						</div>
					</div>
					<div class="useway3">
						<div class="use3">
							<img src="resources/assets/img/invest.png"
								class="rounded-circle img-fluid" />
						</div>
						<div class="use3_content">
							<p class="text-muted">
								여러 프로젝트 중 <br /> 원하는 프로젝트에 투자하세요. <br /> 파트너들과 클라이언트들에게 <br />
								큰 힘이 되어주세요.
							</p>
						</div>
					</div>
				</div>
				<!-- 이렇게 이용하세요 끝! -->

				<hr />

				<div class="graph_container">
					<div class="title">
						<h3 style="margin-bottom: 70px;">
							<b>투자자 현황</b>
						</h3>
					</div>
					<div class="graph_content"></div>
					<div class="chart_content">
						<div class="wrapper">
							<div class="chartjs-size-monitor"
								style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
								<div class="chartjs-size-monitor-expand"
									style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
									<div
										style="position: absolute; width: 1000000px; height: 1000000px; left: 0; top: 0;"></div>
								</div>
								<div class="chartjs-size-monitor-shrink"
									style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
									<div
										style="position: absolute; width: 200%; height: 200%; left: 0; top: 0;"></div>
								</div>
							</div>
							<canvas id="chart-0" width="900" height="400"
								style="display: block; width: 900px; height: 400px;"
								class="chartjs-render-monitor"></canvas>
						</div>
						<!-- 				<div class="toolbar"> -->
						<!-- 					<button onclick="togglePropagate(this)">Propagate</button> -->
						<!-- 					<button onclick="toggleSmooth(this)">Smooth</button> -->
						<!-- 					<button onclick="randomize(this)">Randomize</button> -->
						<!-- 				</div> -->
					</div>
				</div>
				<!-- chart.js 영역 끝! -->
				<br /><br /><br />
				<hr />

				<div class="project_container">
					<div class="popular_project">
						<div class="p_title">
							<h3>
								<b>인기 프로젝트</b>
							</h3>
						</div>
						<div class="col-md-4"
							style="display: inline-block; max-width: 33%;">
							<div class="card">
								<div class="card-header card-header-danger">
									<h4 class="card-title">PHP 기반 주차 중개 플랫폼 Android 앱 및 백엔드
										마무리 개발</h4>
								</div>
								<div class="card-body">자사 사무실에서 상주하여 근무가 가능한 풀 스택 개발자 1분을
									모집하고 있습니다. - 근무 방식 : 주 5일 또는 3일 출근(상주 / 협의 후 결정합니다. ) - 프로젝트 대금
									지급 : 월 단위 지급 모집 인원 : 1명 - 3년 차 이상 : 1명 (월 500만 원) 경력/이력 등 관련
									경험에 따라 최종 계약 금액은 변경될 수 있습니다. 1) 근무 위치 : 서울특별시 서초구 강남대로 69길
									8(신논현 역 교보타워 인근) 2) 근무 시간 : 오전 9시 ~ 오후 6시 또는 오전 10시 ~ 오후 7시(
									휴게시간 12시 ~ 1시 또는 1시 ~ 2시 ) 3) 근무 일정 : 1개월 이상 근무를 요청드립니다. ( 1개월
									계약 후 연장 요청드릴 예정입니다. ) 출근 예정일 : 협의 후 결정할 예정입니다. 4) 식사 지원 : 중식
									제공합니다. 5) 장비 지참 : 개인 장비 지참 부탁드립니다. 6) 협업 예정자 : 소스코드 제공 및 인수인계
									가능한 개발자분이 있습니다. 정부지원을 받아 진행되는 프로젝트로 아래 조건이 가능한 파트너와 계약이 가능합니다.
								</div>
							</div>
						</div>
						<div class="col-md-4"
							style="display: inline-block; max-width: 33%;">
							<div class="card">
								<div class="card-header card-header-danger">
									<h4 class="card-title">웹 기반 Data 분석 및 관리 System 구축</h4>
								</div>
								<div class="card-body">시작 시점에 미팅을 요청드립니다. 계약 진행간 주 1회 미팅을
									요청드립니다. 현재 서비스 기획안 작성 중입니다. 프로젝트 시작 시점에 IA 및 상세 스토리보드 제공 예정입니다.
									UX 상세 가이드라인 제공 예정입니다. 모바일 기반 설문 조사 플랫폼입니다. 필요 요소 : + 개발 설계 /
									사용자 화면 설계 + 앱, 웹 디자인 + 웹 사이트 개발 및 하이브리드 앱 2종 개발 + 서버 및 DB 구축 +
									설문 결과 분석 대시보드 + 관리자페이지 유저 타입 : + 일반 유저 + 업체 유저 + 운영관리자 주요 기능은
									아래와 같습니다. [일반 유저] + 회원가입/로그인 (SNS 인증) + 개인정보 작성 및 프로필 세팅 + 앱 추천
									- SNS 공유, 개인연락처에 등록된 사람들 등 + 설문 진행 후 OK 캐시백 등 포인트 등 Reward [업체
									유저] + 회원가입 및 인증 + 직접 설문지 작성 및 검토 + 리스트에서 유저들의 설문 결과 통계를 조회 +
									관리자들이 설문지 문항/가중치 등 관리 + 신규 설문지 타입을 등록 및 기 존재하는 설문지 양식 수정 기능</div>
							</div>
						</div>
						<div class="col-md-4"
							style="display: inline-block; max-width: 33%;">
							<div class="card">
								<div class="card-header card-header-danger">
									<h4 class="card-title">React 기반 암호화폐 지갑앱 고도화 개발</h4>
								</div>
								<div class="card-body">기존에 개발되어있는 암호화폐 지갑에 추가 개발을 진행하는
									작업으로 현재 개발 진행 중인 프로젝트입니다. ReactJS / React Native로 동시에 작업 진행할
									예정이고, 자신 있는 부분을 강조해서 지원해 주시면 됩니다. 진행 및 개발 경험, 기술에 대한 이해도 측면을 많이
									고려하고 있습니다. 디자인 완료된 상태이며, 웹 버전의 경우 퍼블리싱을 진행 중입니다. 내부에 협업할 개발자가
									있으며, 인터뷰 후 개발 할당을 진행할 예정입니다. 3개월간 작업 내역에 대해서 파악하고, 진행 가능한 수준으로
									맞춰서 진행할 예정입니다. 프로젝트 미팅 시 해당 부분에 대한 협의도 같이 진행했으면 합니다.</div>
							</div>
						</div>

					</div>
				</div>
				<!-- 인기 프로젝트 끝! -->

				<hr />

				<div class="project_container">
					<div class="popular_project">
						<div class="p_title">
							<h3>
								<b>신규 프로젝트</b>
							</h3>
						</div>
						<div class="col-md-4"
							style="display: inline-block; max-width: 33%;">
							<div class="card">
								<div class="card-header card-header-success">
									<h4 class="card-title">개발된 공연 및 이벤트 웹 사이트 마무리 개발</h4>
								</div>
								<div class="card-body">1) 시작 시점에 2차례 미팅 - 1차: 이전 개발자와 동석하여
									현재 진행상황에 대해 공유 - 2차: 기획서 검토 및 구현 가능성, 일정 등을 검토 후 기획에 대한 문의 또는
									협의를 위한 미팅 2) 주 1회 이메일로 진행 상황 공유 프로젝트 기간은 여유롭게 산정하였습니다. 조기 종료
									가능합니다. 기존 프로젝트를 담당하던 개발자의 역량 부족으로 인해 프로젝트가 지나치게 오래 지연되어 새로운
									개발자를 찾는 중입니다. 프로젝트의 70% 가량이 완료되었으며, 프로젝트 담당 시 이전 개발자가 인수인계를 할
									예정입니다. 필요 요소 : + 기존 소스코드 검토 + 추가 기능 개발</div>
							</div>
						</div>
						<div class="col-md-4"
							style="display: inline-block; max-width: 33%;">
							<div class="card">
								<div class="card-header card-header-success">
									<h4 class="card-title">워드프레스 기반 가상화폐 결제 기능 개발</h4>
								</div>
								<div class="card-body">
									워드프레스 개발한 사이트가 있습니다. 기 구축된 결제 모듈에 자사가 개발한 코인을 통해 결제될 수 있도록 추가
									개발하는 작업이 필요합니다.
									필요 요소 : + 결제 방식 추가 개발 워드프레스로 개발된 쇼핑몰이 있습니다.
									결제 모듈 또한 구축되어 있으나 자사에서 직접 개발한 가상화폐를 이용해 결제하는 방식을 추가하고자 합니다. 결제
									로직 : - 로그인 > 물건 구매 > 지갑 주소 입력 > 가상화폐 결제 결제는 자사에서 개발한 토큰만 지원하면
									됩니다.
								</div>
							</div>
						</div>
						<div class="col-md-4"
							style="display: inline-block; max-width: 33%;">
							<div class="card">
								<div class="card-header card-header-success">
									<h4 class="card-title">스트리머용 개인 방송 윈도우 클라이언트 프로그램 개발</h4>
								</div>
								<div class="card-body">웹 기반 개인 방송 서비스는 제작이 된 상태입니다.
									Windows 프로그램 개발이 추가로 필요한 상황입니다. - 스트리머들이 방송을 진행하는 프로그램입니다. 아이디어
									단계로 요구 상세 정의가 필요합니다. 디자인까지 포함된 범위나 협의 가능합니다. 필요 요소 : + 상세 기획 및
									시스템 설계 + Windows 프로그램 디자인 및 개발 개인 방송을 위한 윈도우 프로그램 제작을 요청드립니다. 타
									서비스의 웹 형태가 아닌 윈도우 프로그램으로 제작하려고 합니다. 방송을 시청하는 유저가 아닌 스트리머용
									프로그램으로 개인 방송에 필요한 기능 개발이 필요합니다. - 이모티콘 - 채팅창 - 개인 방송 품질 조절 - 녹화
									등 기본 기능 이외에 몇 가지 고급 기능이 들어갈 수 있습니다. 초기 상세 기획 업무를 통해 요구사항을 정의하고자
									합니다.</div>
							</div>
						</div>

					</div>
				</div>
				<!-- 신규 프로젝트 끝! -->

				<hr />

				<div class="project_container">
					<div class="popular_project">
						<div class="p_title">
							<h3>
								<b>마감 앞둔 프로젝트</b>
							</h3>
						</div>
						<div class="col-md-4"
							style="display: inline-block; max-width: 33%;">
							<div class="card">
								<div class="card-header card-header-warning">
									<h4 class="card-title">영상 편집 서비스 모바일 앱 UI 기획 및 GUI 디자인</h4>
								</div>
								<div class="card-body">준비 중인 서비스는 영상 편집 서비스 앱입니다. 유저는 앱 접속
									후 영상을 업로드하고 편집된 영상을 다운로드하는 구조입니다. 전체 범위는 10p 내외입니다. - 상세 화면 기획이
									되지 않은 상황이라 변경이 있을 수 있습니다. 요청드리는 업무 : - MVP 프로토타이핑 구현을 위한 웹/모바일
									웹 페이지 UX/UI - 기능과 인터랙션 정의, 주요 화면 정의 등의 기획은 되어있음 - 로고, UX/UI, 일부
									애니메이션 (로딩, 프로그레스) - 스케치나 어도비 XD 활용</div>
							</div>
						</div>
						<div class="col-md-4"
							style="display: inline-block; max-width: 33%;">
							<div class="card">
								<div class="card-header card-header-warning">
									<h4 class="card-title">웹 기반 Data 분석 및 관리 System 구축</h4>
								</div>
								<div class="card-body">모바일 기반 설문 조사 플랫폼입니다. 필요 요소 : + 개발
									설계 / 사용자 화면 설계 + 앱, 웹 디자인 + 웹 사이트 개발 및 하이브리드 앱 2종 개발 + 서버 및 DB
									구축 + 설문 결과 분석 대시보드 + 관리자페이지 유저 타입 : + 일반 유저 + 업체 유저 + 운영관리자 주요
									기능은 아래와 같습니다. [일반 유저] + 회원가입/로그인 (SNS 인증) + 개인정보 작성 및 프로필 세팅 +
									앱 추천 - SNS 공유, 개인연락처에 등록된 사람들 등 + 설문 진행 후 OK 캐시백 등 포인트 등 Reward


									[업체 유저] + 회원가입 및 인증 + 직접 설문지 작성 및 검토 + 리스트에서 유저들의 설문 결과 통계를 조회
									+ 관리자들이 설문지 문항/가중치 등 관리 + 신규 설문지 타입을 등록 및 기 존재하는 설문지 양식 수정 기능</div>
							</div>
						</div>
						<div class="col-md-4"
							style="display: inline-block; max-width: 33%;">
							<div class="card">
								<div class="card-header card-header-warning">
									<h4 class="card-title">주식 종목 추천 및 정보 제공 플랫폼 구축</h4>
								</div>
								<div class="card-body">
									1) 오프라인 미팅 후 결정 2) 자사 사무실 존재(서울 중구) 작업은
									재택/원격으로 진행 가능합니다. 필요 내용을 정리 중이며, 기본 기능을 정리하고 있습니다. 단, 내부에 전문 기획
									인력이 없어 기획 고도화 작업이 선행되어야 합니다. 필요 요소 : + 기획 고도화 + PC 및 Mobile 웹
									디자인 및 개발 + Android 및 iOS 앱 디자인 및 개발 + 서버 구축 및 관리자 페이지 개발 개발은 웹과
									모바일 앱을 통해 모두 필요합니다. 다만, 모바일 앱 위주로 서비스를 진행할 계획으로 모바일 앱 개발이 더욱
									중요합니다.
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 마감 앞둔 프로젝트 끝! -->
</div>

</body>

<%@ include file="WEB-INF/inc/footer.jsp"%>

<!--   Core JS Files   -->
<script src="resources/assets/js/core/jquery.min.js"
	type="text/javascript"></script>
<script src="resources/assets/js/core/popper.min.js"
	type="text/javascript"></script>
<!--   <script src="resources/assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script> -->
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
<script src="resources/assets/js/core/bootstrap-material-design.min.js"
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

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
<script src="resources/Animating-Numbers/jquery.counterup.min.js"></script>
<script>
	var jb = jQuery.noConflict();
	jQuery(document).ready(function(jb) {
		jb('.counter').counterUp({
			delay : 10,
			time : 1000
		});
	});
</script>

<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push([ '_setAccount', 'UA-36251023-1' ]);
	_gaq.push([ '_setDomainName', 'jqueryscript.net' ]);
	_gaq.push([ '_trackPageview' ]);

	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})();

	//chart.js
	var presets = window.chartColors;
	var utils = Samples.utils;
	var inputs = {
		min : 20,
		max : 80,
		count : 8,
		decimals : 2,
		continuity : 1
	};

	function generateData() {
		return utils.numbers(inputs);
	}

	function generateLabels() {
		return utils.months({
			count : inputs.count
		});
	}

	utils.srand(42);

	var data = {
		labels : generateLabels(),
		datasets : [ {
			backgroundColor : utils.transparentize(presets.red),
			borderColor : presets.red,
			data : generateData(),
			hidden : true,
			label : 'D0'
		}, {
			backgroundColor : utils.transparentize(presets.orange),
			borderColor : presets.orange,
			data : generateData(),
			label : 'D1',
			fill : '-1'
		}, {
			backgroundColor : utils.transparentize(presets.yellow),
			borderColor : presets.yellow,
			data : generateData(),
			hidden : true,
			label : 'D2',
			fill : 1
		}, {
			backgroundColor : utils.transparentize(presets.green),
			borderColor : presets.green,
			data : generateData(),
			label : 'D3',
			fill : '-1'
		}, {
			backgroundColor : utils.transparentize(presets.blue),
			borderColor : presets.blue,
			data : generateData(),
			label : 'D4',
			fill : '-1'
		}, {
			backgroundColor : utils.transparentize(presets.grey),
			borderColor : presets.grey,
			data : generateData(),
			label : 'D5',
			fill : '+2'
		}, {
			backgroundColor : utils.transparentize(presets.purple),
			borderColor : presets.purple,
			data : generateData(),
			label : 'D6',
			fill : false
		}, {
			backgroundColor : utils.transparentize(presets.red),
			borderColor : presets.red,
			data : generateData(),
			label : 'D7',
			fill : 8
		}, {
			backgroundColor : utils.transparentize(presets.orange),
			borderColor : presets.orange,
			data : generateData(),
			hidden : true,
			label : 'D8',
			fill : 'end'
		} ]
	};

	var options = {
		maintainAspectRatio : false,
		spanGaps : false,
		elements : {
			line : {
				tension : 0.000001
			}
		},
		scales : {
			yAxes : [ {
				stacked : true
			} ]
		},
		plugins : {
			filler : {
				propagate : false
			},
			'samples-filler-analyser' : {
				target : 'chart-analyser'
			}
		}
	};

	var chart = new Chart('chart-0', {
		type : 'line',
		data : data,
		options : options
	});

	// eslint-disable-next-line no-unused-vars
	function togglePropagate(btn) {
		var value = btn.classList.toggle('btn-on');
		chart.options.plugins.filler.propagate = value;
		chart.update();
	}

	// eslint-disable-next-line no-unused-vars
	function toggleSmooth(btn) {
		var value = btn.classList.toggle('btn-on');
		chart.options.elements.line.tension = value ? 0.4 : 0.000001;
		chart.update();
	}

	// eslint-disable-next-line no-unused-vars
	function randomize() {
		chart.data.datasets.forEach(function(dataset) {
			dataset.data = generateData();
		});
		chart.update();
	}

	//slick-slider
	$('.project_content').slick({
		slidesToShow : 3,
		slidesToScroll : 1,
		autoplay : true,
		autoplaySpeed : 2000,
	});
</script>


</html>