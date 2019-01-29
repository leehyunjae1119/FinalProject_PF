<%@page import="com.klp.pf.dto.PF_ProfileDto"%>
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
							<h3><b>${userdto.user_id }</b></h3>&nbsp;&nbsp;
							<span class="badge badge-pill badge-success">${profiledto.profile_activity }</span>&nbsp;&nbsp;
							<img style="width: 16px;height: 16px;" src="resources/assets/img/person.png"/>${profiledto.profile_job }
							<div class="button_position" style="float: right;">
								<button onclick="location.href='partnerReg_info.do'" class="btn btn-warning">업데이트 하기</button>
							</div>
							
							<br> <br>
							<div style="margin-top:-20px;">
							<img src="resources/assets/img/fuck.PNG" style="height: 120px; width: 230px;">
							<img src="resources/assets/img/fuck.PNG" style="height: 120px; width: 230px;">
							<img src="resources/assets/img/fuck.PNG" style="height: 120px; width: 230px;">
							
							<br> <br>
							<hr>
						</div>
					</div>

						<div class="container">
							<h3><b>자기소개</b></h3>
							<div class="button_position" style="float: right;">
								<button onclick="location.href='partnerReg_about.do'" class="btn btn-warning">업데이트 하기</button>
							</div>
							<br> <br>
							<div>
								<c:choose>
									<c:when test="${profiledto.profile_intro eq null }"> 
										<div style="text-align: center;">
											<img src="resources/assets/img/document_icon.png" style="height: 150px; width: 150px;">
											<p></p>
											<p>자기소개를 업데이트 해주세요.</p>
										</div>
									</c:when>
									<c:otherwise> 
										<%PF_ProfileDto profiledto = (PF_ProfileDto)request.getAttribute("profiledto"); %>
										<p><%=profiledto.getProfile_intro().replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></p>
									</c:otherwise>
								</c:choose>
							</div>
							<br> <br>
							<hr>
						</div>
					
						<div class="container">
							<h3><b>포트폴리오</b></h3>
							<div class="button_position" style="float: right;">
								<button onclick="location.href='partnerReg_portfolio.do'" class="btn btn-warning">업데이트 하기</button>
							</div>
							<br><br>
							<c:choose>
								<c:when test="${profiledto.profile_intro eq null }"> 
									<div style="text-align: center;">
										<img src="resources/assets/img/document_icon.png" style="height: 150px; width: 150px;">
										<p></p>
										<p>포트폴리오를 업데이트 해주세요.</p>
									</div>
								</c:when>
								<c:otherwise> 
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
								</c:otherwise>
							</c:choose>
							<br><br>
							<hr>
						</div>
					
					
						<div class="container">
							<h3><b>보유기술</b></h3>
							<div class="button_position" style="float: right;">
								<button onclick="location.href='partnerReg_technology.do'" class="btn btn-warning">업데이트 하기</button>
							</div>
							<br> <br>
							<c:choose>
								<c:when test="${techdtoList eq null }"> 
									<div style="text-align: center;">
										<img src="resources/assets/img/document_icon.png" style="height: 150px; width: 150px;">
										<p></p>
										<p>보유기술을 업데이트 해주세요.</p>
									</div>
								</c:when>
								<c:otherwise> 
								<table class="table table-striped">
									<thead>
										<tr>
											<th scope="col">종류</th>
											<th scope="col">숙련도</th>
											<th scope="col">경험</th>
											<th scope="col">도구</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${techList }" var="techdto">
											<tr>	
												<th scope="row">${techdto.tech_type }</th>
												<td>${techdto.tech_skill }</td>
												<td>${techdto.tech_exp }</td>
												<td><button class="btn btn-danger btn-sm"onclick="location.href='partnerReg_technologyDelete.do?tech_no=${techdto.tech_no }'">삭제</button></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								</c:otherwise>
							</c:choose>
							<br> <br>
							<hr>
					 	</div>
					 	

						<div class="container">
							<h3><b>경력/학력/자격증</b></h3>
							<div class="button_position" style="float: right;">
								<button onclick="location.href='partnerReg_career.do'" class="btn btn-warning">업데이트 하기</button>
							</div>
							<br><br> 
							<c:choose>
								<c:when test="${careerdtoList eq null }"> 
									<div style="text-align: center;">
										<img src="resources/assets/img/document_icon.png" style="height: 150px; width: 150px;">
										<p></p>
										<p>경력/학력/자격증을 업데이트 해주세요.</p>
									</div>
								</c:when>
								<c:otherwise> 
								<table class="table table-striped">
									<thead>
										<tr>
											<th scope="col">회사명</th>
											<th scope="col">근무부서</th>
											<th scope="col">직위</th>
											<th scope="col">근무기간</th>
											<th scope="col">도구</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${careerList}" var="careerdto">
											<tr>
												<th scope="row">${careerdto.career_company }</th>
												<td>${careerdto.career_dept }</td>
												<td>${careerdto.career_spot }</td>
												<td>${careerdto.career_hiredate } ~ ${careerdto.career_firedate }</td>
												<td><button class="btn btn-danger btn-sm"onclick="location.href='partnerReg_careerDelete.do?career_no=${careerdto.career_no }'">삭제</button></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							
							<br>
							
								<table class="table table-striped">
									<thead>
										<tr>
											<th scope="col">학교명</th>
											<th scope="col">전공</th>
											<th scope="col">상태</th>
											<th scope="col">재학기간</th>
											<th scope="col">도구</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${educationdtoList}" var="educationdto">
											<tr>
												<th scope="row">${educationdto.edu_name }</th>
												<td>${educationdto.edu_state }</td>
												<td>${educationdto.edu_major }</td>
												<td>${educationdto.edu_hiredate } ~ ${educationdto.edu_firedate }</td>
												<td><button class="btn btn-danger btn-sm"onclick="location.href='partnerReg_educationDelete.do?edu_no=${educationdto.edu_no }'">삭제</button></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								
								<br>
								
								<table class="table table-striped">
									<thead>
										<tr>
											<th scope="col">자격증명</th>
											<th scope="col">발급기관</th>
											<th scope="col">발행일자</th>
											<th scope="col">도구</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${certificatedtoList}" var="certificatedto">
											<tr>
												<th scope="row">${certificatedto.certificate_name }</th>
												<td>${certificatedto.certificate_agency }</td>
												<td>${certificatedto.certificate_issueddate }</td>
												<td><button class="btn btn-danger btn-sm"onclick="location.href='partnerReg_certificateDelete.do?certificate_no=${certificatedto.certificate_no }'">삭제</button></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								</c:otherwise>
							</c:choose> 
							<br><br>
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