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
										<%@ include file="WEB-INF/inc/partners_sidebar.jsp" %>

					<div class="col-12 col-md-9" style="margin-top:-30px;">
						<h3><b>보유 기술 등록</b></h3>
						<hr>
						<form action="partnerReg_technologyInsert.do" method="post">
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
      									<td><input name="tech_type" type="text" class="form-control"></input></td>
      									<td>
      										<select name="tech_skill" class="form-control">
												<option value="초급">초급</option>
												<option value="중급">중급</option>
												<option value="고급">고급</option>
											</select>
										</td>
      									<td>
      										<select name="tech_exp" class="form-control">
												<option value="1년 미만">1년 미만</option>
												<option value="1년 이상 3년 미만">1년 이상 3년 미만</option>
												<option value="3년 이상 5년 미만">3년 이상 5년 미만</option>
												<option value="5년 이상 10년 미만">5년 이상 10년 미만</option>
												<option value="10년 이상">10년 이상</option>
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
		function addTable(){
    	    var oldTr = document.getElementById("tbody");
    	    var newTr = document.createElement("tr");
	 	      
	        newTr.innerHTML = "<td><input name='tech_type' type='text' class='form-control'></input></td>"
	        					+ "<td><select name='tech_skill' class='form-control'><option value='초급'>초급</option><option value='중급'>중급</option><option value='고급'>고급</option></select></td>"
	        					+ "<td><select name='tech_exp' class='form-control'><option value='1년 미만'>1년 미만</option><option value='1년 이상 3년 미만'>1년 이상 3년 미만</option><option value='3년 이상 5년 미만'>3년 이상 5년 미만</option><option value='5년 이상 10년 미만'>5년 이상 10년 미만</option><option value='10년 이상'>10년 이상</option></select></td>"
								+ "<td><button class='btn btn-default btn-sm' onclick='removeRow(this);'>삭제</button></td>";
	 	   	oldTr.appendChild(newTr);
	    }
		function removeRow(row) {
			$(row).closest('tr').remove();
		}
	
	</script>
</body>
<%@ include file="WEB-INF/inc/footer.jsp" %>

</html>	