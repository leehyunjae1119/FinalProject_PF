<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
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
										<%@include file="WEB-INF/inc/profile_sidebar.jsp" %>

					<div class="col-12 col-md-9" style="margin-top:-30px;">
						<h3><b>포트폴리오 등록</b></h3>
						<hr>
						<form action="partnerReg_portfolioInsert.do">
							<div class="form-group">
    							<label for="PortfolioFormTitle">* 제목</label>
    							<input name="portfolio_title" type="text" class="form-control" id="PortfolioFormTitle" >
  							</div>
							<div class="form-group bmd-form-group is-filled">
								<label for="PortfolioFormStartday" class="label-control bmd-label-static">* 참여시작일</label>
								<input name="portfolio_start_day" type="text" class="form-control datetimepicker" id="PortfolioFormStartday" value="10/05/2016">
							</div>
							<div class="form-group bmd-form-group is-filled">
								<label for="PortfolioFormEndday" class="label-control bmd-label-static">* 참여종료일</label>
								<input name="portfolio_end_day" type="text" class="form-control datetimepicker" id="PortfolioFormEndday" value="10/05/2016">
							</div>
							<div class="form-group">
    							<label for="PortfolioFormTitle">* 참여율</label>
    							<input name="portfolio_participation" type="text" class="form-control" id="PortfolioFormTitle" placeholder="1에서 100까지 정수로 입력해주세요.">
  							</div>
							<div class="form-group">
								<label for="AboutFormContent">* 요약내용</label>
								<textarea name="portfolio_content" class="form-control" id="AboutFormContent" rows="8" placeholder="한글 기준 5000자 미만으로 작성해주세요."></textarea>
							</div>
							<!-- ---------------------파일 업로드 ---------------- -->
							<div class="portfolioupload">
							
								<input type="text" id="portfolio_file" name="portfolio_file"  hidden=""/>
							
							</div>
							<br><br><br>
							<div class="col-12"><input type="submit" class="btn btn-success float-right" value="등록 완료"></div>
							<div class="col-12"><input type="button" class="btn btn-default float-right" onclick="location.href='partners_profile.do'" value="취소"></div>
						</form>
						
						<form  id="fileUploadForm" action="fileUpload.do" method="post" enctype="multipart/form-data">
							<div class="form-group form-file-upload form-file-multiple" style="position:relative; bottom:120px;">
								<input type="file" id="fileUpload" name="fileUpload" class="inputFileHidden">
								<div class="input-group">
									<input name="portfolio_file" type="text" class="form-control inputFileVisible" placeholder="Single File"> 
										<button type="button" class="btn btn-fab btn-round btn-primary" onClick="fileSubmit();">
											<i class="material-icons">attach_file</i>		
										</button>						
								</div>
							</div>
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
	    function fileSubmit() {
	        var formData = new FormData($("#fileUploadForm")[0]);
	        $.ajax({
	            type : 'post',
	            url : 'fileUpload.do',
	            data : formData,
	            processData : false,
	            contentType : false,
	            success : function(html) {
	                alert("파일 업로드하였습니다.");
	                document.getElementById("portfolio_file").value=html;
	            },
	            error : function(error) {
	                alert("포트폴리오 업로드에 실패하였습니다.");
	                console.log(error);
	                console.log(error.status);
	            }
	        });
	    }	
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