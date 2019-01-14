<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Puding</title>

<%@ include file="WEB-INF/inc/topbar.jsp" %>
<link href="resources/assets/css/project_view.css" rel="stylesheet" />
<link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="resources/assets/img/favicon.png">

<!--     Fonts and icons     -->
 <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
 <!-- CSS Files -->
 <link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
 <!-- CSS Just for demo purpose, don't include it in your project -->
 <link href="resources/assets/demo/demo.css" rel="stylesheet" />

</head>
<body>

<div class="project_view_container">
	<div class="row" id="row">
		<div class="col-md-9" id="col10">
			<div class="view_title">
				<h3><span class="tim-note"><b>제공되는 참고 소스 기반 BLE 데이터 연동</b></span></h3>
			</div>
			<div class="view_title2">
				<p class="text-muted">개발 > 소프트웨어</p>
				<p class="text-muted" id="support">총 16명 지원</p>
				<span class="badge badge-pill badge-success">마감 1주일 전</span>
			</div>
			<div class="view_title_detail">
				<div class="project_title2">
       				<div class="project_money">
       					<img src="resources/assets/img/money.png" />
       					<p class="text-muted">예상 금액&nbsp;&nbsp;&nbsp;200,000원</p>
       				</div>
       				<div class="project_time">
       					<img src="resources/assets/img/time.png" />	
       					<p class="text-muted">예상 시간&nbsp;&nbsp;&nbsp;180일</p>
       				</div>
       				<div class="project_support">
       					<img src="resources/assets/img/K-021.png" />
       					<p class="text-muted">모집 마감&nbsp;&nbsp;&nbsp;2019년 1월 1일</p>
       				</div>
       			</div>
			</div>
		</div>
		<div class="col-md-3" id="col2">
			<div class="client_container">
				<p class="text-muted">클라이언트</p>
			</div>
			<div class="client_img">
				<img src="resources/assets/img/examples/studio-5.jpg" class="rounded-circle img-fluid" />
				<p class="text-muted">클라이언트에 대한 소개 어쩌구 저쩌구 어쩌구 저쩌구!!! </p>
			</div>
			<div class="star">
				<p class="text-muted">별점 공간</p>
			</div>
			<div class="project_area">
				<p class="text-muted"><b>프로젝트 등록</b></p>
				<p class="text-muted" id="p">1건</p>
				<p class="text-muted"><b>등록한 프로젝트</b></p>
				<p class="text-muted" id="p2">1건</p>
				<p class="text-muted"><b>완료한 프로젝트</b></p>
				<p class="text-muted" id="p2">1건</p>
			</div>
			<div class="total_money">
				<p class="text-muted"><b>누적 완료 금액</b></p>
			</div>
			<div class="money">
				<p class="text-muted">100,000원</p>
			</div>
		</div>
	</div>
</div>

</body>
</html>