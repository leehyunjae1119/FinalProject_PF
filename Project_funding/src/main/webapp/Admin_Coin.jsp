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
<style type="text/css">
	#ttr > td{
		font-weight: bold;
	}
</style>
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

  <link href="resources/assets/css/Project_RecruitmentList.css" rel="stylesheet">
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
					<h3><b>코인 환불 신청 내역</b></h3>
					<p class="text-muted">사용자들이 환불한 코인 처리</p>
				</div>
				<br>
				<div class="col col-md-15">
						
						
						<table class="table table table-hover" style="text-align: center;">
						<thead class="thead-dark">
							<tr>
								<th>환불 신청 금액</th>
								<th>신청자</th>
								<th>신청날짜</th>
								<th>승인여부</th>
							</tr>
							<thead class="thead-dark">
							<tbody>
							<c:choose>
									<c:when test="${empty coin_list }">
										<tr>
											<td colspan="4" align="center">===== 환불 신청 내역이 없습니다. =====</td>
										</tr>
									</c:when>
								<c:otherwise>
									<c:forEach items="${coin_list }" var="dto">
										
											<tr id="ttr">
												<td>${dto.coin_money }원</td>
												<td>${dto.user_id }</td>
												<td><fmt:formatDate value="${dto.coin_regdate }"
															pattern="yyyy-MM-dd" />
												</td>
												<td>
												<form action="admin_coinupdate.do?coin_no=${dto.coin_no }" method="post">
 												<input type="hidden" name="user_no" value="${userdto.user_no }" >
 												<input type="hidden" name="coin_no" value="${dto.coin_no }">	
												<input type="submit" class="btn btn-warning btn-sm" value="환불"  style="margin-top:-5px"/>
												</form>
												</td>
												
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