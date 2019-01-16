<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  
  <%@ include file="WEB-INF/inc/topbar.jsp" %>
<link href="resources/assets/css/project_insert.css" rel="stylesheet" />
<link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="resources/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  	<!--     Fonts and icons     -->
  	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
 	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
 	 <!-- CSS Files -->
 	 <link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
  	<!-- CSS Just for demo purpose, don't include it in your project -->
  	<link href="resources/assets/demo/demo.css" rel="stylesheet" />
  
  <title>
    Puding
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  	<!--     Fonts and icons     -->
  	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
 	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
 	 <!-- CSS Files -->
 	 <link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
  	<!-- CSS Just for demo purpose, don't include it in your project -->
  	<link href="resources/assets/demo/demo.css" rel="stylesheet" />
<!-- fontawesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
</head>

<body class="index-page sidebar-collapse">
  
  <!-- Login form부분 시작 -->
  <div class="section section-signup page-header" style="background-image: url('resources/assets/img/city.jpg'); margin-top:100px">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-6 ml-auto mr-auto">
            <div class="card card-login">
              <form class="form" method="" action="">
                <div class="card-header card-header-primary text-center">
                  <h4 class="card-title">Login</h4>
                  <div class="social-line"> 
                    <a href="#pablo" class="btn btn-just-icon btn-link">
                      <i class="fab fa-facebook-square"></i>
                    </a>
                    <a href="#pablo" class="btn btn-just-icon btn-link">
						<i class="fab fa-kickstarter"></i>
                    </a>
                    <a href="#pablo" class="btn btn-just-icon btn-link">
                      <i class="fab fa-neos"></i>
                    </a>
                  </div>
                </div>
                <p class="description text-center">	</p>
                
                
                <div class="card-body">   
               
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons" style="font-size:13px;">아이디</i>
                      </span>
                    </div>
                    <input type="email" class="form-control" placeholder="Email...">
                  </div>
                  
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons" style="font-size:13px;">비밀번호</i>
                      </span>
                    </div>
                    <input type="password" class="form-control" placeholder="Password...">
                  </div>
               
                <div class="footer text-center">
                  <a href="#pablo" class="btn btn-primary btn-link btn-wd btn-lg">로그인</a>
                </div>
               
               <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons" style="font-size:13px;">비밀번호를 잊으셨나요?</i>
                  		<a href="user_findPW.do" class="btn btn-primary btn-link btn-wd btn-lg" style="text-align:left;">비밀번호 찾기</a>
                  	  </span>  
                    </div>    
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons" style="font-size:13px;">아직 회원이 아니신가요?</i>
                 		 <a href="join.do" class="btn btn-primary btn-link btn-wd btn-lg">회원가입</a>
                      </span>                
                    </div>    
                  </div>
         
                </div>
               </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  
  
  
  
  
  
  
  <!-- footer 부분 가져다 쓰면 됨. -->
  <%@ include file="WEB-INF/inc/footer.jsp" %>
  <!--   Core JS Files   -->
  <script src="resources/assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="resources/assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="resources/assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="resources/assets/js/plugins/moment.min.js"></script>
  <!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
  <script src="resources/assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="resources/assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
  <script src="resources/assets/js/material-kit.js?v=2.0.5" type="text/javascript"></script>
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
</body>
</html>