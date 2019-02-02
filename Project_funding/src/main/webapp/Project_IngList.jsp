<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<c:if test="${userdto.getUser_type() eq '파트너스' }">
	<%@ include file="WEB-INF/inc/Partners_topbar.jsp"%></c:if>

<c:if test="${userdto.getUser_type() eq '클라이언트' }">
	<%@ include file="WEB-INF/inc/client_topbar.jsp"%></c:if>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png"
	href="resources/assets/img/favicon.png">
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
<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"crossorigin="anonymous">
<link href="resources/assets/css/project_list.css" rel="stylesheet" />

<link href="resources/assets/css/Project_IngList.css" rel="stylesheet">
  
  <script type="text/javascript"src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
 
<script type="text/javascript" src="resources/paging/paging3.js?ver=1"></script>


</head>

<body class="index-page sidebar-collapse">
	<div class="main main-raised">
		<div class="section section-basic">
			<div class="container">
				<div class="row">

					<c:if test="${userdto.getUser_type() eq '파트너스' }">
						<%@ include file="WEB-INF/inc/partners_sidebar.jsp"%></c:if>

					<c:if test="${userdto.getUser_type() eq '클라이언트' }">
						<%@ include file="WEB-INF/inc/client_sidebar.jsp"%></c:if>
					<div class="col" style="margin-top: -30px;">

						<div class="col col-md-15">
							<h3>
								<b>진행중인 프로젝트</b>
							</h3>
						</div>
						<br> 
						
						<input type="hidden" id="totalCount"value='${totalCount}'> 
						<input type="hidden" id="page"value='${page}'>
						<input type="hidden" id="project_state" value='${project_state}'>

						<!-- 카테고리 별 검색 끝! -->
						<!-- col-md-2 끝! -->
						<div class="col-md-12" id="col8">
							<c:choose>
								<c:when test="${empty ProjectList }">
									<h3 style="text-align: center;">----- 등록된 프로젝트가 없습니다.
										-----</h3>
								</c:when>

								<c:otherwise>
									<c:forEach var="dto" items="${ProjectList }">
										<div class="project_content_form">
											<h5>
												<b><a
													href="project_view.do?board_no=${dto.board_no }&user_no=${dto.user_no}">${dto.board_title }</a></b>
											</h5>
											<div class="project_title2">
												<div class="project_money">
													<img src="resources/assets/img/money.png" />
													<p class="text-muted">
														<b>예상 금액</b>&nbsp;&nbsp;&nbsp;<b>${dto.project_money }원</b>
													</p>
												</div>
												<div class="project_time">
													<img src="resources/assets/img/time.png" />
													<p class="text-muted">
														<b>예상 기간</b>&nbsp;&nbsp;&nbsp;<b>${dto.project_term }일</b>
													</p>
												</div>
												<div class="project_support">
													<p class="text-muted">
														<b>등록 일자</b>&nbsp;&nbsp;&nbsp; <b>${dto.board_regdate }</b>
													</p>
												</div>
												<span class="badge badge-pill badge-success">${dto.project_state}</span>
											</div>
											<div class="c_detail">
												<div class="project_content_detail">
													<p class="text-muted" id="detail">${dto.board_content}
													</p>

												</div>

	

												<div class="end_date">
													<img src="resources/assets/img/K-021.png" />
													<p class="text-muted">
														<b>마감 ${dto.getRecruit()}일 전</b>
													</p>
													<br /> <br /> <img src="resources/assets/img/support.png" />
													<p class="text-muted">
														<b>총 0명 지원</b>
													</p>
												</div>
											</div>
										</div>
									</c:forEach>
								</c:otherwise>
							</c:choose>

							<!-- 페이징 -->
							<div id="pagination">

								<ul class="pagination " id="pasing">

								</ul>

							</div>
						
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<%@ include file="WEB-INF/inc/footer.jsp"%>
</body>
</html>