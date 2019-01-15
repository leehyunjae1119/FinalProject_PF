<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <%@ include file="WEB-INF/inc/topbar.jsp" %>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="resources/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
      프로젝트 지원내역02
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
  <link href="resources/assets/css/apply_list02.css" rel="stylesheet">
</head>

<body class="index-page sidebar-collapse">
   <div class="main main-raised" class="main">
      <div class="section section-basic">
         <div class="container">
         <div class="row">
            <div class="col-md-3" id="sidebar"><b>파트너스</b>&nbsp;&nbsp;
               <a href="#">기본정보 수정하기</a>
               <hr>
               <div class="user_info">
                  <img src="resources/assets/img/Teemo.png" class="user_img rounded-circle img-fluid"/>
                  <div class="user_info">
                     <p>teemo</p>
                     <p>teemo@naver.com</p>
                  </div>
               </div>
               <hr>
               <div class="col-md-6">
                   <a class="btn btn-info btn-link" href="#">내 프로필</a> 
                   <a class="btn btn-info btn-link" href="#">계정 유형 변경 신청</a> 
                   <a class="btn btn-info btn-link" href="#">미팅 관리</a> 
                   <a class="btn btn-info btn-link" href="#">지원 내역</a>
                   <a class="btn btn-info btn-link active" href="#">진행중인 프로젝트</a>
                   <a class="btn btn-info btn-link" href="#">완료한 프로젝트</a>
               </div>

            </div>
            <!-- 왼쪽 사이드 바 div -->
            <div class="col">
            <div class="col col-md-15">
               <h3><b>진행중</b></h3>
               <p>진행중인 프로젝트를 확인할 수 있습니다.</p>
            </div>
            <br>
                  <div class="col col-md-15">
                     <img src="resources/assets/img/support.png"/><br>
                     <p>
                     <b>
                     1. 현재 진행중인 프로젝트 목록입니다.<br/>
                     2. 클라이언트는 프로젝트의 지원자 모집 마감 이후, 최대 10일간 검토 기간을 가집니다.<br/>
                     3. 프로젝트 지원 결과는 클라이언트의 지원자 검토가 완료되면 안내해드립니다.<br/>
                     4. 클라이언트가 미팅을 원하는 경우, puding에서 개별적으로 연락을 드립니다.<br/>
                     </b>
                     </p>
                  </div>
                  <br><br>
                  <div class="user_project">
                     <b>===진행중인 프로젝트가 없습니다.===</b>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
    <%@ include file="WEB-INF/inc/footer.jsp" %>
      
      
  </body>
  </html>