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
   	계정유형변경01
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
  <link href="./assets/css/apply_list.css" rel="stylesheet">
  <link href="./assets/css/user_role01.css" rel="stylesheet">
  
  
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

	<div class="main main-raised">

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
					

				</div>
				<!-- 왼쪽 사이드 바 div -->
				<div class="col">
				<div class="col col-md-15">
					<h3><b>계정 유형 변경 신청</b></h3>
					<p>계정의 유형을 변경할 수 있습니다.</p>
				</div>
				<br>
						<div class="col col-md-15">
							<form action="#">
								<b>유형변경</b>
								<select title="user_type" class="form-control">
									<option>=== 유형을 선택해 주세요 ===</option>
									<option>개인</option>
									<option>클라이언트</option>
									<option>투자자</option>
								</select>
							</form>
						</div>
							<div class="user_bt">
								<input type="submit" class="btn btn-primary" value="변경하기">
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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
		
		
  </body>
  </html>