<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="utf-8"%>
<%@page import="com.klp.pf.dto.PF_BoardDto"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:if test="${userdto.getUser_type() eq '파트너스' }">
   <%@ include file="WEB-INF/inc/Partners_topbar.jsp"%></c:if>

<c:if test="${userdto.getUser_type() eq '클라이언트' }">
   <%@ include file="WEB-INF/inc/client_topbar.jsp"%></c:if>
<meta charset="utf-8" />
<link href="resources/assets/css/project_list.css" rel="stylesheet" />

<link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="resources/assets/img/favicon.png">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Project Funding</title>
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
<link href="./src/main/webapp/resources/css/coinmanage.css"
   rel="stylesheet" />
<link href="resources/assets/css/Project_LikeList.css" rel="stylesheet" />
<!-- fontawesome -->
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
   integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
   crossorigin="anonymous">
</head>
<body>
<body class="index-page sidebar-collapse">

   <!-- 바탕 바꾸는곳 -->
   <div class="main main-raised">
      <!-- 나의푸딩 프로필부분 -->
      <div class="section section-basic">
         <div class="container">
            <div class="row">
               <c:if test="${userdto.getUser_type() eq '파트너스' }">
                  <%@ include file="WEB-INF/inc/partners_sidebar.jsp"%></c:if>

               <c:if test="${userdto.getUser_type() eq '클라이언트' }">
                  <%@ include file="WEB-INF/inc/client_sidebar.jsp"%></c:if>
               <div class="col-sm-9">
                  <h3>
                     <strong>관심 프로젝트</strong>
                     
                  </h3>
                  <br>
                  <h5>회원님이 관심 등록한 프로젝트를 확인할 수 있습니다.</h5>
                  <div class="boxed">
                     <br>
                     <ol>
                        <li>관심 프로젝트로 추가한 프로젝트 목록입니다.</li>
                        <li>지원 완료한 프로젝트의 경우, 목록에서 지원 내역으로 이동됩니다.</li>
                        <li>프로젝트 마감이 완료된 경우, 목록에서 자동으로 삭제됩니다.</li>
                        <li>[프로젝트 지원하기]버튼을 클릭하여 해당 프로젝트에 지원할 수 있습니다.</li>
                     </ol>
                  </div>

                  <c:choose>
                     <c:when test="${empty ProjectList }">
                        <h3 style="text-align: center;"><b>----- 관심 등록된 프로젝트가 없습니다. -----</b></h3>
                     </c:when>
                     <c:otherwise>
                        <br>
                        <c:forEach var="dto" items="${ProjectList }">
                          <c:if test="${dto.board_like eq '좋아' }">
                           <div class="project_content_form">
                              <h5>
                                 <b><a
                                    href="project_view.do?board_no=${dto.board_no }&user_no=${dto.user_no}">${dto.board_title }</a></b>
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

                                 <%
  
//                String a = dto.getBoard_regdate();
//                    System.out.println(dto);
//                System.out.println(a);
//                Date Ato = new SimpleDateFormat("yyyy-MM-dd").parse(a);
//                System.out.println(Ato);
               
//                String b = dto.getRecruit_date();
//                System.out.println(b);
//                Date Bto = new SimpleDateFormat("yyyy-MM-dd").parse(b);
//                System.out.println(Bto);
               
//                 long diffSec = Bto.getTime() - Ato.getTime();
//                long diffDays = diffSec / (24 * 60 * 60 * 1000);
//                System.out.println(diffDays);
            
//                dto.setRecruit(diffDays);
            
             %>

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
                           </c:if>
                        </c:forEach>

                        <br>
                     </c:otherwise>
                  </c:choose>
                  <!-- 페이징  -->
                                 
                        <ul class="pagination " id="pasing"></ul>
               </div>
            </div>
         </div>
      </div>
   </div>

   <!-- Classic Modal -->
   <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
      <div class="modal-dialog" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title">Modal title</h5>
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <i class="material-icons">clear</i>
               </button>
            </div>
            <div class="modal-body">
               <p>Far far away, behind the word mountains, far from the
                  countries Vokalia and Consonantia, there live the blind texts.
                  Separated they live in Bookmarksgrove right at the coast of the
                  Semantics, a large language ocean. A small river named Duden flows
                  by their place and supplies it with the necessary regelialia. It
                  is a paradisematic country, in which roasted parts of sentences
                  fly into your mouth. Even the all-powerful Pointing has no control
                  about the blind texts it is an almost unorthographic life One day
                  however a small line of blind text by the name of Lorem Ipsum
                  decided to leave for the far World of Grammar.</p>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-link">Nice Button</button>
               <button type="button" class="btn btn-danger btn-link"
                  data-dismiss="modal">Close</button>
            </div>
         </div>
      </div>
   </div>
   <!--  End Modal -->
   <%@ include file="WEB-INF/inc/footer.jsp"%>
   <!--   Core JS Files   -->
   <script src="resources/assets/js/core/jquery.min.js"
      type="text/javascript"></script>
   <script src="resources/assets/js/core/popper.min.js"
      type="text/javascript"></script>
   <script src="resources/assets/js/core/bootstrap-material-design.min.js"
      type="text/javascript"></script>
   <script src="resources/assets/js/plugins/moment.min.js"></script>
   <!--   Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
   <script src="resources/assets/js/plugins/bootstrap-datetimepicker.js"
      type="text/javascript"></script>
   <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
   <script src="resources/assets/js/plugins/nouislider.min.js"
      type="text/javascript"></script>
   <!--  Google Maps Plugin    -->
   <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
   <!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
   <script src="resources/assets/js/material-kit.js?v=2.0.5"
      type="text/javascript"></script>
   <script>
      $(document).ready(function() {
         //init DateTimePickers
         materialKit.initFormExtendedDatetimepickers();

         // Sliders Init
         materialKit.initSliders();
      });

      function scrollToDownload() {
         if ($('.section-download').length != 0) {
            $("html, body").animate({
               scrollTop : $('.section-download').offset().top
            }, 1000);
         }
      }

      $(document).ready(function() {

         $('#facebook').sharrre({
            share : {
               facebook : true
            },
            enableHover : false,
            enableTracking : false,
            enableCounter : false,
            click : function(api, options) {
               api.simulateClick();
               api.openPopup('facebook');
            },
            template : '<i class="fab fa-facebook-f"></i> Facebook',
            url : 'https://demos.creative-tim.com/material-kit/index.html'
         });

         $('#googlePlus').sharrre({
            share : {
               googlePlus : true
            },
            enableCounter : false,
            enableHover : false,
            enableTracking : true,
            click : function(api, options) {
               api.simulateClick();
               api.openPopup('googlePlus');
            },
            template : '<i class="fab fa-google-plus"></i> Google',
            url : 'https://demos.creative-tim.com/material-kit/index.html'
         });

         $('#twitter').sharrre({
            share : {
               twitter : true
            },
            enableHover : false,
            enableTracking : false,
            enableCounter : false,
            buttons : {
               twitter : {
                  via : 'CreativeTim'
               }
            },
            click : function(api, options) {
               api.simulateClick();
               api.openPopup('twitter');
            },
            template : '<i class="fab fa-twitter"></i> Twitter',
            url : 'https://demos.creative-tim.com/material-kit/index.html'
         });

      });
   </script>

</body>
</html>