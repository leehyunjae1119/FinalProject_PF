<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  
   	<c:if test="${userdto.getUser_type() eq '파트너스' }">
  <%@ include file="WEB-INF/inc/Partners_topbar.jsp" %></c:if>
   
 	<c:if test="${userdto.getUser_type() eq '클라이언트' }">
  <%@ include file="WEB-INF/inc/client_topbar.jsp" %></c:if>
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
  	<link href="resources/assets/css/PartnerProfile.css" rel="stylesheet">
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

	<div class="main main-raised">
		<div class="section section-basic">
			<div class="container">
				<div class="row">
 	<%@ include file="WEB-INF/inc/partners_sidebar.jsp" %>
				
					<div class="col-12 col-md-9" style="margin-top:-30px;">
						<div class="container">
							<h3><b>(아이디)</b></h3>
							<img src="resources/assets/img/person.png"/>개인
							<span class="badge badge-pill badge-success">활동 가능</span>
							<div class="button_position" style="float: right;">
								<button onclick="location.href='partnerReg_info.do'" class="btn btn-warning">업데이트 하기</button>
							</div>
							
							<br> <br>
							<div style="margin-top:-20px;">
							<img src="resources/assets/img/fuck.PNG"	style="height: 120px; width: 230px;">
							<img src="resources/assets/img/fuck.PNG"style="height: 120px; width: 230px;">
							<img src="resources/assets/img/fuck.PNG"style="height: 120px; width: 230px;">
							
							<br> <br>
							<hr>
						</div>
					</div>
						<div class="container">
							<h3><b>자기소개</b></h3>
							<div class="button_position" style="float: right;">
								<button onclick="location.href='partnerReg_about.do'" class="btn btn-warning">업데이트 하기</button>
							</div>
							<br> <br><div>밥을 위해서는 옷을 위경해서는 미인을 구하기 위해서는 그랬는가?밥을 위해서는 옷을
							위해서는 미인을 구하기 위해서는 그랬는가?밥을 위해서는 옷을 위해서는 미인을 구하기 위해서는 그랬는가? 밥을 위해서는
							옷을 위해서는 미인을 구하기 위해서는 그랬는가? <div></div><br> <br>
							<hr>
						</div>
					</div>
					
						<div class="container">
							<h3><b>포트폴리오</b></h3>
							<div class="button_position" style="float: right;">
								<button onclick="location.href='partnerReg_portfolio.do'" class="btn btn-warning">업데이트 하기</button>
							</div>
							<br><br>
								<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">제목</th>
										<th scope="col">시작일</th>
										<th scope="col">참여율</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row"></th>
										<td></td>
										<td></td>
									</tr>
									
								</tbody>
							</table>
							<br><br>
									<hr>
								</div>
					
					
						<div class="container">
							<h3><b>보유기술</b></h3>
							<div class="button_position" style="float: right;">
								<button onclick="location.href='partnerReg_technology.do'" class="btn btn-warning">업데이트 하기</button>							</div>
							<br> <br>
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">종류</th>
										<th scope="col">숙련도</th>
										<th scope="col">경험</th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">C/C++</th>
										<td>고급</td>
										<td>10년 이상</td>

									</tr>
									<tr>
										<th scope="row">Node.js</th>
										<td>고급</td>
										<td>5년 이상 10년 미만</td>

									</tr>
									<tr>
										<th scope="row">caseperjs</th>
										<td>고급</td>
										<td>3년 이상 5년 미만</td>

									</tr>
									<tr>
										<th scope="row">React</th>
										<td>고급</td>
										<td>1년 이상 3년 미만</td>

									</tr>
									<tr>
										<th scope="row">Firebase</th>
										<td>고급</td>
										<td>3년 이상 7년 미만</td>

									</tr>
									<tr>
										<th scope="row">AWS</th>
										<td>고급</td>
										<td>5년 이상 8년 미만</td>
									</tr>
									<tr>
										<th scope="row">Zeplin</th>
										<td>고급</td>
										<td>4년 이상 6년 미만</td>

									</tr>
								</tbody>
							</table>
							<br> <br>
							<hr>
					 </div>
					


						<div class="container">
							<h3><b>경력/학력/자격증</b></h3>
							<div class="button_position" style="float: right;">
								<button onclick="location.href='partnerReg_career.do'" class="btn btn-warning">업데이트 하기</button>
							</div>
							<br>
							<br>
							
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">회사명</th>
										<th scope="col">근무부서</th>
										<th scope="col">직위</th>
										<th scope="col">근무기간</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">캐주얼스텝스</th>
										<td>개발팀</td>
										<td>Software Engineer</td>
										<td>2014년 06월 ~ 2016년 3월</td>
									</tr>
									<tr>
										<th scope="row">코스콤</th>
										<td>정보시스템 재구축 TF팀</td>
										<td>대리</td>
										<td>2013년 03월 ~ 2014년 5월</td>
									</tr>
									<tr>
										<th scope="row">삼성SDS</th>
										<td>증권 트레이닝 개발팀</td>
										<td>대리</td>
										<td>2007년 08월 ~ 2011년 5월</td>
									</tr>
									<tr>
										<th scope="row">nerdyfactoy</th>
										<td>개발팀</td>
										<td>대표,CEO</td>
										<td>2016년 03월 ~ 2016년 12월</td>
									</tr>
								</tbody>
							</table>
							
							<br>
							
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">학교명</th>
										<th scope="col">전공</th>
										<th scope="col">분류</th>
										<th scope="col">상태</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">ㅇㅇ대학교</th>
										<td>경영학부</td>
										<td>대학교</td>
										<td>졸업</td>
									</tr>

									<tr>
										<th scope="row">ㅇㅇ고등학교</th>
										<td>ㅇㅇ</td>
										<td>고등학교</td>
										<td>졸업</td>
									</tr>
								</tbody>
							</table>
							
							<br>
							
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">자격증명</th>
										<th scope="col">발급기관</th>
										<th scope="col">발행일자</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">정보처리기사</th>
										<td>한국산업인력공단</td>
										<td>2018년 08월 16일</td>
									</tr>
									<tr>
										<th scope="row">정보처리기사</th>
										<td>한국산업인력공단</td>
										<td>2018년 08월 16일</td>
									</tr>
								</tbody>
							</table>

							<hr>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- footer 부분 -->
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
	
</body>
</html>