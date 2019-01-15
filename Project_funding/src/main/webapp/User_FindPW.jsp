<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  
  <%@ include file="WEB-INF/inc/topbar.jsp" %>
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
	
	<div class="section section-signup page-header"
		style="background-image: url('resources/assets/img/city.jpg'); margin-top: 100px;">	
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6 ml-auto mr-auto">
					<div class="card card-login">
						<form class="form" method="" action="">
							<div class="card-header card-header-primary text-center">
								<h4 class="card-title">Find Password</h4>

							</div>
							<p class="description text-center"></p>


							<div class="card-body">

								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"> 
											<i class="material-icons" style="font-size: 13px;">이메일</i>
										</span>
									</div>
									<input type="email" class="form-control" placeholder="Email..."/>
								</div>

								<span class="input-group-text">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="#pablo" class="btn btn-primary btn-link btn-wd btn-lg" data-toggle="modal" data-target="#myModal">
								비밀번호 찾기
								</a>		
								</span>		
								<hr>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"> 
										<i class="material-icons" style="font-size: 13px;">입력하신 이메일로 임시 주소를 발송해 드립니다.</i>
										</span>
									</div>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<div class="input-group-prepend">
										<span class="input-group-text">
											<i class="material-icons" style="font-size: 13px;">아직 회원이	아니신가요?</i>
											 <a href="SignUp.jsp" class="btn btn-primary btn-link btn-wd btn-lg">회원가입</a>
										</span>
									</div>
								</div>
							</div>



						</form>
					</div>
				</div>
			</div>
		</div>
	</div>





<!-- modal 버튼 클릭시 나오는 메세지 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">비밀번호 재설정 메일을 전송하였습니다.</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="material-icons">clear</i>
          </button>
        </div>
      
        <div class="modal-footer">
          <button type="button" class="btn btn-danger btn-link" data-dismiss="modal" onclick="location.href='LoginUI.jsp'">확인</button>
        </div>
      </div>
    </div>
  </div>







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