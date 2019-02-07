<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="resources/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Puding
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
   <!-- CSS Files -->
   <link href="resources/assets/css/material-kit.css?v=2.0.5" rel="stylesheet" />
 
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="resources/assets/demo/demo.css" rel="stylesheet" />

</head>

<body class="index-page sidebar-collapse">
  <nav class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg" color-on-scroll="100" id="sectionsNav">
    <div class="container">
      <div class="navbar-translate">
        <a href="main.do"><img src="resources/assets/img/main_Icon_white.png" id="main_logo" style="width:100px;"/></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation" data-target="#index_topbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="navbar-toggler-icon"></span>
          <span class="navbar-toggler-icon"></span>
          <span class="navbar-toggler-icon"></span>
        </button>
      </div>
      <div class="collapse navbar-collapse" id="index_topbar">
                <ul class="navbar-nav">
                  <li class="nav-item" id="item1">
                  </li>
                  <li class="nav-item">
                    <a href="
                <c:if test="${userdto eq null }"> 
                JAVASCRIPT:alert('로그인을 해주세요!');
                </c:if>
               " class="nav-link"style="color:white" id="login">프로젝트 등록</a>
                  </li>
                  <li class="nav-item">
                    <a href="
                    <c:if test="${userdto eq null }"> 
               JAVASCRIPT:alert('로그인을 해주세요!');
                </c:if>
                  " class="nav-link" style="color:white">프로젝트 찾기</a>
                  </li>
                  <li class="nav-item">
                    <a href="
                    <c:if test="${userdto eq null }"> 
                JAVASCRIPT:alert('로그인을 해주세요!');
                </c:if>
            " class="nav-link" style="color:white">파트너스 목록</a>
                  </li>
                  <li class="nav-item">
                    <a href="question.do" class="nav-link" style="color:white">이용 방법</a>
                  </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                    <a href="login.do" class="nav-link" style="color:white">Login</a>
                  </li>
                  <li class="nav-item">
                    <a href="join.do" class="nav-link" style="color:white">Join</a>
                  </li>
               </ul>
       </div>
    </div>
  </nav>
  

</body>
</html>