<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@page import="com.klp.pf.dto.PF_BoardDto"%>	


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
  
   <c:if test="${userdto.getUser_type() eq '관리자' }">
  <%@ include file="WEB-INF/inc/admin_topbar.jsp" %>
  </c:if>
  
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

<script type="text/javascript"src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

</head>
<body>
<jsp:useBean id="dto" class="com.klp.pf.dto.PF_BoardDto" scope="request"></jsp:useBean>
<jsp:useBean id="comment_dto" class="com.klp.pf.dto.PF_CommentDto" scope="request"></jsp:useBean>
<jsp:useBean id="applydto" class="com.klp.pf.dto.PF_ApplicantDto" scope="request"></jsp:useBean>

<div class="main main-raised">
<div class="project_view_container">
   <div class="row" id="row">
      <div class="col-md-9" id="col10">
         <div class="view_title">
            <h3><span class="tim-note"><b><jsp:getProperty property="board_title" name="dto" /></b></span></h3>
           <c:if test="${userdto.getUser_type() eq '파트너스'}"> 
             <a href="project_likeList.do?board_no=${dto.board_no }&user_no=${userdto.user_no}&page=1"><img src="resources/assets/img/heart.PNG" style="width:20px;" />&nbsp;&nbsp;<b>관심 프로젝트</b></a>
         </c:if>
         </div>
         <div class="view_title2">
            <p class="text-muted">개발 > <jsp:getProperty property="project_category" name="dto" /></p>

            <p class="text-muted" id="support">총 ${apply_cnt }명 지원</p>           
            
            <fmt:parseDate value="${dto.recruit_date }" var="recruitDate" pattern="yyyy-MM-dd" />
                         <fmt:parseNumber value="${recruitDate.time / (1000*60*60*24 )}" integerOnly="true" var="recDate"></fmt:parseNumber>
                         
						 <fmt:parseDate value="${dto.board_regdate }" pattern="yyyy-MM-dd" var="regdate" />
                         <fmt:parseNumber value="${regdate.time / (1000*60*60*24 )}" integerOnly="true" var="regDate"></fmt:parseNumber>
            
            
            <span class="badge badge-pill badge-success">마감 ${recDate - regDate }일 전</span>
            
         </div>
         
         <div class="view_title_detail">
            <div class="project_title2">
                   <div class="project_money">
                      <img src="resources/assets/img/money.png" />&nbsp;&nbsp;
                      <p class="text-muted"><b>예상 금액</b>&nbsp;&nbsp;&nbsp;<b><jsp:getProperty property="project_money" name="dto" />원</b></p><br />
                      <p class="text-muted"><b>등록일</b>&nbsp;&nbsp;&nbsp;<b>
                      <fmt:parseDate value="${dto.board_regdate }" pattern="yyyy-MM-dd" var="regdate" />
                         <fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
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
               
               <%
                  dto.setBoard_content(dto.getBoard_content().replace("\r\n", "<br>"));
                  dto.setBoard_content(dto.getBoard_content().replace("\u0020"," "));
               
               %>
               
               
               <%=dto.getBoard_content() %>
                </p>
         </div>
         
      </div>
      <div class="col-md-3" id="col2">
         <div class="client_container">
            <p class="text-muted"><b>클라이언트</b></p>
         </div>
         <div class="client_img">
         
         	<c:choose>
				<c:when test="${userdto.user_img eq null}">
					<img src="resources/assets/img/남자.png" class="user_img rounded-circle img-fluid" />
				</c:when>
				<c:otherwise>
					<img src="http://localhost:8787/pf/storage/${userdto.user_img }" class="user_img rounded-circle img-fluid" />
				</c:otherwise>
			</c:choose>

            <c:choose>
            	<c:when test="${profile.profile_intro eq null }">
            		<p class="text-muted">등록한 자기소개가 없습니다.</p>
            	</c:when>
            	<c:otherwise>
            		<p class="text-muted">${profile.profile_intro } </p>
            	</c:otherwise>
            </c:choose>    
            
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
       			     <button id="y" class="btn btn-primary btn-round" data-toggle="modal" data-target="#myModal">메세지 보내기</button>


      </div>

	</div>

	
	<div class="file_upload">
