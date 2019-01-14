<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="WEB-INF/inc/topbar.jsp" %>
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
	
	
	<div class="main main-raised" style="margin-top: 100px">
		<div class="section section-basic">
			<div class="container">
				<div class="row row-offcanvas row-offcanvas-right">
					<div class="col-6 col-md-2 sidebar-offcanvas" id="sidebar">
						<div class="list-group">
							<a class="btn btn-info btn-link" href="PartnerReg_Info.jsp">파트너스 정보</a>
							<a class="btn btn-info btn-link" href="PartnerReg_About.jsp">자기 소개</a>
							<a class="btn btn-info btn-link active" href="PartnerReg_Portfolio.jsp">포트폴리오</a>
							<a class="btn btn-info btn-link" href="PartnerReg_Technology.jsp">보유 기술</a>
							<a class="btn btn-info btn-link" href="PartnerReg_career.jsp">경력/학력/자격증</a>
						</div>
					</div>
					<div class="col-12 col-md-9">
						<h2><strong>포트폴리오 등록</strong></h2>
						<hr>
						<form action="#">
							<div class="form-group">
    							<label for="PortfolioFormTitle">* 제목</label>
    							<input type="email" class="form-control" id="PortfolioFormTitle" >
  							</div>
							<div class="form-group bmd-form-group is-filled">
								<label for="PortfolioFormStartday" class="label-control bmd-label-static">* 참여시작일</label>
								<input type="text" class="form-control datetimepicker" id="PortfolioFormStartday" value="10/05/2016">
							</div>
							<div class="form-group bmd-form-group is-filled">
								<label for="PortfolioFormEndday" class="label-control bmd-label-static">* 참여종료일</label>
								<input type="text" class="form-control datetimepicker" id="PortfolioFormEndday" value="10/05/2016">
							</div>
							<div class="form-group">
    							<label for="PortfolioFormTitle">* 참여율</label>
    							<input type="text" class="form-control" id="PortfolioFormTitle" placeholder="1에서 100까지 정수로 입력해주세요.">
  							</div>
							<div class="form-group">
								<label for="AboutFormContent">* 요약내용</label>
								<textarea class="form-control" id="AboutFormContent" rows="8" placeholder="한글 기준 5000자 미만으로 작성해주세요."></textarea>
							</div>
							<div class="form-group form-file-upload form-file-multiple">
								<input type="file" class="inputFileHidden">
								<div class="input-group">
									<input type="text" class="form-control inputFileVisible" placeholder="Single File"> 
										<span class="input-group-btn">
											<button type="button" class="btn btn-fab btn-round btn-primary">
												<i class="material-icons">attach_file</i>
											</button>
										</span>
								</div>
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
	<script>
		$(document).ready(function() {
			//init DateTimePickers
			materialKit.initFormExtendedDatetimepickers();
		});

	</script>
	<script>
    $(document).ready(function() {
      if ($('.card-header.card-chart').length != 0) {
        md.initDashboardPageCharts();
      }

      if ($('#websiteViewsChart').length != 0) {
        md.initDocumentationCharts();
      }





      if ($('.datetimepicker').length != 0) {
        md.initFormExtendedDatetimepickers();
      }
      if ($('#fullCalendar').length != 0) {
        md.initFullCalendar();
      }

      if ($('.slider').length != 0) {
        md.initSliders();
      }

      //  Activate the tooltips
      $('[data-toggle="tooltip"]').tooltip();

      // Activate Popovers
      $('[data-toggle="popover"]').popover();

      // Vector map
      if ($('#worldMap').length != 0) {
        md.initVectorMap();
      }

      if ($('#RegisterValidation').length != 0) {

        setFormValidation('#RegisterValidation');

        function setFormValidation(id) {
          $(id).validate({
            highlight: function(element) {
              $(element).closest('.form-group').removeClass('has-success').addClass('has-danger');
              $(element).closest('.form-check').removeClass('has-success').addClass('has-danger');
            },
            success: function(element) {
              $(element).closest('.form-group').removeClass('has-danger').addClass('has-success');
              $(element).closest('.form-check').removeClass('has-danger').addClass('has-success');
            },
            errorPlacement: function(error, element) {
              $(element).closest('.form-group').append(error);
            },
          });
        }
      }

    });

    // FileInput
    $('.form-file-simple .inputFileVisible').click(function() {
      $(this).siblings('.inputFileHidden').trigger('click');
    });

    $('.form-file-simple .inputFileHidden').change(function() {
      var filename = $(this).val().replace(/C:\\fakepath\\/i, '');
      $(this).siblings('.inputFileVisible').val(filename);
    });

    $('.form-file-multiple .inputFileVisible, .form-file-multiple .input-group-btn').click(function() {
      $(this).parent().parent().find('.inputFileHidden').trigger('click');
      $(this).parent().parent().addClass('is-focused');
    });

    $('.form-file-multiple .inputFileHidden').change(function() {
      var names = '';
      for (var i = 0; i < $(this).get(0).files.length; ++i) {
        if (i < $(this).get(0).files.length - 1) {
          names += $(this).get(0).files.item(i).name + ',';
        } else {
          names += $(this).get(0).files.item(i).name;
        }
      }
      $(this).siblings('.input-group').find('.inputFileVisible').val(names);
    });

    $('.form-file-multiple .btn').on('focus', function() {
      $(this).parent().siblings().trigger('focus');
    });

    $('.form-file-multiple .btn').on('focusout', function() {
      $(this).parent().siblings().trigger('focusout');
    });
  </script>
</body>
</html>	