<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link rel="author" href="https://plus.google.com/113101541449927918834"/>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
<!-- index.css 참조 -->
<link href="resources/assets/css/index.css" rel="stylesheet" />

<!-- chart.js -->
<link rel="stylesheet" type="text/css" href="chart.js/Chart.js-master/docs/style.css">
<script async="" src="//www.google-analytics.com/analytics.js"></script><script src="https://unpkg.com/chart.js@2.7.2/dist/Chart.bundle.js"></script><style type="text/css">/* Chart.js */
@-webkit-keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}@keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}.chartjs-render-monitor{-webkit-animation:chartjs-render-animation 0.001s;animation:chartjs-render-animation 0.001s;}</style>
<script src="chart.js/Chart.js-master/samples/utils.js"></script>
<script src="chart.js/Chart.js-master/samples/charts/area/analyser.js"></script>

<!-- slick-sliders -->
<script type="text/javascript" src="slick-1.8.1/slick/slick.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="slick-1.8.1/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="slick-1.8.1/slick/slick-theme.css"/>

</head>
<body class="index-page sidebar-collapse">

<c:if test="${userdto eq null }"> 
 <%@ include file="WEB-INF/inc/index_topbar.jsp" %>
 </c:if>
 
 <c:if test="${userdto.getUser_type() eq '파트너스' }">
  <%@ include file="WEB-INF/inc/Partners_topbar.jsp" %>
 </c:if>
   
 <c:if test="${userdto.getUser_type() eq '클라이언트' }">
  <%@ include file="WEB-INF/inc/client_topbar.jsp" %>
 </c:if>
   
 <c:if test="${userdto.getUser_type() eq '투자자' }">
  <%@ include file="WEB-INF/inc/investor_topbar.jsp" %>
  </c:if>
  
</head>
<div class="page-header header-filter clear-filter gray-filter" data-parallax="true" style="background-image: url('resources/assets/img/bg1.jpg');">

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
								다양한 지원자들의 포트폴리오와 <br /> 클라이언트의 평가를 <br /> 비교할 수 있습니다. <br /> 푸딩의
								전문가들을 만나보세요.
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
									<h4 class="card-title">Full header coloured</h4>
								</div>
								<div class="card-body">The place is close to Barceloneta
									Beach and bus stop just 2 min by walk and near to "Naviglio"
									where you can enjoy the main night life in Barcelona...</div>
							</div>
						</div>
						<div class="col-md-4"
							style="display: inline-block; max-width: 33%;">
							<div class="card">
								<div class="card-header card-header-danger">
									<h4 class="card-title">Full header coloured</h4>
								</div>
								<div class="card-body">The place is close to Barceloneta
									Beach and bus stop just 2 min by walk and near to "Naviglio"
									where you can enjoy the main night life in Barcelona...</div>
							</div>
						</div>
						<div class="col-md-4"
							style="display: inline-block; max-width: 33%;">
							<div class="card">
								<div class="card-header card-header-danger">
									<h4 class="card-title">Full header coloured</h4>
								</div>
								<div class="card-body">The place is close to Barceloneta
									Beach and bus stop just 2 min by walk and near to "Naviglio"
									where you can enjoy the main night life in Barcelona...</div>
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
								<div class="card-header card-header-danger">
									<h4 class="card-title">Full header coloured</h4>
								</div>
								<div class="card-body">The place is close to Barceloneta
									Beach and bus stop just 2 min by walk and near to "Naviglio"
									where you can enjoy the main night life in Barcelona...</div>
							</div>
						</div>
						<div class="col-md-4"
							style="display: inline-block; max-width: 33%;">
							<div class="card">
								<div class="card-header card-header-danger">
									<h4 class="card-title">Full header coloured</h4>
								</div>
								<div class="card-body">The place is close to Barceloneta
									Beach and bus stop just 2 min by walk and near to "Naviglio"
									where you can enjoy the main night life in Barcelona...</div>
							</div>
						</div>
						<div class="col-md-4"
							style="display: inline-block; max-width: 33%;">
							<div class="card">
								<div class="card-header card-header-danger">
									<h4 class="card-title">Full header coloured</h4>
								</div>
								<div class="card-body">The place is close to Barceloneta
									Beach and bus stop just 2 min by walk and near to "Naviglio"
									where you can enjoy the main night life in Barcelona...</div>
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
								<div class="card-header card-header-danger">
									<h4 class="card-title">Full header coloured</h4>
								</div>
								<div class="card-body">The place is close to Barceloneta
									Beach and bus stop just 2 min by walk and near to "Naviglio"
									where you can enjoy the main night life in Barcelona...</div>
							</div>
						</div>
						<div class="col-md-4"
							style="display: inline-block; max-width: 33%;">
							<div class="card">
								<div class="card-header card-header-danger">
									<h4 class="card-title">Full header coloured</h4>
								</div>
								<div class="card-body">The place is close to Barceloneta
									Beach and bus stop just 2 min by walk and near to "Naviglio"
									where you can enjoy the main night life in Barcelona...</div>
							</div>
						</div>
						<div class="col-md-4"
							style="display: inline-block; max-width: 33%;">
							<div class="card">
								<div class="card-header card-header-danger">
									<h4 class="card-title">Full header coloured</h4>
								</div>
								<div class="card-body">The place is close to Barceloneta
									Beach and bus stop just 2 min by walk and near to "Naviglio"
									where you can enjoy the main night life in Barcelona...</div>
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

  <%@ include file="WEB-INF/inc/footer.jsp" %>

  <!--   Core JS Files   -->
  <script src="resources/assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="resources/assets/js/core/popper.min.js" type="text/javascript"></script>
