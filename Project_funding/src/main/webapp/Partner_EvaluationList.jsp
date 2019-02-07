<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<c:if test="${userdto.getUser_type() eq '파트너스' }">
		<%@ include file="WEB-INF/inc/Partners_topbar.jsp" %></c:if>
	<c:if test="${userdto.getUser_type() eq '클라이언트' }">
		<%@ include file="WEB-INF/inc/client_topbar.jsp" %></c:if>
	<c:if test="${userdto.getUser_type() eq '투자자' }">
		<%@ include file="WEB-INF/inc/investor_topbar.jsp" %></c:if>
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
<!--   fontawesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<link href="resources/assets/css/User_TypeUpdate.css" rel="stylesheet">

<style type="text/css">
strong{
	font-size: 16px
}
</style>


</head>
<body class="index-page sidebar-collapse">
	<div class="main main-raised">
		<div class="section section-basic">
			<div class="container">
				<div class="row">
					<c:if test="${userdto.getUser_type() eq '파트너스' }">
					<%@ include file="WEB-INF/inc/partners_sidebar.jsp" %></c:if>
					   
					<c:if test="${userdto.getUser_type() eq '클라이언트' }">
					<%@ include file="WEB-INF/inc/client_sidebar.jsp" %></c:if>
					   
					<c:if test="${userdto.getUser_type() eq '투자자' }">
					<%@ include file="WEB-INF/inc/investor_sidebar.jsp" %></c:if>
					<!-- 왼쪽 사이드 바 div -->
					<div class="col" style="margin-top: -30px;">
					
						<div class="col col-md-15">
							<h3><b>파트너스 평점 리스트</b></h3>
							<p class="text-muted" style="font-size: 13px;">클라이언트가 평가한 평점을 확인할 수 있습니다.</p>
						</div>
						<br>
						<div class="col col-md-15" id="col15">
						<c:forEach items="${evaluationlist }" var="evaluationdto">
							<div class="card card-nav-tabs">
                				<div class="card-header card-header-rose">
                  					<!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
                  					<div class="nav-tabs-navigation">
                    					<div class="nav-tabs-wrapper">
                      						<ul class="nav nav-tabs" style="display: flex;">
                        						<li class="nav-item" style="flex: 1;">
                         							<a class="nav-link">
                            							<i class="material-icons">build</i> <b>전문성</b>
                            							<c:if test="${evaluationdto.evaluation_item1 eq 1}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star</i>
                            							</c:if> 
                            							<c:if test="${evaluationdto.evaluation_item1 eq 2}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star</i>
                            							</c:if>
                            							<c:if test="${evaluationdto.evaluation_item1 eq 3}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star star</i>
                            							</c:if>
                            							<c:if test="${evaluationdto.evaluation_item1 eq 4}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star star star</i>
                            							</c:if>
                            							<c:if test="${evaluationdto.evaluation_item1 eq 5}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star star star star</i>
                            							</c:if>
                         							</a>
                        						</li>
												<li class="nav-item" style="flex: 1;">
													<a class="nav-link">
														<i class="material-icons">chat</i> <b>의사소통</b>
														<c:if test="${evaluationdto.evaluation_item2 eq 1}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star</i>
                            							</c:if> 
                            							<c:if test="${evaluationdto.evaluation_item2 eq 2}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star</i>
                            							</c:if>
                            							<c:if test="${evaluationdto.evaluation_item2 eq 3}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star star</i>
                            							</c:if>
                            							<c:if test="${evaluationdto.evaluation_item2 eq 4}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star star star</i>
                            							</c:if>
                            							<c:if test="${evaluationdto.evaluation_item2 eq 5}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star star star star</i>
                            							</c:if>
													</a>
												</li>
												<li class="nav-item" style="flex: 1;">
													<a class="nav-link">
														<i class="material-icons">face</i> <b>적극성</b>
														<c:if test="${evaluationdto.evaluation_item3 eq 1}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star</i>
                            							</c:if> 
                            							<c:if test="${evaluationdto.evaluation_item3 eq 2}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star</i>
                            							</c:if>
                            							<c:if test="${evaluationdto.evaluation_item3 eq 3}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star star</i>
                            							</c:if>
                            							<c:if test="${evaluationdto.evaluation_item3 eq 4}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star star star</i>
                            							</c:if>
                            							<c:if test="${evaluationdto.evaluation_item3 eq 5}">
                            								<i class="material-icons" style="color: orange;word-spacing: -10px;">star star star star star</i>
                            							</c:if>
													</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="card-body ">
									<div class="tab-content">
										<div class="tab-pane active" id="profile">
											<br>
											<p> <b>평가 클라이언트</b> : <strong>${evaluationdto.evaluation_writer}</strong> </p>
											<p> <b> ${evaluationdto.evaluation_content} </b></p>
										</div>
									</div>
								</div>
							</div>  
							<br>
						</c:forEach>        
						</div>
					</div> 
				</div>
			</div>
		</div>
	</div>
</body>
</html>