<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <%@ include file="WEB-INF/inc/Partners_topbar.jsp" %>
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
  <!-- fontawesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

  <link href="resources/assets/css/project_list.css" rel="stylesheet">
</head>

<body class="index-page sidebar-collapse">

	<div class="main main-raised">
		<div class="section section-basic">
			<div class="container">
			<div class="row">
				<%@ include file="WEB-INF/inc/partners_sidebar.jsp" %>
				<!-- 왼쪽 사이드 바 div -->
				<div class="col-md-9"  id="col8" style="margin-top: -30px;">
				
				<h3><b>지원내역</b></h3>
               <p class="text-muted" style="margin-bottom: 30px;">회원님이 지원한 프로젝트 목록입니다.</p>
				
				
         <c:choose>
            <c:when test="${empty ApplicantList }">
               <h3 style="text-align: center;"> ----- 지원한 내역이 없습니다. -----</h3>
            </c:when>
         
         <c:otherwise>
         <c:forEach var="dto" items="${ApplicantList }">
         <div class="project_content_form">
            <h5><b><a href="project_view.do?board_no=${dto.board_no }&user_no=${dto.user_no}">${dto.board_title }</a></b></h5> 
               <div class="project_title2">
                      <div class="project_money">
                         <img src="resources/assets/img/money.png" />
                         <p class="text-muted"><b>예상 금액</b>&nbsp;&nbsp;&nbsp;<b>${dto.project_money }원</b></p>
                      </div>
                      <div class="project_time">
                         <img src="resources/assets/img/time.png" />   
                         <p class="text-muted"><b>예상 기간</b>&nbsp;&nbsp;&nbsp;<b>${dto.project_term }일</b></p>
                      </div>
                      <div class="project_support">
                         <p class="text-muted"><b>등록 일자</b>&nbsp;&nbsp;&nbsp;
                         <b><fmt:parseDate value="${dto.board_regdate }" pattern="yyyy-MM-dd" var="regdate" />
                         <fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" /></b></p>
                      </div>
                   </div>
               <div class="c_detail">
                  <div class="project_content_detail">
                         <p class="text-muted" id="detail">
                      ${dto.board_content}
                         </p>
                      
                      </div>
                                   
                      <div class="end_date">
                         <img src="resources/assets/img/K-021.png" />   
                         
                         <fmt:parseDate value="${dto.recruit_date }" var="recruitDate" pattern="yyyy-MM-dd" />
                         <fmt:parseNumber value="${recruitDate.time / (1000*60*60*24 )}" integerOnly="true" var="recDate"></fmt:parseNumber>
                         <fmt:parseDate value="${dto.board_regdate }" var="boardRegDate" pattern="yyyy-MM-dd" />
                         <fmt:parseNumber value="${boardRegDate.time / (1000*60*60*24 )}" integerOnly="true" var="regDate"></fmt:parseNumber>
                            
                         <p class="text-muted"><b>마감 ${recDate - regDate }일 전 </b></p>
                         <br />
                         <img src="resources/assets/img/support.png" />
                         <p class="text-muted"><b>총 0명 지원</b></p>
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
            <!-- <div id="pagination">
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
         </div>-->
      </div>
		
				</div>
			</div>
		</div>
	</div>
	 <%@ include file="WEB-INF/inc/footer.jsp" %>
		
		
  </body>
  </html>