<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Puding</title>

<%@ include file="WEB-INF/inc/admin_topbar.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="resources/assets/img/favicon.png">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
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

  <link href="resources/assets/css/Admin_InspectionList.css" rel="stylesheet">
  <style type="text/css">
  a:link{color:black;}
  a:visited {color: black;}
  a:active {color: black;}
  a:hover {color: black;}
  </style>
</head>
<body class="index-page sidebar-collapse">
	<div class="main main-raised">
		<div class="section section-basic">
			<div class="container">
			<div class="row">
				<%@ include file="WEB-INF/inc/admin_sidebar.jsp" %>
				<!-- 왼쪽 사이드 바 div -->
				<div class="col" style="margin-top: -30px;">
				<div class="col col-md-15" id="apply">
					<h3><b>프로젝트 신청 내역</b></h3>
					<p class="text-muted">사용자들이 등록한 프로젝트를 확인할 수 있습니다.</p>
				</div>
				<br>
				<div class="col col-md-15">
						<table class="table table table-hover" style="text-align: center;">
						<thead class="thead-dark">
							<tr>
								<th>프로젝트 제목</th>
								<th>신청자</th>
								<th>신청날짜</th>
								<th>구분</th>
								
							</tr>
							<thead class="thead-dark">
							<tbody>
							<c:choose>
									<c:when test="${empty ProjectList }">
										<tr>
											<td colspan="4" align="center">===== 프로젝트 신청 내역이 없습니다. =====</td>
										</tr>
									</c:when>
								<c:otherwise>
									<c:forEach items="${ProjectList }" var="dto">
										
											<tr id="ttr">
												<td><b><a href="admin_projectview.do?board_no=${dto.board_no }" id="project_list">${dto.board_title }</a></b></td>
												<td>${dto.user_id }</td>
												<td>
												<!-- 날짜 포맷 변경하기 -->
												<fmt:parseDate value="${dto.board_regdate }" var="regdate"
												pattern="yyyy-mm-dd"/>
												<fmt:formatDate value="${regdate }" pattern="yyyy-mm-dd"/>
												</td>
												<c:if test="${dto.project_state eq '검수 중' }">
													<td>승인 대기</td>
												</c:if>
												<c:if test="${dto.project_state eq '승인' }">
													<td>승인 완료</td>
												</c:if>
											</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
							</tbody>
						</table>
					</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	
	 <%@ include file="WEB-INF/inc/footer.jsp" %>
  </body>
  </html>