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
  
<link href="resources/assets/css/project_list.css" rel="stylesheet" />
<link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="resources/assets/img/favicon.png">

<!--     Fonts and icons     -->
 <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
 <!-- CSS Files -->
 <link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
 <!-- CSS Just for demo purpose, don't include it in your project -->
 <link href="resources/assets/demo/demo.css" rel="stylesheet" />
 
 <!-- 모달창 부트스트랩 -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>



</head>
<body>
<div class="main main-raised">
<div class="list_container">
	<div class="row">
	<div class="col-md-12" style="height: 170px;">
		<div class="container_title">
		<h3><span class="tim-note"><b>프로젝트 찾기</b></span></h3>
 		<div class="project_list">
 			<form class="form-inline ml-auto">
                  <div class="form-group has-white">
                    <input type="text" class="form-control" placeholder="Search">
                  </div>
                  <button type="submit" class="btn btn-white btn-raised btn-fab btn-round">
                    <i class="material-icons" style="background-color: black;">search</i>
                  </button>
            </form>
 		</div> 
			<p class="text-muted">
			15,846개의 프로젝트가 있습니다.
			</p>
		</div>
	</div>
	
		<div class="col-md-2" id="list_col">
			<div class="list_container2">
				<div class="project_array">
					<p class="text-muted" style="font-size: 15px;"><b>프로젝트 정렬</b></p>
				</div>
				<div class="project_array_2">
					<a href="#">금액 높은 순</a><br />
					<a href="#">최신 등록 순</a><br />
					<a href="#">마감 등록 순</a><br />
				</div>
			
			<div class="project_category">
				<div class="project_cate_title">
					<p class="text-muted" style="font-size: 15px;"><b>프로젝트 카테고리</b></p>
				</div>
				<div class="project_cate">
					<div class="form-check">
               		 	<label class="form-check-label">
                 		 <input class="form-check-input" type="checkbox" value="">
                 		 	<p class="text-muted" style="font-size: 12px;">개발</p>
                 		 <span class="form-check-sign">
                	 	   <span class="check"></span>
                		  </span>
                		</label>
             		</div>
             		<div class="project_cate2">
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">웹</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">어플리케이션</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">일반 소프트웨어</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">게임</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">임베디드</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">퍼블리싱</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">기타</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             		</div>
				</div>
				<div class="project_cate">
					<div class="form-check">
               		 	<label class="form-check-label">
                 		 <input class="form-check-input" type="checkbox" value="">
                 		 	<p class="text-muted" style="font-size: 12px;">금액</p>
                 		 <span class="form-check-sign">
                	 	   <span class="check"></span>
                		  </span>
                		</label>
             		</div>
             		<div class="project_cate2">
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">100만원 이하</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">500만원 이하</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">1000만원 이하</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">5000만원 이하</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">1억 이하</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">10억 이하</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			
             		</div>
				</div>
				
				<div class="meeting_title">
					<div class="meeting_area_title">
						<p class="text-muted" style="font-size: 13px;"><b>미팅 진행지역</b></p>
					</div>
					<div class="select_area">
						<select name="category" style="font-size: 13px;">
							<option value="" selected>전체 지역</option>
  							<option value="web">서울특별시</option>
  							<option value="app">경기도</option>
  							<option value="software">인천 광역시</option>
  							<option value="game">부산 광역시</option>
  							<option value="embedded">부산 광역시</option>
  							<option value="publishing">대구 광역시</option>
  							<option value="other">광주 광역시</option>
  							<option value="other">대전 광역시</option>
  							<option value="other">울산 광역시</option>
  							<option value="other">세종 특별자치시</option>
  							<option value="other">강원도</option>
  							<option value="other">충청도</option>
  							<option value="other">전라도</option>
  							<option value="other">경상도</option>
  							<option value="other">제주 특별자치도</option>
						</select>
					</div>
					<div class="search_button">
						<button class="btn" style="width: 200px; height: 40px;">검색</button>
					</div>
				</div>
				<!-- 미팅 지역 끝! -->
				
			</div>
			</div>
		</div>
		<!-- 카테고리 별 검색 끝! -->
		<!-- col-md-2 끝! -->
		<div class="col-md-8" id="col8">
			<c:choose>
				<c:when test="${empty ProjectList }">
					<h3> ----- 등록된 프로젝트가 없습니다. -----</h3>
				</c:when>
			
			<c:otherwise>
			<c:forEach var="dto2" items="${ProjectList }">
			<div class="project_content_form">
				<h5><b><a href="#">${dto2.board_title }</a></b></h5>
				
				<span id="dong">user2</span>
				<button id="y" class="btn btn-primary btn-round" data-toggle="modal" data-target="#myModal" onclick="dong();">
			메세지 보내기	
				</button>
	
					<div class="project_title2">
       					<div class="project_money">
       						<img src="resources/assets/img/money.png" />
       						<p class="text-muted"><b>예상 금액</b>&nbsp;&nbsp;&nbsp;<b>${dto2.project_money }원</b></p>
       					</div>
       					<div class="project_time">
       						<img src="resources/assets/img/time.png" />	
       						<p class="text-muted"><b>예상 기간</b>&nbsp;&nbsp;&nbsp;<b>${dto2.project_term }일</b></p>
       					</div>
       					<div class="project_support">
       						<p class="text-muted"><b>등록 일자</b>&nbsp;&nbsp;&nbsp;
       						<b><fmt:formatDate value="${dto2.board_regdate }" 
        pattern="yyyy년 MM월 dd일"></fmt:formatDate> </b></p>
       					</div>
       				</div>
					<div class="c_detail">
						<div class="project_content_detail">
       						<p class="text-muted" id="detail">
       					${dto2.board_content}
       						</p>
       					
       					</div>
       					<div class="end_date">
       						<img src="resources/assets/img/K-021.png" />
       						<p class="text-muted"><b>마감 7일 전</b></p>
       						<br />
       						<img src="resources/assets/img/support.png" />
       						<p class="text-muted"><b>총 ${dto.recruit_personnel }명 지원</b></p>
       					</div>
       				</div>
				</div>
				</c:forEach>
				</c:otherwise>
				</c:choose>
				
				<!-- 페이징 -->
				<div id="pagination">
					<ul class="pagination pagination-info">
                		<li class="page-item">
                	  		<a href="javascript:void(0);" class="page-link"> prev</a>
                		</li>
               			<li class="active page-item">
                  			<a href="javascript:void(0);" class="page-link">1</a>
                		</li>
               	 		<li class="page-item">
                  			<a href="javascript:void(0);" class="page-link">2</a>
                		</li>
                		<li class="page-item">
                  			<a href="javascript:void(0);" class="page-link">3</a>
                		</li>
                		<li class="page-item">
                  			<a href="javascript:void(0);" class="page-link">4</a>
                		</li>
                		<li class="page-item">
                  			<a href="javascript:void(0);" class="page-link">5</a>
                		</li>
                		<li class="page-item">
                  			<a href="javascript:void(0);" class="page-link">next </a>
                		</li>
              		</ul>
			</div>
		</div>
	</div>
</div>
</div>

<%@ include file="WEB-INF/inc/footer.jsp" %>

<!-- =================쪽지 부분입니다=====================  --> 
    <!--  쪽지 모달창 -->
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
						<form action="sendnote.do" method="post">
						<div class="modal-body">
						
						<!-- 쪽지 내용 작성하는 부분 -->
								<h4>
									<b id="min">받는사람&nbsp;</b>
									<input type="text" id="userid"/>
								</h4>
							
							
							<h4>
								<b>내용&nbsp;</b>
							</h4>
							<textarea rows="10" cols="40" class="form-control" id="note_content"></textarea>
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
		



</body>
</html>