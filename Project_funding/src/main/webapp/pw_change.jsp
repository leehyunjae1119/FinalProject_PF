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
  <link href="resources/assets/css/pw_change.css" rel="stylesheet">
  
  
</head>

<body class="index-page sidebar-collapse">
	<div class="main main-raised" class="main">
		<div class="section section-basic">
			<div class="container">
			<div class="row">
				<div class="col-md-3" id="sidebar"><b>클라이언트</b>&nbsp;&nbsp;
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
						 <a class="btn btn-info btn-link" href="#">기본정보수정</a> 
						 <a class="btn btn-info btn-link active" href="#">비밀번호변경</a> 
						 <a class="btn btn-info btn-link" href="#">계좌관리</a> 
						 <a class="btn btn-info btn-link" href="#">회원탈퇴</a>
					</div>

				</div>
				<!-- 왼쪽 사이드 바 div -->
				<div class="col">
				<div class="col col-md-15">
					<h3><b>비밀번호 변경</b></h3>
					<p>개인정보 보호를 위해 비밀번호를 주기적으로 변경해주세요.</p>
				</div>
				<br>
						<div class="col col-md-15">
							<form action="#">
							<div class="user_pw">
							<b>*새 비밀번호</b> 
								<input type="password"  class="form-control"><p>
								비밀번호는 8자 이상 32자 이하로 입력해주세요.
							</div>
							
							<div class="user_pwcheck">
								<b>*새 비밀번호 확인</b> 
								<input type="password"  class="form-control"><p>
								동일한 비밀번호를 입력해주세요.
							</div>
							<div class="user_pwbt">
								<input type="submit" class="btn btn-primary" value="변경완료">
								<input type="button" class="btn btn-primary" value="취소">
							</div>
							</form>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="WEB-INF/inc/footer.jsp" %>
		
		
  </body>
  </html>