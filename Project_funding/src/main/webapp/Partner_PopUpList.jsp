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
							<div class="row">
							<div class="col">
							<div class="col col-md-15">
							<h3><b>파트너스 평점 리스트</b></h3>
							<p class="text-muted" style="font-size: 13px;">클라이언트가 평가한 평점을 확인할 수 있습니다.</p>
						</div>
						<br>
						<div class="col col-md-15" id="col15">
						<c:forEach items="${evaluationlist }" var="evaluationdto">
							<div class="card card-nav-tabs">
                				<div class="card-header card-header-rose">
                  					<!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
                  					<div class="nav-tabs-navigation">
                    					<div class="nav-tabs-wrapper">
                      						<ul class="nav nav-tabs" style="display: flex;">
                        						<li class="nav-item" style="flex: 1;">
                         							<a class="nav-link">
                            							<i class="material-icons">build</i> <b>전문성</b>
                            							<c:if test="${evaluationdto.evaluation_item1 eq 1}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star</i>
                            							</c:if> 
                            							<c:if test="${evaluationdto.evaluation_item1 eq 2}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star</i>
                            							</c:if>
                            							<c:if test="${evaluationdto.evaluation_item1 eq 3}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star star</i>
                            							</c:if>
                            							<c:if test="${evaluationdto.evaluation_item1 eq 4}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star star star</i>
                            							</c:if>
                            							<c:if test="${evaluationdto.evaluation_item1 eq 5}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star star star star</i>
                            							</c:if>
                         							</a>
                        						</li>
												<li class="nav-item" style="flex: 1;">
													<a class="nav-link">
														<i class="material-icons">chat</i> <b>의사소통</b>
														<c:if test="${evaluationdto.evaluation_item2 eq 1}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star</i>
                            							</c:if> 
                            							<c:if test="${evaluationdto.evaluation_item2 eq 2}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star</i>
                            							</c:if>
                            							<c:if test="${evaluationdto.evaluation_item2 eq 3}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star star</i>
                            							</c:if>
                            							<c:if test="${evaluationdto.evaluation_item2 eq 4}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star star star</i>
                            							</c:if>
                            							<c:if test="${evaluationdto.evaluation_item2 eq 5}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star star star star</i>
                            							</c:if>
													</a>
												</li>
												<li class="nav-item" style="flex: 1;">
													<a class="nav-link">
														<i class="material-icons">face</i> <b>적극성</b>
														<c:if test="${evaluationdto.evaluation_item3 eq 1}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star</i>
                            							</c:if> 
                            							<c:if test="${evaluationdto.evaluation_item3 eq 2}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star</i>
                            							</c:if>
                            							<c:if test="${evaluationdto.evaluation_item3 eq 3}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star star</i>
                            							</c:if>
                            							<c:if test="${evaluationdto.evaluation_item3 eq 4}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star star star</i>
                            							</c:if>
                            							<c:if test="${evaluationdto.evaluation_item3 eq 5}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star star star star</i>
                            							</c:if>
													</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="card-body ">
									<div class="tab-content">
										<div class="tab-pane active" id="profile">
											<br>
											<p> <b>평가 클라이언트</b> : <strong>${evaluationdto.evaluation_writer}</strong> </p>
											<p> <b> ${evaluationdto.evaluation_content} </b></p>
										</div>
									</div>
								</div>
							</div>  
							<br>
						</c:forEach>        
						</div>
							</div>
							</div>
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