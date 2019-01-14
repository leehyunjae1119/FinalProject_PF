<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"href="./assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="./assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Material Kit by Creative Tim</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
<!--		 Fonts and icons		 -->
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!-- CSS Files -->
<link href="./assets/css/material-kit.css?v=2.0.5" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="./assets/demo/demo.css" rel="stylesheet" />
<!-- index.css 참조 -->
<link href="./assets/css/index.css" rel="stylesheet" />
<!-- fontawesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
</head>
<body class="index-page sidebar-collapse">
	<nav class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg" color-on-scroll="100" id="sectionsNav">
		<div class="container">
			<div class="navbar-translate">
				<a class="navbar-brand" href="https://demos.creative-tim.com/material-kit/index.html">
					Material Kit </a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
					<span class="sr-only">Toggle navigation</span>
					<span class="navbar-toggler-icon"></span>
					<span class="navbar-toggler-icon"></span>
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav">
					<li class="nav-item"><a href="#pablo" class="nav-link">프로젝트
							등록</a></li>
					<li class="nav-item"><a href="#pablo" class="nav-link">프로젝트
							찾기</a></li>
					<li class="nav-item"><a href="#pablo" class="nav-link">파트너스
							목록</a></li>
					<li class="nav-item"><a href="#pablo" class="nav-link">이용
							방법</a></li>
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item" style="float: right;">
						<a href="#pablo" class="btn btn-rose btn-raised btn-fab btn-round" data-toggle="dropdown"> 
							<i class="material-icons">email</i>
						</a>
					</li>
					<li class="nav-item"><a href="#pablo" class="nav-link">Login</a></li>
					<li class="nav-item"><a href="#pablo" class="nav-link">Join</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="main main-raised" style="margin-top: 100px">
		<div class="section section-basic">
			<div class="container">
				<div class="row row-offcanvas row-offcanvas-right">
					<div class="col-6 col-md-2 sidebar-offcanvas" id="sidebar">
						<div class="list-group">
							<a class="btn btn-info btn-link" href="PartnerReg_Info.jsp">파트너스 정보</a>
							<a class="btn btn-info btn-link" href="PartnerReg_About.jsp">자기 소개</a>
							<a class="btn btn-info btn-link" href="PartnerReg_Portfolio.jsp">포트폴리오</a>
							<a class="btn btn-info btn-link active" href="PartnerReg_Technology.jsp">보유 기술</a>
							<a class="btn btn-info btn-link" href="PartnerReg_career.jsp">경력/학력/자격증</a>
						</div>
					</div>
					<div class="col-12 col-md-9">
						<h2><strong>보유 기술 등록</strong></h2>
						<hr>
						<form>
							<table class="table table-bordered">
								<thead class="thead-light">
									<tr>
										<th scope="col">종류</th>
     									<th scope="col">숙련도</th>
      									<th scope="col">경험도</th>
      									<th scope="col">도구</th>
									</tr>
								</thead>
								<tbody id="tbody">
									<tr id="cloneTr">
      									<td><input type="text" class="form-control"></input></td>
      									<td>
      										<select class="form-control">
												<option>초급</option>
												<option>중급</option>
												<option>고급</option>
											</select>
										</td>
      									<td>
      										<select class="form-control">
												<option>1년 미만</option>
												<option>1년 이상 3년 미만</option>
												<option>3년 이상 5년 미만</option>
												<option>5년 이상 10년 미만</option>
												<option>10년 이상</option>
											</select>
      									</td>
      									<td><button class="btn btn-default btn-sm" onclick="removeRow(this);">삭제</button></td>
									</tr>
								</tbody>
							</table>
							<input type="button" class="btn btn-default btn-sm" onclick="addTable();" value="+ 기술 추가">
							
							<div class="col-12"><input type="submit" class="btn btn-success float-right" value="등록 완료"></div>
							<div class="col-12"><input type="button" class="btn btn-default float-right" value="취소"></div>
						</form>
						
					</div>
				</div>

			</div>
		</div>
	</div>
	
	
	
	<footer class="footer" data-background-color="black">
		<div class="container">
			<nav class="float-left">
				<div class="col-md-8 ml-auto mr-auto">
					<h2>Completed with examples</h2>
					<h4>The kit comes with three pre-built pages to help you get started faster. You can change the text and images and you're good to go. More importantly, looking at them will give you a picture of what you can built with this powerful kit.
					<br />
						&copy;김이박
					</h4>
				</div>
			</nav>
		</div>
	</footer>
	<!--	 Core JS Files	 -->
	<script src="./assets/js/core/jquery.min.js" type="text/javascript"></script>
	<script src="./assets/js/core/popper.min.js" type="text/javascript"></script>
	<script src="./assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
	<script src="./assets/js/plugins/moment.min.js"></script>
	<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
	<script src="./assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
	<!--	Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="./assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
	<!--	Google Maps Plugin		-->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
	<script src="./assets/js/material-kit.js?v=2.0.5" type="text/javascript"></script>
	<script type="text/javascript">
		function addTable(){
    	    var oldTr = document.getElementById("tbody");
    	    var newTr = document.createElement("tr");
	 	      
	        newTr.innerHTML = "<td><input type='text' class='form-control'></input></td>"
	        					+ "<td><select class='form-control'><option>초급</option><option>중급</option><option>고급</option></select></td>"
	        					+ "<td><select class='form-control'><option>1년 미만</option><option>1년 이상 3년 미만</option><option>3년 이상 5년 미만</option><option>5년 이상 10년 미만</option><option>10년 이상</option></select></td>"
								+ "<td><button class='btn btn-default btn-sm' onclick='removeRow(this);'>삭제</button></td>";
	 	   	oldTr.appendChild(newTr);
	    }
		function removeRow(row) {
			$(row).closest('tr').remove();
		}
	
	</script>
</body>
</html>	