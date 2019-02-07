<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Puding</title>

<c:if test="${userdto eq null }">
	<%@ include file="WEB-INF/inc/topbar.jsp"%>
</c:if>

<c:if test="${userdto.getUser_type() eq '파트너스' }">
	<%@ include file="WEB-INF/inc/Partners_topbar.jsp"%>
</c:if>

<c:if test="${userdto.getUser_type() eq '클라이언트' }">
	<%@ include file="WEB-INF/inc/client_topbar.jsp"%>
</c:if>

<c:if test="${userdto.getUser_type() eq '투자자' }">
	<%@ include file="WEB-INF/inc/investor_topbar.jsp"%>
</c:if>

<link href="resources/assets/css/project_list.css" rel="stylesheet" />
<link rel="apple-touch-icon" sizes="76x76"
	href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png"
	href="resources/assets/img/favicon.png">

<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!-- CSS Files -->
<link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="resources/assets/demo/demo.css" rel="stylesheet" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<c:if test="${board_title ne null}">
	<script type="text/javascript"
		src="resources/searchPaging/pasing.js?ver=1"></script>
</c:if>



<c:if test="${board_title eq null}">
	<script type="text/javascript"
		src="resources/detail_paging/pasing.js?ver=1"></script>
</c:if>


</head>
<body>
	<input type="hidden" id="totalCount" value='${totalCount }'>
	<input type="hidden" id="page" value='${page }'>
	<input type="hidden" id="board_title" value='${board_title }'>
	<input type="hidden" id="project_state" value='${project_state }'>


	<div class="main main-raised">
		<div class="list_container">
			<div class="row">
				<div class="col-md-12" style="height: 170px;">
					<div class="container_title">
						<h3>
							<span class="tim-note"><b>프로젝트 찾기</b></span>
						</h3>
						<div class="project_list">
							<form class="form-inline ml-auto" action="search.do?page=1"
								method="post">
								<div class="form-group has-white">
									<input type="text" class="form-control" placeholder="Search"
										name="board_title" style="color: black;">
								</div>
								<button type="submit"
									class="btn btn-white btn-raised btn-fab btn-round">
									<i class="material-icons" style="background-color: black;">search</i>
								</button>
							</form>
						</div>


						<c:if test="${totalCount ne null }">
							<p class="text-muted">${totalCount }개의 프로젝트가 있습니다.</p>
						</c:if>
						
						<c:if test="${totalCount_detail ne null }">
							<p class="text-muted">${totalCount_detail }개의 프로젝트가 있습니다.</p>
						</c:if>
						
					</div>
				</div>

				<div class="col-md-2" id="list_col">
					<div class="list_container2">
						<div class="project_array">
							<p class="text-muted" style="font-size: 15px;">
								<b>프로젝트 정렬</b>
							</p>
						</div>
						<div class="project_array_2">
							<a href="project_list_money.do?page=1">금액 높은 순</a><br /> <a
								href="project_list.do?page=1">최신 등록 순</a><br /> <a
								href="project_list_date.do?page=1">마감 등록 순</a><br />
						</div>
						<!-- detail 페이징 값 -->
						<input type="hidden" id="totalCount_dtail"
							value='${totalCount_dtail }'> <input type="hidden"
							id="project_money" value='${project_money }'> <input
							type="hidden" id="project_category" value='${project_category }'>

						<form action="detail_search.do?page=1" method="post">
							<div class="project_category">
								<div class="project_cate_title">
									<p class="text-muted" style="font-size: 15px;">
										<b>프로젝트 카테고리</b>
									</p>
								</div>
								<div class="project_cate">
									<div class="form-check">
										<label class="form-check-label"> <input
											class="form-check-input" type="checkbox" id="checkAll"
											value="check all"> 개발 <span class="form-check-sign">
												<span class="check"></span>
										</span>
										</label>
									</div>
									<div class="project_cate2">
										<div class="form-check">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="웹"
												name="category1"> 웹 <span class="form-check-sign">
													<span class="check"></span>
											</span>
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="어플리케이션"
												name="category1"> 어플리케이션 <span
												class="form-check-sign"> <span class="check"></span>
											</span>
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="일반 소프트웨어"
												name="category1"> 일반 소프트웨어 <span
												class="form-check-sign"> <span class="check"></span>
											</span>
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="게임"
												name="category1"> 게임 <span class="form-check-sign">
													<span class="check"></span>
											</span>
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="임베디드"
												name="category1"> 임베디드 <span class="form-check-sign">
													<span class="check"></span>
											</span>
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="퍼블리싱"
												name="category1"> 퍼블리싱 <span class="form-check-sign">
													<span class="check"></span>
											</span>
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="기타"
												name="category1"> 기타 <span class="form-check-sign">
													<span class="check"></span>
											</span>
											</label>
										</div>
									</div>

								</div>
								<div class="project_cate">
									<div class="form-check">
										<label class="form-check-label"> <input
											class="form-check-input" type="checkbox" value="금액">
											금액 <span class="form-check-sign"> <span class="check"></span>
										</span>
										</label>
									</div>
									<div class="project_cate2">
										<div class="form-check">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value=1000000
												name="category2"> 100만원 이하 <span
												class="form-check-sign"> <span class="check"></span>
											</span>
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value=5000000
												name="category2"> 500만원 이하 <span
												class="form-check-sign"> <span class="check"></span>
											</span>
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value=10000000
												name="category2"> 1000만원 이하 <span
												class="form-check-sign"> <span class="check"></span>
											</span>
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value=50000000
												name="category2"> 5000만원 이하 <span
												class="form-check-sign"> <span class="check"></span>
											</span>
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value=100000000
												name="category2"> 1억 이하 <span
												class="form-check-sign"> <span class="check"></span>
											</span>
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value=1000000000
												name="category2"> 10억 이하 <span
												class="form-check-sign"> <span class="check"></span>
											</span>
											</label>
										</div>

									</div>
								</div>

								<div class="meeting_title">
									<div class="meeting_area_title">
										<p class="text-muted" style="font-size: 13px;">
											
										</p>
									</div>
									<div class="search_button">
										<button class="btn" style="width: 200px; height: 40px;">검색</button>
									</div>
								</div>
								<!-- 미팅 지역 끝! -->

							</div>
						</form>
					</div>
				</div>



				<input type="hidden" id="totalCount_detail" value='${totalCount_detail }'>
				<input type="hidden" id="page" value='${page }'>
				<input type="hidden" id="project_category" value='${project_category }'>
				<input type="hidden" id="project_money" value='${project_money }'>
				
				<!-- 카테고리 별 검색 끝! -->
				<!-- col-md-2 끝! -->
				<div class="col-md-8" id="col8">
					<c:choose>
						<c:when test="${empty ProjectList }">
							<h3>----- 등록된 프로젝트가 없습니다. -----</h3>
						</c:when>

						<c:otherwise>
							<c:forEach var="dto" items="${ProjectList }">
								<div class="project_content_form">
									<h5>
										<b><a href="project_view.do?board_no=${dto.board_no }">${dto.board_title }</a></b>
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
									</div>
									<div class="c_detail">
										<div class="project_content_detail">
											<p class="text-muted" id="detail">${dto.board_content}</p>

										</div>


										<div class="end_date">
											<img src="resources/assets/img/K-021.png" />
											<p class="text-muted">
												<b>마감 ${dto.getRecruit()}일 전</b>
											</p>
											<br /> <img src="resources/assets/img/support.png" />
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
					<div id="pagination" style="text-align: center;">
						<ul class="pagination " id="pasing"></ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="WEB-INF/inc/footer.jsp"%>
</body>
</html>