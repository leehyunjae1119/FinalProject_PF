<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Puding</title>

<link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<style type="text/css">

#ho:hover {
   position: relative;
   top: calc(100% - 0.125rem);
   border-bottom: 4px solid #FFA7A7;
   left: 50%;
   right: 50%;
   transition: all 0.5s ease;
   left: 0;
   right: 0;
   transition: all 0.5s ease;
}
</style>
</head>
<body>
   <nav
      class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg"
      id="sectionsNav">
      <div class="container">
         <div class="navbar-translate">
            <a href="index.do"><img src="resources/assets/img/main_Icon_white.png" id="main_logo" style="width:100px;"/></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse"
               aria-expanded="false" aria-label="Toggle navigation">
               <span class="sr-only">Toggle navigation</span> 
               <span class="navbar-toggler-icon"></span> <span
                  class="navbar-toggler-icon"></span> <span
                  class="navbar-toggler-icon"></span>
            </button>
         </div>
         <div class="collapse navbar-collapse">
            <ul class="navbar-nav">
					<li class="nav-item"><a href="client_mypage.do" class="nav-link">나의
							푸딩</a></li>
					<li class="nav-item">
						<a href="project_insert.do" class="nav-link" style="color: white">프로젝트 등록</a>
					</li>
					<li class="nav-item"><a href="project_list.do"
						class="nav-link" style="color: white">프로젝트 찾기</a></li>
					<li class="nav-item"><a href="partner_list.do"
						class="nav-link" style="color: white">파트너스 목록</a></li>
					<li class="nav-item"><a href="question.do" class="nav-link"
						style="color: white">이용 방법</a></li>
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item" style="float: right;">
						<a id="popbutton"class="btn btn-rose btn-raised btn-fab btn-round" 
						data-toggle="modal" data-target="#myModal"> <!-- 이메일 아이콘 누르면 모달창 연결-->
							 <i class="material-icons">email</i>
						</a>
					</li>
					<li class="nav-item">
						<a href="#pablo" class="nav-link">${userdto.user_id }</a>

					<li class="nav-item">
						<a href="logOut.do" class="nav-link"style="color: white">Log out</a>
					</li>
				</ul>
         </div>
      </div>
   </nav>

   <nav
      class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg"
      id="sectionsNav"
      style="background-color: #D5D5D5; margin-top: 70px; height: 55px;">
      <div class="container">
         <div class="navbar-translate" style="width: 100px;">
            <button class="navbar-toggler" type="button" data-toggle="collapse"
               aria-expanded="false" aria-label="Toggle navigation">
               <span class="sr-only">Toggle navigation</span> <span
                  class="navbar-toggler-icon"></span> <span
                  class="navbar-toggler-icon"></span> <span
                  class="navbar-toggler-icon"></span>
            </button>
         </div>

         <div class="collapse navbar-collapse">
            <ul class="navbar-nav" style="color:black;">
               <li class="nav-item"><a href="#pablo" class="nav-link" id="ho"
                  style="padding-top: 17px;">검수 중</a></li>
               <li class="nav-item"><a href="project_recruitmentList.do" class="nav-link" id="ho"
                  style="padding-top: 17px;">지원자 모집 중</a></li>
               <li class="nav-item"><a href="project_ing.do" class="nav-link" id="ho"
                  style="padding-top: 17px;">진행중인 프로젝트</a></li>
                  <li class="nav-item"><a href="project_end.do" class="nav-link" id="ho"
                  style="padding-top: 17px;">완료한 프로젝트</a></li>
                  <li class="nav-item"><a href="user_typeUpdate.do" class="nav-link" id="ho"
                  style="padding-top: 17px;">계정 유형 변경 신청</a></li>
            </ul>
         </div>
         </div>
   </nav>
  
   
   
   <!-- 쪽지 모달창 -->
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
						<form action="#">
						<div class="modal-body">
						
						<!-- 쪽지 내용 작성하는 부분 -->
							<h4>
								<b>받는사람&nbsp; <b>mineomd123</b></b>
							</h4>
							
							<h4>
								<b>제목&nbsp;</b>
							</h4>
							<input type="text" class="form-control" id="note_title"><br>
							
							<h4>
								<b>내용&nbsp;</b>
							</h4>
							<textarea rows="10" cols="40" class="form-control" id="note_content"></textarea>
						</div>
						
						<!-- Modal footer -->
						<div class="modal-footer">
							<input type="submit" class="btn btn-warning" value="보내기"/>
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