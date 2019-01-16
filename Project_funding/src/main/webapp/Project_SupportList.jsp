<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
 <%@ include file="WEB-INF/inc/client_topbar.jsp" %>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="resources/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   	프로젝트 지원내역01
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="resources/assets/demo/demo.css" rel="stylesheet" />
  <!-- index.css 참조 -->
  <link href="resources/assets/css/index.css" rel="stylesheet" />
  <!-- fontawesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

  <link href="resources/assets/css/Project_SupportList.css" rel="stylesheet">
</head>

<body class="index-page sidebar-collapse">
	<div class="main main-raised">
		<div class="section section-basic">
			<div class="container">
			<div class="row">
				<div class="col-md-3" id="sidebar"><b>클라이언트</b>&nbsp;&nbsp;
					<a href="user_infoUpdate.do">기본정보 수정하기</a>
					<hr>
					<div class="user_info">
						<img src="resources/assets/img/Teemo.png" class="user_img rounded-circle img-fluid"/>
						<div class="user_info">
							<p>teemo</p>
							<p>teemo@naver.com</p>
						</div>
					</div>
					<hr>

					<div class="col-md-6">
						 <a class="btn btn-info btn-link" href="user_infoUpdate.do">기본정보수정</a> 
						 <a class="btn btn-info btn-link " href="user_pwUpdate.do">비밀번호변경</a> 
						 <a class="btn btn-info btn-link" href="user_delete.do">회원탈퇴</a>
					</div>

				</div>
				<!-- 왼쪽 사이드 바 div -->
				<div class="col" style="margin-top: -30px;">
				<div class="col col-md-15" id="apply">
					<h3><b>지원내역</b></h3>
					<p>회원님이 지원한 프로젝트 목록입니다.</p>
				</div>
				<br>
						<div class="col col-md-15" style="border: 1px solid black;">
							<a href="#"><b>자바 프레임워크 웹 어플리케이션 개발자 양성과정</b></a>
							<p>
								<img src="resources/assets/img/money.png"/>&nbsp;예상금액:&nbsp;<b>500,000,000</b>|&nbsp;
								<img src="resources/assets/img/time.png"/>&nbsp;예상기간:&nbsp;<b>3개월</b>| &nbsp;
								<img src="resources/assets/img/calendar.png"/>&nbsp;모집마감:&nbsp;<b>2019.02.08</b>
							<p>
								<b>서비스 중인 앱의 신규 UI를 적용하는 프로젝트입니다. 기존 출시 앱과 기능은 동일하며 기존 개발
									소스코드는 (Android/iOS) 제공 드릴 예정입니다. 디자인 위주의 리뉴얼이기 때문에 UI 개발 작업이
									주입니다. 전반적인 UI 디자인 변경 및 일부 추가 기능을 개발하는 작업입니다. (UI 디자인 가이드 및
									Zeplin 형태로 제공드릴 예정입니다.)
								</b>
						</div>
						<p>
						<div class="col col-md-15" style="border: 1px solid black;">
							<a href="#"><b>자바 프레임워크 웹 어플리케이션 개발자 양성과정</b></a>
							<p>
								<img src="resources/assets/img/money.png"/>&nbsp;예상금액:&nbsp;<b>500,000,000</b>|&nbsp;
								<img src="resources/assets/img/time.png"/>&nbsp;예상기간:&nbsp;<b>3개월</b>| &nbsp;
								<img src="resources/assets/img/calendar.png"/>&nbsp;모집마감:&nbsp;<b>2019.02.08</b>
							<p>
								<b>서비스 중인 앱의 신규 UI를 적용하는 프로젝트입니다. 기존 출시 앱과 기능은 동일하며 기존 개발
									소스코드는 (Android/iOS) 제공 드릴 예정입니다. 디자인 위주의 리뉴얼이기 때문에 UI 개발 작업이
									주입니다. 전반적인 UI 디자인 변경 및 일부 추가 기능을 개발하는 작업입니다. (UI 디자인 가이드 및
									Zeplin 형태로 제공드릴 예정입니다.)
								</b>
						</div>
						<p>
						<div class="col col-md-15" style="border: 1px solid black;">
							<a href="#"><b>자바 프레임워크 웹 어플리케이션 개발자 양성과정</b></a>
							<p>
								<img src="resources/assets/img/money.png"/>&nbsp;예상금액:&nbsp;<b>500,000,000</b>|&nbsp;
								<img src="resources/assets/img/time.png"/>&nbsp;예상기간:&nbsp;<b>3개월</b>| &nbsp;
								<img src="resources/assets/img/calendar.png"/>&nbsp;모집마감:&nbsp;<b>2019.02.08</b>
							<p>
								<b>서비스 중인 앱의 신규 UI를 적용하는 프로젝트입니다. 기존 출시 앱과 기능은 동일하며 기존 개발
									소스코드는 (Android/iOS) 제공 드릴 예정입니다. 디자인 위주의 리뉴얼이기 때문에 UI 개발 작업이
									주입니다. 전반적인 UI 디자인 변경 및 일부 추가 기능을 개발하는 작업입니다. (UI 디자인 가이드 및
									Zeplin 형태로 제공드릴 예정입니다.)
								</b>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	 <%@ include file="WEB-INF/inc/footer.jsp" %>
		
		
  </body>
  </html>