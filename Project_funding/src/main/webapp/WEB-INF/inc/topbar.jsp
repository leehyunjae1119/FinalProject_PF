<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Puding</title>
<link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
  <link rel="icon" type="image/png" href="resources/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
</head>

<body class="index-page sidebar-collapse">

<nav class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg" id="sectionsNav">
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
						 login.do
						 </c:if>
						 <c:if test="${userdto.getUser_type() eq '클라이언트' }">
	  					 project_insert.do
	  					 </c:if>
  					 " class="nav-link" style="color:white">프로젝트 등록</a>
                  </li>
                  <li class="nav-item">
                    <a href="
                    	<c:if test="${userdto eq null }"> 
						 login.do
						 </c:if>
						 <c:if test="${userdto.getUser_type() eq '클라이언트' or '파트너스' or '투자자'}">
							project_list.do?page=1
	  					 </c:if>
	  					 " class="nav-link">프로젝트 찾기</a>
                  </li>
                  <li class="nav-item">
                    <a href="
                    	<c:if test="${userdto eq null }"> 
						 login.do
						 </c:if>
						 <c:if test="${userdto.getUser_type() eq '클라이언트' or '파트너스' or '투자자'}">
							partner_list.do
	  					 </c:if>
	  					 " class="nav-link">파트너스 목록</a>
                  </li>
                  <li class="nav-item">
                    <a href="question.do" class="nav-link">이용 방법</a>
                  </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                   <li class="nav-item" style="float: right;">
                       <a href="#pablo" class="btn btn-rose btn-raised btn-fab btn-round" data-toggle="dropdown">
                            <i class="material-icons">email</i>
                       </a>
                    </li>
                    <li class="nav-item">
                    <a href="login.do" class="nav-link">Login</a>
                  </li>
                  <li class="nav-item">
                    <a href="join.do" class="nav-link">Join</a>
                  </li>
               </ul>
       </div>
    </div>
  </nav>

</body>
</html>