<!-- 		<iframe src="http://docs.google.com/gview?url=http://localhost:8787/pf/storage/test.pdf&embedded=true" style="width:100%; height:500px;" frameborder="0"></iframe> -->
		 <c:if test="${dto.board_file ne null }">
           <iframe src="http://localhost:8787/pf/storage/${dto.board_file }" style="width:100%; height:500px;" frameborder="0"></iframe>
<%--          <h1>${dto.board_file }</h1> --%>
          </c:if>
	</div>
	
		<c:if test="${userdto.getUser_no() eq dto.user_no}">
		<div class="button_container">
            <button class="btn btn-danger" style="float: right; display: inline-block;" onclick="location.href='project_delete.do?board_no=<jsp:getProperty property="board_no" name="dto" />&page=1'">삭제하기</button>
            <button class="btn btn-warning" style="float: right; display: inline-block;" onclick="location.href='project_update.do?board_no=<jsp:getProperty property="board_no" name="dto" />'">수정하기</button>
       	</div>
        </c:if>
           
        <c:if test="${userdto.getUser_type() eq '투자자'}">
        <div class="button_container" style="text-align: center;">
  			<form method="get" action="investAction.do" onSubmit="return CheckForm(this);" name="payment">
  				<input type="hidden" value="${dto.board_no }" name="board_no">
  				<input type="hidden" value="${coin }" name="coin">		<!-- 보유코인을 같이 보내서 controller에서 유효성 검사 한다. -->										
				<input type="hidden" value="${dto.user_no }" name="clientUser_no">						
				<input type="text" style="width : 100px; display: inline-block;" class="form-control" id="control" name="amount_val">
				<input type="submit" value="투자하기"  class="btn btn-info btn-lg"  style="display: inline-block; width: 150px;">									
			</form>
		</div>
        </c:if>

	
	<c:if test="${userdto.getUser_type() eq '파트너스' }">
		<div class="partners_button">
			<input type="button" id="partners" class="btn btn-rose btn-lg" value="지원하기 " style="display: inline-block; width: 150px;" onclick="location.href='Apply_Project.do?board_no=${dto.board_no}&user_no=${dto.user_no }'" />
   		</div>
    </c:if>
    
    <c:if test="${dto.getProject_state() eq '진행중' && userdto.user_no == dto.getUser_no() }">
	    		<div class="partners_button">
	        		<button id="partners" class="btn btn-rose btn-lg" style="display: inline-block; width: 150px;" onClick="location.href='project_finish.do?board_no=${dto.board_no}&user_no=${userdto.user_no }&page=1'">완료하기</button>
	   			</div>	
	</c:if>
	
	<hr />
	<div class="comment_container">
		<h4><b>프로젝트 문의</b></h4>	
		
		<div id="comment_container2">
			<div id="comment_list">
					
			</div>
		</div>
				
		<form id="comment_form" method="post" action="comment_insert.do" onsubmit="return comment_ajax(this);" style="margin-top: 100px;">
			<input type="hidden" name="board_no" value="${dto.board_no }" />
	
			<div class="free_img">
				<img src="http://localhost:8787/pf/storage/${userdto.user_img }" class="user_img rounded-circle img-fluid" />
			</div>
			<textarea rows="4" cols="90" name="comment_content" id="comment_content" style="margin-left: 30px; vertical-align: middle; margin-right: 20px;"></textarea>
			<button class="btn btn-success">등록하기</button>
		
		</form>
	</div>
   </div>
   <hr />

   </div>

<%@ include file="WEB-INF/inc/footer.jsp" %>

</body>
	 	<!-- ============================================= 쪽지 모달 시작! ========================================================== -->
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
						<form action="message_insert.do?page=1&board_no=${dto.board_no }" method="post">
						<input type="hidden" name="sender" value="${userdto.user_id }" >
						<div class="modal-body">
						
						<!-- 쪽지 내용 작성하는 부분 -->
								<h4>
									<b id="min">받는사람&nbsp;</b>
									<input type="text" name="reader" value="${messageuser.user_id }" style="border: none;" readonly="readonly"/>
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
<script>


