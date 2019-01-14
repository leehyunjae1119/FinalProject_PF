<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="./assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Material Kit by Creative Tim
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="./assets/css/material-kit.css?v=2.0.5" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="./assets/demo/demo.css" rel="stylesheet" />
  <!-- index.css 참조 -->
  <link href="./assets/css/index.css" rel="stylesheet" />
  <!-- fontawesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
</head>

<body class="index-page sidebar-collapse">
  <nav class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg" color-on-scroll="100" id="sectionsNav">
    <div class="container">
      <div class="navbar-translate">
        <a class="navbar-brand" href="https://demos.creative-tim.com/material-kit/index.html">
          Material Kit </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="sr-only">Toggle navigation</span>
          <span class="navbar-toggler-icon"></span>
          <span class="navbar-toggler-icon"></span>
          <span class="navbar-toggler-icon"></span>
        </button>
      </div>
      <div class="collapse navbar-collapse">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a href="#pablo" class="nav-link">나의 푸딩</a>
                  </li>
                  <li class="nav-item">
                    <a href="#pablo" class="nav-link">프로젝트 찾기</a>
                  </li>
                  <li class="nav-item">
                    <a href="#pablo" class="nav-link">파트너스 목록</a>
                  </li>
                  <li class="nav-item">
                    <a href="#pablo" class="nav-link">이용 방법</a>
                  </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                	<li class="nav-item" style="float: right;">
                    	<a href="#pablo" class="btn btn-rose btn-raised btn-fab btn-round" data-toggle="dropdown">
                     	 	<i class="material-icons">email</i>
                    	</a>
                    </li>
                    <li class="nav-item">
                    <a href="#pablo" class="nav-link">Login</a>
                  </li>
                  <li class="nav-item">
                    <a href="#pablo" class="nav-link">SignUp</a>
                  </li>
               </ul>
              </div>
    </div>
  </nav>

  
  
  <div class="section section-signup page-header" style="background-image: url('./assets/img/city.jpg'); margin-top: 100px;">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-6 ml-auto mr-auto">
            <div class="card card-login" style="width:428px;">
              <form class="form" method="" action="">
                <div class="card-header card-header-primary text-center">
                  <h4 class="card-title">Sign Up</h4>
                 
                </div>
                <p class="description text-center">	</p>
                
			<div class="card-body">
                  
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons" style="font-size:13px;">아이디</i>
                      </span>
                    </div>
                    <input type="email" class="form-control" placeholder="ID...">
                  </div>
                  
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons" style="font-size:13px;">비밀번호</i>
                      </span>
                    </div> 
                    <input type="password" class="form-control" placeholder="Password...">
                  </div>
                  
                    <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons" style="font-size:13px;">비밀번호 확인</i>
                      </span>
                    </div>
                    <input type="password" class="form-control" placeholder="Password...">
                  </div>
                  
                    <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text"> 
                        <i class="material-icons" style="font-size:13px;">이메일</i>
                      </span> 
                    </div>
                    <input type="email" class="form-control" placeholder="Email...">
                  </div>             
                                 
                    <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons" style="font-size:13px;">이용목적</i>
                      </span> 
                    </div>
			<div class="form-check">
                 <ul class="nav nav-pills nav-pills-icons" role="tablist">
              
                <li class="nav-item">
                  <a class="nav-link active" href="#dashboard-1" role="tab" data-toggle="tab">
                    <img class="material-icons" src="./assets/img/파트너스.jpg" style="display:block"> 파트너스
                  </a>
                </li>
                
                <li class="nav-item">
                  <a class="nav-link" href="#schedule-1" role="tab" data-toggle="tab">
                    <img class="material-icons" src="./assets/img/클라이언트.jpg" style="display:block"> 클라이언트
                  </a> 
                </li>
                
                <li class="nav-item">
                  <a class="nav-link" href="#tasks-1" role="tab" data-toggle="tab">
                    <img class="material-icons" src="./assets/img/투자자.jpg"style="display:block"> 투자자  
                  </a>
                </li>
                
              </ul>
              </div>
              
          </div>
</div> 

                <div class="footer text-center">
                  <a href="#pablo" class="btn btn-primary btn-link btn-wd btn-lg" data-toggle="modal" data-target="#myModal">회원가입 하기</a>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  
  
  
  
  
  
  
  
  
  
  
  
  
  <!-- 회원가입 버튼 클릭시 완료되며 LoginUI.jsp로 넘어가는 부분 -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">회원가입이 완료되었습니다.</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="material-icons">clear</i>
          </button>
        </div>
      
        <div class="modal-footer">
          <button type="button" class="btn btn-danger btn-link" data-dismiss="modal" onclick="location.href='LoginUI.jsp'">확인</button>
        </div>
      </div>
    </div>
  </div>
  
  
  
  <!-- footer -->
  <footer class="footer" data-background-color="black">
    <div class="container">
      <nav class="float-left">
        <div class="col-md-8 ml-auto mr-auto">
            <h2>Completed with examples</h2>
            <h4>The kit comes with three pre-built pages to help you get started faster. You can change the text and images and you're good to go. More importantly, looking at them will give you a picture of what you can built with this powerful kit.
            <br />
            &copy;김이박
            </h4>
        </div>
      </nav>
    </div>
  </footer>
  <!--   Core JS Files   -->
  <script src="./assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="./assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="./assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="./assets/js/plugins/moment.min.js"></script>
  <!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
  <script src="./assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="./assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
  <script src="./assets/js/material-kit.js?v=2.0.5" type="text/javascript"></script>
  
</body>
</html>