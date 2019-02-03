<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="utf-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<c:if test="${userdto eq null }"> 
 <%@ include file="WEB-INF/inc/topbar.jsp" %>
 </c:if>
 
 <c:if test="${userdto.getUser_type() eq '파트너스' }">
  <%@ include file="WEB-INF/inc/Partners_topbar.jsp" %></c:if>
   
 <c:if test="${userdto.getUser_type() eq '클라이언트' }">
  <%@ include file="WEB-INF/inc/client_topbar.jsp" %></c:if>
   
 <c:if test="${userdto.getUser_type() eq '투자자' }">
  <%@ include file="WEB-INF/inc/investor_topbar.jsp" %></c:if>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
   href="resources/assets/img/apple-icon.png">
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
<link href="resources/assets/css/User_PartnerList.css" rel="stylesheet" />
<!-- fontawesome -->
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
   integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
   crossorigin="anonymous">
  
  
  <script type="text/javascript">
  function showModal(data){
     $("#myModal .modal-title").val(data)
      $("#myModal").modal();
  }
  
  </script> 
</head>
<body>
<body class="index-page sidebar-collapse">

   <!-- 바탕 바꾸는곳 -->
   <div class="main main-raised">
      <!-- 나의푸딩 프로필부분 -->
      <div class="section section-basic">
         <div class="container">
            <div class="row">

               <div class="col-sm-12">

                  <div class="boxed">
                     <h3>
                        <strong>파트너 목록</strong>
                     </h3>
                     <h5>함께 프로젝트 작업이 가능한 현재 활동중인 파트너스 리스트입니다.</h5>
                     <div id="b">
                        <form class="form-inline ml-auto">
                           <div class="form-group has-black">
                              <input type="text" class="form-control" placeholder="Search">
                           </div>
                           <button type="submit"
                              class="btn btn-white btn-raised btn-fab btn-round">
                              <i class="material-icons" style="background-color: black;">search</i>
                           </button>
                        </form>
                     </div>
                  </div>
                  <br>
                 
                  <c:choose>
                     <c:when test="${empty PartnersList }">
                        <h3>----- 파트너스가 없습니다. -----</h3>
                     </c:when>
                     
                     <c:otherwise>
                     <c:forEach var="dto" items="${PartnersList }">
                    <div class="project"> 
                     <div class="row">
                        <div class="col-sm-2" style="float: left; padding-left:35px; padding-top:25px;">
                           <img src="resources/assets/img/faces/avatar.jpg"
                              class="rounded-circle img-fluid" alt="circle"
                              style="height: 80px; width: 80px;"
                              id="img3">
                           <br>
                           <div>
                              <b style="padding-left:25px;">${dto.user_type }</b>
                           </div>
                        </div>
                        <div class="col-sm-6" style="wedth:100px;">
                           <h3 id="x">
                              <a  style="color: skyblue;"><strong>${dto.user_id } &nbsp</strong></a>
                           </h3>
                                 <button id="y" class="btn btn-primary btn-round" onclick="showModal('${dto.user_id}')" data-target="#myModal">메세지 보내기</button>

                           <div class="pr">
                              <b id="yoyak">
                               <c:choose>
                           <c:when test="${dto.profile_intro eq null }">
                                       파트너스가 자기소개를 등록하지 않았습니다.
                           </c:when>
                              <c:otherwise>
                                       ${dto.profile_intro }
                              </c:otherwise>
                        </c:choose>
                                       </b>
                           </div>
                           
                        </div>
                        <div class="col-sm-3" style="float:right; padding-top:30px;">
                           <img src="resources/assets/img/fuck.PNG"
                              style="height: 120px; width: 230px;" id="img5">
                        </div>                                                 
                        </div>
                         </div>
                        </c:forEach>   
                       </c:otherwise>             
                     </c:choose>
                
                  <br>
                  
               </div>
            </div>
         </div>
      </div>
      </div>
      <%@ include file="WEB-INF/inc/footer.jsp" %>
      

   <div class="container">
      <!-- The Modal -->
      <div class="modal" id="myModal">
         <div class="modal-dialog ">
            <div class="modal-content">
               <!-- Modal Header -->
               <div class="modal-header">
                  <h3>
                     <b style="padding-left: 180px;">쪽지쓰기</b>
                  </h3>

                  <button type="button" class="close" data-dismiss="modal">&times;</button>
               </div>

               <!-- Modal body -->
               <!-- 값을 전송하는 부분 -->
               <form action="message_insert.do?page=1" method="post">
                  <input type="hidden" name="sender" value="${userdto.user_id }">
                  <div class="modal-body">

                     <!-- 쪽지 내용 작성하는 부분 -->
                     <h4 >
                        <b id="min">받는사람&nbsp;</b>
                         <input type="text" class="modal-title" name="reader"  style="border: none;" readonly="readonly" />
                     </h4>
                     <h4>
                        <b>내용&nbsp;</b>
                     </h4>
                     <textarea rows="10" cols="40" class="form-control" name="content"></textarea>
                  </div>

                  <!-- Modal footer -->
                  <div class="modal-footer">
                     <input type="submit" class="btn btn-warning" value="보내기"
                        id="send" />
                     <!-- data-dismiss : 모달창 닫기 -->
                     <input type="button" class="btn btn-default" value="취소"
                        data-dismiss="modal" />
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>


      
</body>
</html>