<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<c:if test="${userdto.getUser_type() eq '파트너스' }">
	<%@ include file="WEB-INF/inc/Partners_topbar.jsp"%></c:if>

<c:if test="${userdto.getUser_type() eq '클라이언트' }">
	<%@ include file="WEB-INF/inc/client_topbar.jsp"%></c:if>
<c:if test="${userdto.getUser_type() eq '투자자' }">
  <%@ include file="WEB-INF/inc/investor_topbar.jsp" %>
</c:if>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png"
	href="resources/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Puding</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--		 Fonts and icons		 -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!-- CSS Files -->
<link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="resources/assets/demo/demo.css" rel="stylesheet" />

<!-- fontawesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
</head>
<body class="index-page sidebar-collapse">
	<jsp:useBean id="dto" class="com.klp.pf.dto.PF_PortfolioDto"
		scope="request"></jsp:useBean>

	<div class="main main-raised">
		<div class="section section-basic">
			<div class="container">
				<div class="row row-offcanvas row-offcanvas-right">
					<%@include file="WEB-INF/inc/profile_sidebar.jsp" %>

					<div class="col-12 col-md-9" style="margin-top: -30px;">
						<h2>
							<b>${portfoliodto.portfolio_title }</b>
						</h2>
						<hr>
							<div class="form-group bmd-form-group is-filled">
								<label for="PortfolioFormStartday"
									class="label-control bmd-label-static">참여시작일</label>
								<p class="text-muted" id="detail">${portfoliodto.portfolio_start_day }</p>
							</div>
							<div class="form-group bmd-form-group is-filled">
								<label for="PortfolioFormEndday"
									class="label-control bmd-label-static">참여종료일</label>
								<p class="text-muted" id="detail">${portfoliodto.portfolio_end_day }</p>
							</div>
							<div class="form-group">
								<label for="PortfolioFormTitle">참여율</label>
								<p class="text-muted" id="detail">${portfoliodto.portfolio_participation }
								</p>
							</div>
							<div class="form-group">
								<label for="AboutFormContent">요약내용</label>
								<p class="text-muted" id="detail">${portfoliodto.portfolio_content }</p>
							</div>
							<br>
							<br>
							<br>
						<c:if test="${portfoliodto.portfolio_file ne null }">
							<iframe src="http://localhost:8787/pf/storage/${portfoliodto.portfolio_file }"
								style="width: 100%; height: 500px;" frameborder="0"></iframe>
							<%--          <h1>${dto.board_file }</h1> --%>
						</c:if>
						<hr />
						<div class="button_position" style="float: right;">
							<button onclick="location.href='partners_profile.do'" class="btn btn-warning">뒤로가기</button>
						</div>				
					</div>
				</div>

			</div>
		</div>
	</div>



	<%@ include file="WEB-INF/inc/footer.jsp"%>

	<!--	 Core JS Files	 -->
	<script src="resources/assets/js/core/jquery.min.js"
		type="text/javascript"></script>
	<script src="resources/assets/js/core/popper.min.js"
		type="text/javascript"></script>
	<script src="resources/assets/js/core/bootstrap-material-design.min.js"
		type="text/javascript"></script>
	<script src="resources/assets/js/plugins/moment.min.js"></script>
	<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
	<script src="resources/assets/js/plugins/bootstrap-datetimepicker.js"
		type="text/javascript"></script>
	<!--	Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="resources/assets/js/plugins/nouislider.min.js"
		type="text/javascript"></script>
	<!--	Google Maps Plugin		-->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
	<script src="resources/assets/js/material-kit.js?v=2.0.5"
		type="text/javascript"></script>

  </script>
</body>
</html>
