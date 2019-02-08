<%@page import="com.klp.pf.dto.PF_ProfileDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <c:if test="${userdto.getUser_type() eq '파트너스' }">
  <%@ include file="WEB-INF/inc/Partners_topbar.jsp" %></c:if>
   
 <c:if test="${userdto.getUser_type() eq '클라이언트' }">
  <%@ include file="WEB-INF/inc/client_topbar.jsp" %></c:if>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="resources/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Material Kit by Creative Tim</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
<!--		 Fonts and icons		 -->
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
				<div class="row row-offcanvas row-offcanvas-right">
					<c:if test="${userdto.getUser_type() eq '파트너스' }">
  						<%@ include file="WEB-INF/inc/partners_sidebar.jsp" %></c:if>	
   
					<c:if test="${userdto.getUser_type() eq '클라이언트' }">
						<%@ include file="WEB-INF/inc/client_sidebar.jsp" %></c:if>
					<div class="col-12 col-md-9" style="margin-top:-30px;">
					
						<h3><b>자기 소개 등록</b></h3>
						<hr>
						<form action="partnerReg_infoUpdate.do">
							<input type="hidden" name="profile_no" value="${profiledto.profile_no }">
							<input type="hidden" name="profile_job" value="${profiledto.profile_job }">
							<input type="hidden" name="profile_activity" value="${profiledto.profile_activity }">
							
							<div class="form-group">
								<label for="AboutFormContent">* 자기소개</label>

								<c:choose>
									<c:when test="${profiledto.profile_intro eq null }"> 
										<textarea class="form-control" name="profile_intro" id="AboutFormContent" rows="12" placeholder="한글 기준 5000자 미만으로 작성해주세요."></textarea>
									</c:when>
									<c:otherwise> 
										<textarea class="form-control" name="profile_intro" id="AboutFormContent" rows="12" >${profiledto.profile_intro }</textarea>
									</c:otherwise>
								</c:choose>
							</div>
							
							<div class="col-12"><input type="submit" class="btn btn-success float-right" value="등록 완료"></div>
							<div class="col-12"><input type="button" class="btn btn-default float-right" value="취소"></div>
						</form>
						
					</div>
				</div>

			</div>
		</div>
	</div>
	
	
	
	<%@ include file="WEB-INF/inc/footer.jsp" %>

	<!--	 Core JS Files	 -->
	<script src="resources/assets/js/core/jquery.min.js" type="text/javascript"></script>
	<script src="resources/assets/js/core/popper.min.js" type="text/javascript"></script>
	<script src="resources/assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
	<script src="resources/assets/js/plugins/moment.min.js"></script>
	<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
	<script src="resources/assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
	<!--	Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="resources/assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
	<!--	Google Maps Plugin		-->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
	<script src="resources/assets/js/material-kit.js?v=2.0.5" type="text/javascript"></script>
</body>
</html>	