function CheckForm(Join){
	var coin=${coin};
	var amount_val= document.payment.amount_val;
	if(coin<amount_val.value){
		alert('보유포인트가 부족합니다. 보유 포인트는' + ${coin}+'원 입니다.')
		return false;
	}
	
}





	var board_no = '${dto.board_no}';
	var user_img = '${userdto.user_img}';


   $(function() {
      getComment_list('${dto.board_no}');
   })
   
   
   //f = form
   function comment_ajax(f) {
   
      $.ajax({
         url : "comment_insert.do",
         data: $("#comment_form").serialize(),
         type: "POST",
         dataType: "html",
         success: function(data) {
            console.log(data);
            if(data == "success") {
               getComment_list('${dto.board_no}');
               $("#comment_content").val("");
            }
            
         }, error:function(request, status, error) {
            
         }
         
      });
      
      return false;      //안 쓰면 값 두 번 들어감
   }
   
  
   
   function getComment_list(board_no) {
      
      $.ajax ({
         url: "comment_list.do",
         type: "GET",
         dataType: "json",
         data: $("#comment_form").serialize(),
         success: function(data) {
            var html = "";
            var cCnt = data.length;
            
            if(data.length > 0) {
               for(i=0; i<data.length; i++) {

                  html += "<div class='card' style='min-height: 150px;'>";
                  html += "<div class='card-body' style='display: inline-block;'>";
                  html += "<img src='http://localhost:8787/pf/storage/"+user_img+"' class='user_img rounded-circle img-fluid' style='width: 100px; height: 100px; display: inline-block; float: left;'>";
                  html += "<div id='comment_"+data[i].comment_no+"' style='display: inline-block; margin-left: 30px; width: 87%; vertican-align: center;'>";
                  html += "<h4 class='card-title' style='display: inline-block;'>"+data[i].user_id+"</h4>";
                  html += "<a onclick=\"comment_Delete('"+data[i].comment_no+"');\" style='float: right; margin-left: 10px;'>";
                  html += "<i class='far fa-trash-alt fa-2x'></i></a>";
                  html += "<a onclick=\"comment_Update('"+data[i].comment_no+"');\" data-toggle='modal' style='float: right; margin-left: 10px;'>";
                  html += "<i class='far fa-edit fa-2x'></i></a>";
                  html += "<h4 class='card-title' style='display: inline-block; float: right;'>"+data[i].comment_regdate+"</h4>";
                  html += "<h5 class='card-category text-gray'>";
                  html += data[i].comment_content;
                  html += "</h5>";
                  html += "<form class='comment_update hidden' onsubmit='return comment_update_ajax(this);'>";
                  html += "<input type='hidden' name='user_no' value='"+data[i].user_no+"' />";
                  html += "<input type='hidden' name='comment_no' value='"+data[i].comment_no+"' />";
                  html += "<input type='hidden' name='board_no' value='"+board_no+"' />";
                  html += "<textarea style='display:inline-block; width:80%;' name='comment_content'>"+data[i].comment_content+"</textarea>";
                  html += "<button type='submit' class='btn btn-success' style='float: right;'>수정완료</button>";
                  html += "</form>";
                  html += "</div>";
                  html += "</div>";
                  html += "</div>";
               }
            } else {
               
            }
            
            $("#cCnt").html(cCnt);
            $("#comment_list").html(html);
         },
         
         error: function(request, status, error) {
      }
         
      });
   }
   
   function comment_Delete(c_no) {
      var form_data = {"comment_no" : c_no};
      if(confirm("삭제하시겠습니까?")) {
         $.ajax ({
               url:'comment_delete.do',
               type:'POST',
               data:form_data,
               dataType:"html",         // (컨트롤러에서 Object 형태로 리턴할 때만 json)
               success:function(data) {
                   getComment_list("${dto.board_no}");
               },error:function(e) {
                  console.log("error");
               }
           })   
      } else {
         alert("취소되었습니다.");
      }
      
      return false;
   }

   
   function comment_Update(c_no) {
      if($("#comment_"+c_no+" h5").hasClass("hidden")) {
         $("#comment_"+c_no+" h5").removeClass("hidden");
         $("#comment_"+c_no+" form").addClass("hidden");   
      } else {
         $("#comment_"+c_no+" h5").addClass("hidden");
         $("#comment_"+c_no+" form").removeClass("hidden");
      }
     
   } 
   
   function comment_update_ajax(f){
      var param_data = $(f).serialize();
      
      $.ajax({
         url:"comment_update.do",
         data: param_data,
         dataType: "html",
         type: "POST",
         success: function(data) {

            getComment_list("${dto.board_no}");
         }, error: function(e) {
            console.log("error");
         }
      })
      
      return false;
   }

</script>



</html>