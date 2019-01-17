<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  
  <%@ include file="WEB-INF/inc/topbar.jsp" %>
<link href="resources/assets/css/project_insert.css" rel="stylesheet" />
<link rel="apple-touch-icon" sizes="76x76"href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png"href="resources/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!-- CSS Files -->
<link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="resources/assets/demo/demo.css" rel="stylesheet" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />


<title>Puding</title>

</head>

<body class="index-page sidebar-collapse">

	<div class="section section-signup page-header"
		style="background-image: url('resources/assets/img/city.jpg'); margin-top: 100px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6 ml-auto mr-auto">
					<div class="card card-login" style="width: 428px;">
						<form class="form" method="post" action="joinCheck.do" onsubmit="return PwSameCheck(this)">
							<div class="card-header card-header-primary text-center">
								<h4 class="card-title">Sign Up</h4>

							</div>
							<p class="description text-center"></p>

							<div class="card-body">

								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"> 
											<i class="material-icons" style="font-size: 13px;">아이디</i>
										</span>
									</div>
									<input type="text" class="form-control" name="user_id" placeholder="ID...">
								</div>

								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"> 
											<i class="material-icons" style="font-size: 13px;">비밀번호</i>
										</span>
									</div>
									<input type="password" class="form-control" id="user_pw" name="user_pw" placeholder="Password...">
								</div>

								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"> 
											<i class="material-icons" style="font-size: 13px;">비밀번호 확인</i>
										</span>
									</div>
									<input type="password" class="form-control" id="user_pwCheck" placeholder="Password...">
								</div>

								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"> 
											<i class="material-icons" style="font-size: 13px;">이메일</i>
										</span>
									</div>
									<input type="email" class="form-control" name="user_email" placeholder="Email...">
								</div>

								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"> 
											<i class="material-icons" style="font-size: 13px;">이용목적</i>
										</span>
									</div>
									<div class="form-check">
										<input type="hidden" name="user_type" id="user_type" value="파트너스">
										<ul class="nav nav-pills nav-pills-icons" role="tablist"> 
											<li class="nav-item" value="파트너스" onclick="UserTypeSelect(this);">
												<a class="nav-link active" href="#dashboard-1" role="tab" data-toggle="tab"> 
													<img class="material-icons" src="resources/assets/img/파트너스.jpg" style="display: block"><span>파트너스</span>
												</a>
											</li>
											<li class="nav-item" value="클라이언트" onclick="UserTypeSelect(this);">
												<a class="nav-link" href="#schedule-1" role="tab" data-toggle="tab"> 
													<img class="material-icons" src="resources/assets/img/클라이언트.jpg" style="display: block"><span>클라이언트</span>
												</a>
											</li>
											<li class="nav-item" value="투자자" onclick="UserTypeSelect(this);">
												<a class="nav-link" href="#tasks-1" role="tab" data-toggle="tab"> 
													<img class="material-icons"  src="resources/assets/img/투자자.jpg" style="display: block"><span>투자자</span>
												</a>
											</li>
										</ul>
									</div>

								</div>
							</div>

							<div class="footer text-center">
								<input type="submit" class="btn btn-primary btn-link btn-wd btn-lg" value="회원가입 하기">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">
//이용목적 ( 계정 유형 ) 선택에 따른 값 전달 스크립트
function UserTypeSelect(val) {
	var usertype = val.getAttribute("value");
	document.getElementById("user_type").setAttribute("value", usertype);
}
</script>

<!-- 	<!-- 회원가입 버튼 클릭시 완료되며 LoginUI.jsp로 넘어가는 부분 --> -->
<!-- 	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"> -->
<!-- 		<div class="modal-dialog" role="document"> -->
<!-- 			<div class="modal-content"> -->
<!-- 				<div class="modal-header"> -->
<!-- 					<h5 class="modal-title">회원가입이 완료되었습니다.</h5> -->
<!-- 					<button type="button" class="close" data-dismiss="modal" -->
<!-- 						aria-label="Close"> -->
<!-- 						<i class="material-icons">clear</i> -->
<!-- 					</button> -->
<!-- 				</div> -->

<!-- 				<div class="modal-footer"> -->
<!-- 					<button type="button" class="btn btn-danger btn-link" -->
<!-- 						data-dismiss="modal" onclick="location.href='LoginUI.jsp'">확인</button> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->



	<!-- footer -->
	<%@ include file="WEB-INF/inc/footer.jsp"%>
	<!--   Core JS Files   -->
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