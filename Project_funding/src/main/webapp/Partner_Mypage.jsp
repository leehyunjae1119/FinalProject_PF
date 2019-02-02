<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.klp.pf.dto.PF_BoardDto"%>

<!DOCTYPE html>
<html lang="en">

<head>
<%@ include file="WEB-INF/inc/Partners_topbar.jsp"%>
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
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
   integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
   crossorigin="anonymous">

<link href="resources/assets/css/Partner_Mypage.css" rel="stylesheet">

</head>

<body class="index-page sidebar-collapse">
   <div class="main main-raised">
      <div class="section section-basic">
         <div class="container">
            <div class="row">
               <div class="col-md-3" id="sidebar">
                  <b>파트너스</b>&nbsp;&nbsp; <a href="user_infoUpdate.do"
                     style="font-size: 12px; color: #A6A6A6; float: right;"><b>기본정보
                        수정하기</b></a>
                  <hr>
                  <div class="user_info">
                     <img src="resources/assets/img/Teemo.png"
                        class="user_img rounded-circle img-fluid" />
                     <div class="user_info">
                        <p>${userdto.user_id }</p>
                        <p>${userdto.user_email }</p>
                     </div>
                  </div>
                  <hr>
                  <div class="col-md-12" id="col12">
                     <h5>
                        <b>푸딩 히스토리</b>
                     </h5>
                     <hr />
                     <div class="apply_project">
                        <p class="text-muted">
                           <b>지원한 프로젝트</b>
                        </p>
                        <p class="text-muted" id="apply">12건</p>
                     </div>
                     <div class="ing_project">
                        <p class="text-muted">
                           <b>진행한 프로젝트</b>
                        </p>
                        <p class="text-muted" id="ing">12건</p>
                     </div>
                     <div class="project">
                        <p class="text-muted">
                           <b>완료한 프로젝트</b>
                        </p>
                        <p class="text-muted" id="ok">12건</p>
                     </div>
                  </div>


               </div>
               <!-- 왼쪽 사이드 바 div -->
               <div class="col" style="margin-top: -30px;">
                  <div class="col col-md-15">
                     <h3>
                        <b>나의 푸딩</b>
                     </h3>
                  </div>
                  <br>
                  <div class="col col-md-15">
                     <div class="like_project">
                        <h5>관심 프로젝트</h5>
                        <table class="table table-bordered">
                           <thead class="thead-light">
                              <tr>
                                 <th scope="col">프로젝트 제목</th>
                                 <th scope="col">예상 금액</th>
                                 <th scope="col">예상 기간</th>
                                 <th scope="col">마감 일자</th>
                              </tr>
                           </thead>
                           <tbody id="tbody">
                              <tr id="cloneTr">
                                 <c:choose>
                                    <c:when test="${empty likelist }">
                                       <td colspan="4"><b>----- 관심 등록된 프로젝트가 없습니다. -----</b></td>
                                    </c:when>
                                    <c:otherwise>
                                       <br>
                                       <c:forEach var="dto" items="${likelist }">
<%--                                           <c:if test="${dto.board_like eq '좋아'}"> --%>
                                          <tr>
                                             <td>${dto.board_title }</td>
                                             <td>${dto.project_money }원</td>
                                             <td>${dto.project_term }일</td>
                                             <td>${dto.recruit_date }</td>
                                          </tr>   
<%--                                           </c:if>    --%>
                                       </c:forEach>
                                    </c:otherwise>      
                                 </c:choose>
                              </tr>
                           </tbody>
                        </table>
                        <a href="likeList.do?user_no=${userdto.user_no}&page=1" class="view">자세히 보기 >></a>
                     </div>
                     <div class="like_project">
                        <h5>지원 내역</h5>
                        <table class="table table-bordered">
                           <thead class="thead-light">
                              <tr>
                                 <th scope="col">프로젝트 제목</th>
                                 <th scope="col">예상 금액</th>
                                 <th scope="col">예상 기간</th>
                                 <th scope="col">마감 일자</th>
                              </tr>
                           </thead>
                           <tbody id="tbody">
                              <tr id="cloneTr">
                                 <td>프로젝트 제목 어쩌구 저쩌구</td>
                                 <td>1,000,000원</td>
                                 <td>30일</td>
                                 <td>3월 1일</td>
                              </tr>
                           </tbody>
                        </table>
                        <a href="project_supportList.do" class="view">자세히 보기 >></a>
                     </div>

                     <div class="like_project">
                        <h5>진행 중인 프로젝트</h5>
                        <table class="table table-bordered">
                           <thead class="thead-light">
                              <tr>
                                 <th scope="col">프로젝트 제목</th>
                                 <th scope="col">예상 금액</th>
                                 <th scope="col">예상 기간</th>
                                 <th scope="col">마감 일자</th>
                              </tr>
                           </thead>
                           <tbody id="tbody">
                              <tr id="cloneTr">
                                 <td>프로젝트 제목 어쩌구 저쩌구</td>
                                 <td>1,000,000원</td>
                                 <td>30일</td>
                                 <td>3월 1일</td>
                              </tr>
                           </tbody>
                        </table>
                        <a href="project_ing.do" class="view">자세히 보기 >></a>
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