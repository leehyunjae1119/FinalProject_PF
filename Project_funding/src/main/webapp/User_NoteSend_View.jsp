<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:if test="${userdto eq null }">
	<%@ include file="WEB-INF/inc/index_topbar.jsp"%>
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

  <c:if test="${userdto.getUser_type() eq '관리자' }">
  <%@ include file="WEB-INF/inc/admin_topbar.jsp" %>
  </c:if>
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
<title>쪽지함</title>
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

<link href="resources/assets/css/User_NoteSend_View.css"
	rel="stylesheet">
</head>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="resources/Message_Paging/pasing2.js?ver=1"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//맨 위의 체크박스를 클릭하면
		$("#checkall").click(function() {
			if ($("#checkall").prop("checked")) {
				//체크박스 name=chk인 체크박스들을 전부 체크
				$("input[name=chk]").prop("checked", true);
			} else {
				$("input[name=chk]").prop("checked", false);
			}
		})
	})
</script>

<body class="index-page sidebar-collapse">
	<div class="main main-raised">
		<div class="section section-basic">
			<div class="container">
				<div class="row">
					<%@ include file="WEB-INF/inc/user_message_sidebar.jsp"%>
					<!-- 왼쪽 사이드 바 div -->
					<div class="col" style="margin-top: -30px;">
						<div class="col col-md-15" id="apply">
							<h3>
								<b>보낸 쪽지함</b>
							</h3>
							<p class="text-muted">보낸 쪽지를 확인할 수 있습니다.</p>
						</div>
						<br>
						<div class="col col-md-15">
							<input type="hidden" id="totalCount" value='${totalCount }'>
							<input type="hidden" id="page" value='${page }'> <input
								type="hidden" id="user_id" value='${user_id }'>
							<form action="muldel.jsp" method="post" id="muldelform">
								<table class="table table table-hover"
									style="text-align: center;">
									<thead class="thead-dark">
										<tr>
											<th><input type="checkbox" id="checkall">&nbsp;</th>
											<th>내용</th>
											<th>받는사람</th>
											<th>날짜</th>
										</tr>
									<tbody>
										<c:choose>
											<c:when test="${empty seMessage }">
												<tr>
													<td colspan="4" align="center">===== 보낸 쪽지가 없습니다.=====</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach items="${seMessage }" var="dto">
													<c:if test="${dto.message_sender eq userdto.user_id }">
														<tr>
															<td><input type="checkbox" name="chk">&nbsp;</td>
															<!-- 읽음 / 안읽음 상태 표시 조건 -->
															<c:if test="${dto.message_state eq '안읽음' }">
																<td><b><a href="message_view.do?message_no=${dto.message_no }"
																		class="message">${dto.message_content }</a></b></td>
															</c:if>
															<c:if test="${dto.message_state eq '읽음' }">
																<td><a href="message_view.do?message_no=${dto.message_no }"
																class="message">${dto.message_content }</a></td>
															</c:if>
															<td>${dto.message_reader }</td>
															<td><fmt:formatDate value="${dto.message_senddate }"
																	pattern="yyyy-MM-dd" /></td>
														</tr>

													</c:if>
												</c:forEach>
												<tr id="pagination">
													<td colspan="4"><ul class="pagination" id="pasing"></ul></td>
												</tr>
											</c:otherwise>
										</c:choose>
									</tbody>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="WEB-INF/inc/footer.jsp"%>
</body>
</html>