<%@page import="com.klp.pf.dto.PF_ProfileDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  
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
	
<style type="text/css">
.main-raised{
    margin-top: 30px;
    margin-right: 30px;
    margin-bottom: 30px;
    margin-left: 30px;
}
</style>
</head>

<body class="index-page sidebar-collapse">

	<div class="main main-raised">
		<div class="section section-basic">
			<div class="container">
				<div class="row">
				
					<div class="col-12" style="margin-top:-30px;">
						<div class="container">
							<h3><b>${partneruserdto.user_id }</b></h3>&nbsp;&nbsp;
							<span class="badge badge-pill badge-success">${profiledto.profile_activity }</span>&nbsp;&nbsp;
							<img style="width: 16px;height: 16px;" src="resources/assets/img/person.png"/>${profiledto.profile_job }
							
							<div class="row">
							
							<div class="col-md-6">
								<h3><strong>활동 요약 정보</strong></h3>
								<div class="container">
									<div class=row>
										<p style="font-size: 20px">평균 평점 : <fmt:formatNumber value="${(evaluationdto.item1+evaluationdto.item2+evaluationdto.item3) / 3}" pattern=".0"/></p>
										<a href="partner_popuplist.do?user_id=${partneruserdto.user_id }"> &nbsp;&nbsp;평가리스트</a>
									</div>
									
									<c:if test="${avg eq 0}">
                            			<i class="material-icons" style="font-size: 55px;">star star star star star</i>
                            		</c:if> 
									<c:if test="${avg eq 1}">
                            			<i class="material-icons" style="color: orange;font-size: 55px;">star</i>
                            			<i class="material-icons" style="font-size: 55px;">star star star star</i>
                            		</c:if> 
                            		<c:if test="${avg eq 2}">
                            			<i class="material-icons" style="color: orange;font-size: 55px;">star star</i>
                            			<i class="material-icons" style="font-size: 55px;">star star star</i>
                            		</c:if>
                            		<c:if test="${avg eq 3}">
                            			<i class="material-icons" style="color: orange;font-size: 55px;">star star star</i>
                            			<i class="material-icons" style="font-size: 55px;">star star</i>
                            		</c:if>
                            		<c:if test="${avg eq 4}">
                            			<i class="material-icons" style="color: orange;font-size: 55px;">star star star star</i>
                            			<i class="material-icons" style="font-size: 55px;">star</i>
                      				</c:if>
                  					<c:if test="${avg eq 5}">
                        				<i class="material-icons" style="color: orange;font-size: 55px;">star star star star star</i>
                          			</c:if>
								</div>
								<div>
									<p>계약한 프로젝트 : 0 건</p>
									<p>등록한 포트폴리오 : 0 건</p>
								</div>
							</div>
							<div class="col-md-6">
								<h3><strong>평가 세부 항목</strong></h3>
								<p><b>전문성    ${evaluationdto.item1}</b></p>
								<div class="progress progress-line-success">
                					<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: ${evaluationdto.item1*20}%;">
                 						<span class="sr-only">${evaluationdto.item1}</span>
                					</div>
              					</div>
              					<p><b>의사소통    ${evaluationdto.item2}</b></p>
              					<div class="progress progress-line-success">
                					<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: ${evaluationdto.item2*20}%;">
                 						<span class="sr-only">${evaluationdto.item2}</span>
                					</div>
              					</div>
								<p><b>적극성    ${evaluationdto.item3}</b></p>
              					<div class="progress progress-line-success">
                					<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: ${evaluationdto.item3*20}%;">
                 						<span class="sr-only">${evaluationdto.item3}</span>
                					</div>
              					</div>
							</div>
							</div>
							
							<hr>
						</div>

						<div class="container">
							<h3><b>자기소개</b></h3>
							
							<br> <br>
							<div>
								<c:choose>
									<c:when test="${profiledto.profile_intro eq null }"> 
										<div style="text-align: center;">
											<img src="resources/assets/img/document_icon.png" style="height: 150px; width: 150px;">
											<p></p>
											<p>자기소개를 업데이트 중입니다.</p>
										</div>
									</c:when>
									<c:otherwise> 
										<p>${profiledto.profile_intro }</p>
									</c:otherwise>
								</c:choose>
							</div>
							<br> <br>
							<hr>
						</div>
					
						<div class="container">
							<h3><b>포트폴리오</b></h3>
							
							<br><br>
							<c:choose>
								<c:when test="${profiledto.profile_intro eq null }"> 
									<div style="text-align: center;">
										<img src="resources/assets/img/document_icon.png" style="height: 150px; width: 150px;">
										<p></p>
										<p>포트폴리오를 업데이트 중입니다.</p>
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
							
							<br> <br>
							<c:choose>
								<c:when test="${techList eq null }"> 
									<div style="text-align: center;">
										<img src="resources/assets/img/document_icon.png" style="height: 150px; width: 150px;">
										<p></p>
										<p>보유기술을 업데이트 중입니다.</p>
									</div>
								</c:when>
								<c:otherwise> 
								<table class="table table-striped">
									<thead>
										<tr>
											<th scope="col">종류</th>
											<th scope="col">숙련도</th>
											<th scope="col">경험</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${techdtoList }" var="techdto">
											<tr>	
												<th scope="row">${techdto.tech_type }</th>
												<td>${techdto.tech_skill }</td>
												<td>${techdto.tech_exp }</td>
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
							
							<br><br> 
							<c:choose>
								<c:when test="${careerList eq null }"> 
									<div style="text-align: center;">
										<img src="resources/assets/img/document_icon.png" style="height: 150px; width: 150px;">
										<p></p>
										<p>경력/학력/자격증을 업데이트 중입니다.</p>
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
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${careerdtoList}" var="careerdto">
											<tr>
												<th scope="row">${careerdto.career_company }</th>
												<td>${careerdto.career_dept }</td>
												<td>${careerdto.career_spot }</td>
												<td>${careerdto.career_hiredate } ~ ${careerdto.career_firedate }</td>
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
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${educationdtoList}" var="educationdto">
											<tr>
												<th scope="row">${educationdto.edu_name }</th>
												<td>${educationdto.edu_state }</td>
												<td>${educationdto.edu_major }</td>
												<td>${educationdto.edu_hiredate } ~ ${educationdto.edu_firedate }</td>
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
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${certificatedtoList}" var="certificatedto">
											<tr>
												<th scope="row">${certificatedto.certificate_name }</th>
												<td>${certificatedto.certificate_agency }</td>
												<td>${certificatedto.certificate_issueddate }</td>
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