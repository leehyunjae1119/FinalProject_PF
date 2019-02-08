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
<style>
	th{
		background-color: #e9ecef;
		font-size: 14px;
	}
	option{
		text-align: center;
	}
</style>
<body class="index-page sidebar-collapse">
	
	
	<div class="main main-raised">
		<div class="section section-basic">
			<div class="container">
				<div class="row row-offcanvas row-offcanvas-right">
									<%@ include file="WEB-INF/inc/partners_sidebar.jsp" %>

					<div class="col-12 col-md-9" style="margin-top:-30px;">
						<h3><b>경력 / 학력 / 자격증 등록</b></h3>
						<hr>
						<form action="partnerReg_careerInsert.do">
							<div class="container" id="careerContainer">
								<h4><strong>경력</strong></h4>
								<table class="table table-bordered table-sm" id="career">
									<tbody>
										<tr>
      										<th style="vertical-align: middle;">* 회사명</th>
      										<td colspan="3"><input name="career_company" type="text" class="form-control"></input></td>
										</tr>
										<tr>
      										<th style="vertical-align: middle;">* 근무부서</th>
      										<td><input name="career_dept" type="text" class="form-control"></input></td>
      										<th style="vertical-align: middle;">* 직위</th>
      										<td><input name="career_spot" type="text" class="form-control"></input></td>
										</tr>
										<tr>
      										<th style="vertical-align: middle;">* 입사일</th>
      										<td>
      											<div class="input-group">
      												<select name="career_hiredate_year" class="form-control select_year"></select>
      												<select name="career_hiredate_month" class="form-control select_month"></select>
      											</div>
      										</td>
      										<th style="vertical-align: middle;">&nbsp;퇴사일</th>
      										<td style="vertical-align: middle; font-size:14px">
      											<div class="input-group">
      												<select name="career_firedate_year" class="form-control select_year"></select>
      												<select name="career_firedate_month" class="form-control select_month"></select>
      											</div>
      										</td>
										</tr>
										<tr>
											<td colspan="4" style="text-align: right;">
												<input class="btn btn-danger btn-sm" onclick="removeTable(this);" value="삭제">
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<input class="btn btn-default btn-sm" onclick="addCareer();" value="+ 경력 추가">
							
							<div class="container" id="EduContainer">
								<h4><strong>학력</strong></h4>
								<table class="table table-bordered table-sm" id="Edu">
									<tbody>
										<tr>
      										<th style="vertical-align: middle;">* 학교명</th>
      										<td colspan="3"><input name="edu_name" type="text" class="form-control"></input></td>
										</tr>
										<tr>
      										<th style="vertical-align: middle;">* 상태</th>
      										<td>
      											<select name="edu_state" class="form-control">
													<option value="졸업">졸업</option>
													<option value="재학">재학</option>
													<option value="중퇴">중퇴</option>
												</select>
      										</td>
      										<th style="vertical-align: middle;">* 전공</th>
      										<td><input name="edu_major" type="text" class="form-control"></input></td>
										</tr>
										<tr>
      										<th style="vertical-align: middle;">* 입학일</th>
      										<td>
      											<div class="input-group">
      												<select name="edu_hiredate_year" class="form-control select_year"></select>
      												<select name="edu_hiredate_month" class="form-control select_month"></select>
      											</div>
      										</td>
      										<th style="vertical-align: middle;">&nbsp;졸업일</th>
      										<td style="vertical-align: middle; font-size:14px">
      											<div class="input-group">
      												<select name="edu_firedate_year" class="form-control select_year"></select>
      												<select name="edu_firedate_month" class="form-control select_month"></select>
      											</div>
      										</td>
										</tr>
										<tr>
											<td colspan="4" style="text-align: right;">
												<input class="btn btn-danger btn-sm" onclick="removeTable(this);" value="삭제">
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<input class="btn btn-default btn-sm" onclick="addEdu();" value="+ 학력 추가">
							
							<div class="container" id="certificateContainer">
								<h4><strong>자격증</strong></h4>
								<table class="table table-bordered table-sm" id="certificate">
									<tbody>
										<tr>
      										<th style="vertical-align: middle;">* 자격증명</th>
      										<td colspan="3"><input name="certificate_name" type="text" class="form-control"></input></td>
										</tr>
										<tr>
      										<th style="vertical-align: middle;">* 발급기관</th>
      										<td><input name="certificate_agency" type="text" class="form-control"></input></td>
      										<th style="vertical-align: middle;">* 발급일자</th>
      										<td><input name="certificate_issueddate" type="text" class="form-control"></input></td>
										</tr>
										<tr>
											<td colspan="4" style="text-align: right;">
												<input class="btn btn-danger btn-sm" onclick="removeTable(this);" value="삭제">
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<input class="btn btn-default btn-sm" onclick="addcertificate();" value="+ 자격증 추가">
							
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
	<script type="text/javascript">
		
		var to_day = new Date();
		var to_year = to_day.getFullYear();
		for(var i = to_year; i > 1899; i--){ /* 1900년부터 현재 년도 까지 */
			$('.select_year').append("<option value='" + i + "년'>" + i + "년" + "</option>");
		}
		for(var i = 1; i < 13; i++){
			$('.select_month').append("<option value='" + i + "월'>" + i + "월" + "</option>");
		}
		for(var i = 1; i < 32; i++){
			$('.select_day').append("<option value='" + i + "일'>" + i + "일" + "</option>");
		}
		
		
		function addCareer() {
			var careerContainer = document.getElementById("careerContainer");
			var career = document.getElementById('career').cloneNode(true);
			
			careerContainer.appendChild(career);

		}
		function addEdu() {
			var EduContainer = document.getElementById("EduContainer");
			var Edu = document.getElementById('Edu').cloneNode(true);
			
			EduContainer.appendChild(Edu);

		}
		function addcertificate() {
			var certificateContainer = document.getElementById("certificateContainer");
			var certificate = document.getElementById('certificate').cloneNode(true);
			
			certificateContainer.appendChild(certificate);

		}
		function removeTable(row) {
			$(row).closest('table').remove();
		}
		
	</script>
</body>
</html>	