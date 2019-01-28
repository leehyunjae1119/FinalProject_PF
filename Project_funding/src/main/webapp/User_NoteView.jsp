<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:if test="${userdto eq null }"> 
 <%@ include file="WEB-INF/inc/index_topbar.jsp" %>
 </c:if>
 
 <c:if test="${userdto.getUser_type() eq '파트너스' }">
  <%@ include file="WEB-INF/inc/Partners_topbar.jsp" %>
 </c:if>
   
 <c:if test="${userdto.getUser_type() eq '클라이언트' }">
  <%@ include file="WEB-INF/inc/client_topbar.jsp" %>
 </c:if>
   
 <c:if test="${userdto.getUser_type() eq '투자자' }">
  <%@ include file="WEB-INF/inc/investor_topbar.jsp" %>
  </c:if>


  <meta charset="utf-8" />
  
  <link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="resources/assets/img/favicon.png">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
	쪽지함
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

  <link href="resources/assets/css/Project_RecruitmentList.css" rel="stylesheet">
</head>

<body class="index-page sidebar-collapse">
	<div class="main main-raised">
		<div class="section section-basic">
			<div class="container">
			<div class="row">
				<%@ include file="WEB-INF/inc/user_message_sidebar.jsp" %>
				<!-- 왼쪽 사이드 바 div -->
				<div class="col" style="margin-top: -30px;">
				<div class="col col-md-15" id="apply">
				
				<c:if test="${MessageView.message_reader eq userdto.user_id }">
					<input type="button" class="btn btn-default" value="삭제" onclick="location.href='receive_delete.do?message_no=${MessageView.message_no}&page=1'">
					<input type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModal" value="답장">
					<input type="button" class="btn btn-success" value="목록으로" onclick="location.href='re_list.do?page=1'"/>
				</c:if>
				
				<c:if test="${MessageView.message_reader ne userdto.user_id }">
					<input type="button" class="btn btn-default" value="삭제" onclick="location.href='send_delete.do?message_no=${MessageView.message_no}&page=1'">	
					<input type="button" class="btn btn-success" value="목록으로" onclick="location.href='se_list.do?page=1'"/>
				</c:if>
				
				<hr>
					<c:choose>
					<c:when test="${MessageView.message_reader eq userdto.user_id }">
					<h4><b>보낸사람 : ${MessageView.message_sender }</b></h4>
					<h4><b>받은날짜 :&nbsp;<fmt:formatDate value="${MessageView.message_senddate }" pattern="yyyy-MM-dd hh:mm:ss" /></b></h4>
					</c:when>
					
					<c:otherwise>
					<h4><b>받는사람 : ${MessageView.message_reader }</b></h4>
					<h4><b>보낸날짜 :&nbsp;<fmt:formatDate value="${MessageView.message_senddate }" pattern="yyyy-MM-dd hh:mm:ss" /></b></h4>
					</c:otherwise>
					</c:choose>
					<hr>
					<br>
					<h4><b>${MessageView.message_content }</b></h4>
				</div>
				<br>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- 쪽지 전송 모달창 --> 

	<div>
		<div class="container">
			<!-- The Modal -->
			<div class="modal" id="myModal">
				<div class="modal-dialog ">
					<div class="modal-content">
						<!-- Modal Header -->
						<div class="modal-header">
							<h3 class="modal-title">
								<b style="padding-left: 180px;">쪽지쓰기</b>
							</h3>

							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>

						<!-- Modal body -->
						<!-- 값을 전송하는 부분 -->
						<form action="message_reply.do?page=1" method="post">
						<input type="hidden" name="sender" value="${userdto.user_id }">
						<div class="modal-body">
						
						<!-- 쪽지 내용 작성하는 부분 -->
								<h4>
									<b id="min">받는사람&nbsp;</b>
									<input type="text" name="reader" value="${MessageView.message_sender}" style="border: none;"/>
								</h4>
							<h4>
								<b>내용&nbsp;</b>
							</h4>
							<textarea rows="10" cols="40" class="form-control" name="content"></textarea>
						</div>
						
						<!-- Modal footer -->
						<div class="modal-footer">
							<input type="submit" class="btn btn-warning" value="보내기" id="send"/>
							<!-- data-dismiss : 모달창 닫기 -->
							<input type="button" class="btn btn-default" value="취소" data-dismiss="modal"/>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	 <%@ include file="WEB-INF/inc/footer.jsp" %>
  </body>
  </html>