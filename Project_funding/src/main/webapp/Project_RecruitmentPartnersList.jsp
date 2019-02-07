<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@ include file="WEB-INF/inc/client_topbar.jsp"%>
<meta charset="utf-8" />

<link rel="apple-touch-icon" sizes="76x76"
	href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png"
	href="resources/assets/img/favicon.png">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>프로젝트 지원내역01</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!-- CSS Files -->
<link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="resources/assets/demo/demo.css" rel="stylesheet" />
<!-- index.css 참조 -->
<link href="resources/assets/css/index.css" rel="stylesheet" />
<!-- fontawesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">

<link href="resources/assets/css/project_list.css" rel="stylesheet" />
</head>

<body class="index-page sidebar-collapse">
	<div class="main main-raised">
		<div class="section section-basic">
			<div class="container">
				<div class="row">
					<%@ include file="WEB-INF/inc/client_sidebar.jsp"%>
					<!-- 왼쪽 사이드 바 div -->
					<div class="col" style="margin-top: -30px;">
						<div class="col col-md-15" id="apply">
							<h3>
								<b>지원자 리스트</b>
							</h3>
							<p class="text-muted">회원님이 등록한 프로젝트에 지원한 지원자 목록입니다.</p>
						</div>
						<br>
						<div class="col col-md-15"  style="display: inline-block;">
							<c:choose>
								<c:when test="${recruitmentlist eq null }">
									<h3 style="text-align: center;">----- 지원자가 없습니다. -----</h3>
								</c:when>

								<c:otherwise>
								<table class="table table-striped">
									<thead>
										<tr>
											<th scope="col">아이디</th>
											<th scope="col">이메일</th>
											<th scope="col">지원상태</th>
											<th scope="col">상세보기</th>
											<th scope="col">도구</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="recruitmentlist" items="${recruitmentlist }">
										<tr>
											<td>${recruitmentlist.user_id }</td>
											<td>${recruitmentlist.user_email }</td>
											<td>${recruitmentlist.applicant_state }</td>
											<td><button class="btn btn-primary btn-sm" onclick="window.open('partners_popup.do?user_id=${recruitmentlist.user_id }','Parters Profile','width=1040,height=540,location=no,status=no,scrollbars=yes');">보기</button></td>
											<c:choose>
												<c:when test="${recruitmentlist.applicant_state eq '지원신청'}">
													<td><button class="btn btn-success btn-sm"onclick="location.href='selection_Partners.do?applicant_no=${recruitmentlist.applicant_no }&board_no=${board_no }'">선택</button></td>
												</c:when>
												<c:otherwise>
													<td><b>선택됨</b></td>
												</c:otherwise>
											</c:choose>
										</tr>
										</c:forEach>
									</tbody>
								</table>
									
								</c:otherwise>
							</c:choose>

						</div>
					</div>
			
				</div>
			</div>
		</div>
	</div>
</body>
		<%@ include file="WEB-INF/inc/footer.jsp"%>
</html>