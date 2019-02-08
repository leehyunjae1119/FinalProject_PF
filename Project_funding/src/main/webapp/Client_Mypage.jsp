<%@page import="com.klp.pf.dto.PF_ProfileDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
 <%@ include file="WEB-INF/inc/client_topbar.jsp" %>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="resources/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   	프로젝트 지원내역01
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="resources/assets/demo/demo.css" rel="stylesheet" />
  <!-- index.css 참조 -->
  <link href="resources/assets/css/index.css" rel="stylesheet" />
  <!-- fontawesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

  <link href="resources/assets/css/Client_Mypage.css" rel="stylesheet">
  
</head>

<body class="index-page sidebar-collapse">
	<div class="main main-raised">
		<div class="section section-basic">
			<div class="container">
			<div class="row">
				<%@ include file="WEB-INF/inc/client_sidebar.jsp"%>
<!-- 				<div class="col-md-3" id="sidebar"><b>클라이언트</b>&nbsp;&nbsp; -->
<!-- 					<a href="user_infoUpdate.do" style="font-size: 12px; -->
<!-- 	color: #A6A6A6; float:right;"><b>기본정보 수정하기</b></a> -->
<!-- 					<hr> -->
<!-- 					<div class="user_info"> -->
<!-- 						<img src="resources/assets/img/Teemo.png" class="user_img rounded-circle img-fluid"/> -->
<!-- 						<div class="user_info"> -->
<%-- 							<p>${userdto.user_id }</p> --%>
<%-- 							<p>${userdto.user_email }</p> --%>
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<hr> -->
<!-- 					<div class="col-md-12" id="col12"> -->
<!-- 						 <div class="apply_project"> -->
<!-- 						 	<p class="text-muted">등록한 프로젝트</p> -->
<!-- 						 	<p class="text-muted" id="apply">12건</p> -->
<!-- 						 </div> -->
<!-- 						 <div class="ing_project"> -->
<!-- 						 	<p class="text-muted">진행한 프로젝트</p> -->
<!-- 						 	<p class="text-muted" id="ing">12건</p> -->
<!-- 						 </div> -->
<!-- 						 <div class="project"> -->
<!-- 						 	<p class="text-muted">완료한 프로젝트</p> -->
<!-- 						 	<p class="text-muted" id="ok">12건</p> -->
<!-- 						 </div> -->
<!-- 						 프로젝트 등록으로 이동(Project_Insert.jsp) -->
<!-- 						 <a href="project_insert.do"><button class="btn" style="width: 230px;">프로젝트 등록하기</button></a> -->
<!-- 					</div> -->
					

<!-- 				</div> -->
				<div class="col">
				<div class="col col-md-15">
					<div class="container">
						<h3><b>나의 푸딩</b>
							<div class="button_position" style="float: right;margin-top: -5px;">
								<button style="margin-top: 0px;" onclick="location.href='partnerReg_about.do'" class="btn btn-warning">자기소개 수정</button>
							</div>
						</h3>
						<hr />
						<p>${profiledto.profile_intro }</p>
					</div>
					
				<div class="col col-md-15">
					<table class="table table-bordered" style="width: 30%;">
						<thead class="thead-light">
							<tr>
								<th scope="col" style="background-color: #C5C0FF;">1. 프로젝트 등록</th>
							</tr>
						</thead>
						<tbody id="tbody">
							<tr id="cloneTr">
      							<td>프로젝트 등록 버튼을 눌러주세요!</td>
							</tr>
						</tbody>
					</table>
					<table class="table table-bordered" style="width: 30%;" id="table2">
						<thead class="thead-light">
							<tr>
								<th scope="col" style="background-color: #C5C0FF;">2. 지원자 선택</th>
							</tr>
						</thead>
						<tbody id="tbody">
							<tr id="cloneTr">
      							<td>마음에 드는 지원자를 선택해주세요!</td>
							</tr>
						</tbody>
					</table>
					<table class="table table-bordered" style="width: 30%;">
						<thead class="thead-light">
							<tr>
								<th scope="col" style="background-color: #C5C0FF;">3. 프로젝트 후원</th>
							</tr>
						</thead>
						<tbody id="tbody">
							<tr id="cloneTr">
      							<td>마음에 드는 프로젝트를 후원하세요!</td>
							</tr>
						</tbody>
					</table>
				</div>
						
			</div>
		</div>
	</div>
</div>
</div>
</div>
<%@ include file="WEB-INF/inc/footer.jsp" %>
		
		
  </body>
  </html>