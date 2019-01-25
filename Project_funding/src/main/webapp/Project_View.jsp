<%@page import="com.klp.pf.dto.PF_BoardDto"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Puding</title>

<c:if test="${userdto eq null }"> 
 <%@ include file="WEB-INF/inc/topbar.jsp" %>
 </c:if>
 
 <c:if test="${userdto.getUser_type() eq '파트너스' }">
  <%@ include file="WEB-INF/inc/Partners_topbar.jsp" %></c:if>
   
 <c:if test="${userdto.getUser_type() eq '클라이언트' }">
  <%@ include file="WEB-INF/inc/client_topbar.jsp" %></c:if>
   
 <c:if test="${userdto.getUser_type() eq '투자자' }">
  <%@ include file="WEB-INF/inc/investor_topbar.jsp" %></c:if>
<link href="resources/assets/css/project_view.css" rel="stylesheet" />
<link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="resources/assets/img/favicon.png">

<!--     Fonts and icons     -->
 <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
 <!-- CSS Files -->
 <link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
 <!-- CSS Just for demo purpose, don't include it in your project -->
 <link href="resources/assets/demo/demo.css" rel="stylesheet" />

</head>
<body>
<jsp:useBean id="dto" class="com.klp.pf.dto.PF_BoardDto" scope="request"></jsp:useBean>

<div class="main main-raised">
<div class="project_view_container">
	<div class="row" id="row">
		<div class="col-md-9" id="col10">
			<div class="view_title">
				<h3><span class="tim-note"><b><jsp:getProperty property="board_title" name="dto" /></b></span></h3>
				<a href="#"><img src="resources/assets/img/heart.PNG" style="width:20px;" />&nbsp;&nbsp;<b>관심 프로젝트</b></a>
			</div>
			<div class="view_title2">
				<p class="text-muted">개발 > <jsp:getProperty property="project_category" name="dto" /></p>
				<p class="text-muted" id="support">총 0명 지원</p>
				
				
				<%
					
					String a = dto.getBoard_regdate();
					System.out.println(a);
					Date Ato = new SimpleDateFormat("yyyy-MM-dd").parse(a);
					System.out.println(Ato);
					
					String b = dto.getRecruit_date();
					System.out.println(b);
					Date Bto = new SimpleDateFormat("yyyy-MM-dd").parse(b);
					System.out.println(Bto);
					
 					long diffSec = Bto.getTime() - Ato.getTime();
					long diffDays = diffSec / (24 * 60 * 60 * 1000);
					System.out.println(diffDays);
				
					dto.setRecruit(diffDays);
				
				%>
				
				
				<span class="badge badge-pill badge-success">마감 <%=dto.getRecruit() %>일 전</span>
				

				
			</div>
			
			<div class="view_title_detail">
				<div class="project_title2">
       				<div class="project_money">
       					<img src="resources/assets/img/money.png" />&nbsp;&nbsp;
       					<p class="text-muted"><b>예상 금액</b>&nbsp;&nbsp;&nbsp;<b><jsp:getProperty property="project_money" name="dto" />원</b></p><br />
       					<p class="text-muted"><b>등록일</b>&nbsp;&nbsp;&nbsp;<b>
       					${dto.board_regdate }
       					
       					</b></p>
       				</div>
       				<div class="project_time">
       					<img src="resources/assets/img/time.png" />&nbsp;&nbsp;
       					<p class="text-muted"><b>예상 시간</b>&nbsp;&nbsp;&nbsp;<b><jsp:getProperty property="project_term" name="dto" />일</b></p><br />
       					<p class="text-muted"><b>예상 시작일</b>&nbsp;&nbsp;&nbsp;<b><jsp:getProperty property="project_start_day" name="dto" /></b></p>
       				</div>
       				<div class="project_support">
       					<img src="resources/assets/img/K-021.png" />&nbsp;&nbsp;
       					<p class="text-muted"><b>모집 마감</b>&nbsp;&nbsp;&nbsp;<b><jsp:getProperty property="recruit_date" name="dto" /></b></p><br />
       					
       				</div>
       			</div>
       		</div>
       	
			<hr />
			
			<div class="project_content">
				<p class="text-muted" id="detail">
       				<jsp:getProperty property="board_content" name="dto" />
       			</p>
			</div>
			
		</div>
		<div class="col-md-3" id="col2">
			<div class="client_container">
				<p class="text-muted"><b>클라이언트 </b></p>
			</div>
			<div class="client_img">
				<img src="resources/assets/img/examples/studio-5.jpg" class="rounded-circle img-fluid" />
				<p class="text-muted">클라이언트에 대한 소개 어쩌구 저쩌구 어쩌구 저쩌구!!! </p>
			</div>
			<div class="star">
				<p class="text-muted">별점 공간</p>
			</div>
			<div class="project_area">
				<p class="text-muted"><b>프로젝트 등록</b></p>
				<p class="text-muted" id="p">1건</p><br/>
				<p class="text-muted"><b>등록한 프로젝트</b></p>
				<p class="text-muted" id="p2">1건</p><br/>
				<p class="text-muted"><b>완료한 프로젝트</b></p>
				<p class="text-muted" id="p2">1건</p>
			</div>
			<div class="total_money">
				<p class="text-muted"><b>누적 완료 금액</b></p>
			</div>
			<div class="money">
				<p class="text-muted">${invest_totalMoney }원</p>
			</div>
			
		</div> 

			<c:if test="${userdto.getUser_no() eq dto.user_no}">
				<button class="btn btn-danger" style="float: right; margin-top: 110px; display: inline-block;" onclick="location.href='project_delete.do?board_no=<jsp:getProperty property="board_no" name="dto" />&page=1'">삭제하기</button>
  				<button class="btn btn-warning" style="float: right; margin-top: 110px; display: inline-block;" onclick="location.href='project_update.do?board_no=<jsp:getProperty property="board_no" name="dto" />'">수정하기</button>
  			</c:if>
  			 
  			<c:if test="${userdto.getUser_type() eq '투자자'}">
  				<form method="get" action="coin_payment_use_01.do">
  						<input type="hidden" value="${dto.board_no }" name="board_no">												
						<input type="submit" value="투자하기"  class="btn btn-info"  style="float: right; margin-top: 110px; display: inline-block;">			
						<input type="text" style="width : 100px;float: right; margin-top: 110px; display: inline-block;" class="form-control" id="control" name="amount_val">
						
				</form>
  			
  		
  			
           </c:if>

	</div>
	<hr />
	<div class="comment_container">
		<h5><b>프로젝트 문의</b></h5>	
		<form id="comment_form" method="post" action="Comment_Insert.do" onsubmit="return comment_ajax(this);">
			<input type="hidden" name="board_no" value="${dto.board_no }" />
			
			<div id="comment_list">
			
			</div>
			
			<div class="free_img">
				<img src="resources/assets/img/examples/studio-5.jpg" class="rounded-circle img-fluid" />
			</div>
			<textarea rows="4" cols="90" name="content" id="msg" style="margin-left: 30px; vertical-align: middle; margin-right: 20px;"></textarea>
			<button class="btn btn-success" onclick="loginCheck();">등록하기</button>
		
		</form>
	</div>
	
</div>
</div>
<%@ include file="WEB-INF/inc/footer.jsp" %>



</body>

<script>

	//f = form
	function comment_ajax(f) {
		
		var param = $(f).serialize();
		
		
	}

</script>



</html>