<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="./assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   	프로젝트 지원내역02
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
  <link href="./assets/css/apply_list02.css" rel="stylesheet">
</head>

<body class="index-page sidebar-collapse">
  <nav class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg" color-on-scroll="100" id="sectionsNav">
    <div class="container">
      <div class="navbar-translate">
        <a class="navbar-brand" href="https://demos.creative-tim.com/material-kit/index.html">
          PUDDING </a>
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
                    <a href="#pablo" class="nav-link">프로젝트 등록</a>
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
                    <a href="#pablo" class="nav-link">Join</a>
                  </li>
               </ul>
              </div>
    </div>
  </nav>

	<div class="main main-raised" class="main">

		<div class="section section-basic">
			<div class="container">
			<div class="row">
				<div class="col-md-3" id="sidebar"><b>클라이언트</b>&nbsp;&nbsp;
					<a href="#">기본정보 수정하기</a>
					<hr>
					<div class="user_info">
						<img src="assets/img/Teemo.png" class="user_img rounded-circle img-fluid"/>
						<div class="user_info">
							<p>teemo</p>
							<p>teemo@naver.com</p>
						</div>
					</div>
					<hr>
					<div class="col-md-6">
						 <a class="btn btn-info btn-link" href="#">기본정보수정</a> 
						 <a class="btn btn-info btn-link" href="#">비밀번호변경</a> 
						 <a class="btn btn-info btn-link" href="#">계좌관리</a> 
						 <a class="btn btn-info btn-link" href="#">회원탈퇴</a>
					</div>

				</div>
				<!-- 왼쪽 사이드 바 div -->
				<div class="col">
				<div class="col col-md-15">
					<h3><b>지원중</b></h3>
					<p>지원한 프로젝트를 확인할 수 있습니다.</p>
				</div>
				<br>
						<div class="col col-md-15">
							<img src="assets/img/person.png"/><br>
							<p>
							<b>
							1. 현재 지원 중인 프로젝트 목록입니다.<br/>
							2. 클라이언트는 프로젝트의 지원자 모집 마감 이후, 최대 10일간 검토 기간을 가집니다.<br/>
							3. 프로젝트 지원 결과는 클라이언트의 지원자 검토가 완료되면 안내해드립니다.<br/>
							4. 클라이언트가 미팅을 원하는 경우, puding에서 개별적으로 연락을 드립니다.<br/>
							</b>
							</p>
						</div>
						<br><br>
						<div class="user_project">
							<b>===지원한 프로젝트가 없습니다.===</b>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	 <footer class="footer" data-background-color="gray">
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
		
		
  </body>
  </html>