<!--   <script src="resources/assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script> -->
  <script src="resources/assets/js/plugins/moment.min.js"></script>
  <!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
  <script src="resources/assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="resources/assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
  <script src="resources/assets/js/material-kit.js?v=2.0.5" type="text/javascript"></script>  
 <script src="resources/assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
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
          scrollTop: $('.section-download').offset().top
        }, 1000);
      }
    }


    $(document).ready(function() {

      $('#facebook').sharrre({
        share: {
          facebook: true
        },
        enableHover: false,
        enableTracking: false,
        enableCounter: false,
        click: function(api, options) {
          api.simulateClick();
          api.openPopup('facebook');
        },
        template: '<i class="fab fa-facebook-f"></i> Facebook',
        url: 'https://demos.creative-tim.com/material-kit/index.html'
      });

      $('#googlePlus').sharrre({
        share: {
          googlePlus: true
        },
        enableCounter: false,
        enableHover: false,
        enableTracking: true,
        click: function(api, options) {
          api.simulateClick();
          api.openPopup('googlePlus');
        },
        template: '<i class="fab fa-google-plus"></i> Google',
        url: 'https://demos.creative-tim.com/material-kit/index.html'
      });

      $('#twitter').sharrre({
        share: {
          twitter: true
        },
        enableHover: false,
        enableTracking: false,
        enableCounter: false,
        buttons: {
          twitter: {
            via: 'CreativeTim'
          }
        },
        click: function(api, options) {
          api.simulateClick();
          api.openPopup('twitter');
        },
        template: '<i class="fab fa-twitter"></i> Twitter',
        url: 'https://demos.creative-tim.com/material-kit/index.html'
      });

    });
  </script>
 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> 
<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script> 
<script src="resources/Animating-Numbers/jquery.counterup.min.js"></script> 
<script>
var jb = jQuery.noConflict();
    jQuery(document).ready(function( jb ) {
    	jb('.counter').counterUp({
            delay: 10,
            time: 1000
        });
    });
</script>

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
  
  
  //chart.js
		var presets = window.chartColors;
		var utils = Samples.utils;
		var inputs = {
			min: 20,
			max: 80,
			count: 8,
			decimals: 2,
			continuity: 1
		};

		function generateData() {
			return utils.numbers(inputs);
		}

		function generateLabels() {
			return utils.months({count: inputs.count});
		}

		utils.srand(42);

		var data = {
			labels: generateLabels(),
			datasets: [{
				backgroundColor: utils.transparentize(presets.red),
				borderColor: presets.red,
				data: generateData(),
				hidden: true,
				label: 'D0'
			}, {
				backgroundColor: utils.transparentize(presets.orange),
				borderColor: presets.orange,
				data: generateData(),
				label: 'D1',
				fill: '-1'
			}, {
				backgroundColor: utils.transparentize(presets.yellow),
				borderColor: presets.yellow,
				data: generateData(),
				hidden: true,
				label: 'D2',
				fill: 1
			}, {
				backgroundColor: utils.transparentize(presets.green),
				borderColor: presets.green,
				data: generateData(),
				label: 'D3',
				fill: '-1'
			}, {
				backgroundColor: utils.transparentize(presets.blue),
				borderColor: presets.blue,
				data: generateData(),
				label: 'D4',
				fill: '-1'
			}, {
				backgroundColor: utils.transparentize(presets.grey),
				borderColor: presets.grey,
				data: generateData(),
				label: 'D5',
				fill: '+2'
			}, {
				backgroundColor: utils.transparentize(presets.purple),
				borderColor: presets.purple,
				data: generateData(),
				label: 'D6',
				fill: false
			}, {
				backgroundColor: utils.transparentize(presets.red),
				borderColor: presets.red,
				data: generateData(),
				label: 'D7',
				fill: 8
			}, {
				backgroundColor: utils.transparentize(presets.orange),
				borderColor: presets.orange,
				data: generateData(),
				hidden: true,
				label: 'D8',
				fill: 'end'
			}]
		};

		var options = {
			maintainAspectRatio: false,
			spanGaps: false,
			elements: {
				line: {
					tension: 0.000001
				}
			},
			scales: {
				yAxes: [{
					stacked: true
				}]
			},
			plugins: {
				filler: {
					propagate: false
				},
				'samples-filler-analyser': {
					target: 'chart-analyser'
				}
			}
		};

		var chart = new Chart('chart-0', {
			type: 'line',
			data: data,
			options: options
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
			  slidesToShow: 3,
			  slidesToScroll: 1,
			  autoplay: true,
			  autoplaySpeed: 2000,
			});

</script>


</html>