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
   	회원정보수정
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
  <link href="resources/assets/css/infoupdate.css" rel="stylesheet">
  
  
</head>

<body class="index-page sidebar-collapse">
	<div class="main main-raised">
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
					<div class="col-md-12">
						 <a class="btn btn-link active" href="#">기본정보수정</a> 
						 <a class="btn btn-link" href="#">비밀번호변경</a> 
						 <a class="btn btn-link" href="#">계좌관리</a><br />
						 <a class="btn btn-link" href="#">회원탈퇴</a>
					</div>

				</div>
				<!-- 왼쪽 사이드 바 div -->
				<div class="col" style="margin-top: -30px;">
				<div class="col col-md-15">
					<h3><b>회원정보수정</b></h3>
					<p class="text-muted" style="font-size: 12px;">회원정보를 수정할 수 있습니다.</p>
				</div>
				<br>
						<div class="col col-md-15">
								<h4>
									<b>계정 정보</b>
								</h4>
								<div class="user_idemail">
									<b>아이디</b>&nbsp;&nbsp;&nbsp; <p class="text-muted">uiyhp123</p><br>
									<b>이메일</b>&nbsp;&nbsp;&nbsp; <p class="text-muted">uiyhp123@naver.com</p>
								</div>
								<hr>
								<div class="user_info_up">
									<h4>
										<b>기본 정보</b>
									</h4>
									<br>
									<form action="#">	
									<div class="user_info_write" id="profile_img">
										<b>프로필 사진</b><input type="text" class="form-control">
										<input type="button" class="btn btn-warning" value="이미지 추가" style="float: right;"/>
									</div>
									<br>
									<div class="user_info_write">
										<b>* 파트너 형태</b>
										<select title="user_type" class="form-control">
											<option>개인</option>
											<option>클라이언트</option>
											<option>투자자</option>
										</select>
									</div>
									<br>
									<div class="user_info_write">
										<b>* 이름</b>
										<input type="text" class="form-control">
									</div>
									<br>
									<div class="user_info_write"> 
										<b>* 성별</b>&nbsp;&nbsp;
										<input type="radio" value="man">&nbsp;남성&nbsp;&nbsp;
										<input type="radio" value="woman">&nbsp;여자
									</div>
									<br>
									<div class="user_info_write">
										<b>* 생년월일</b>&nbsp;&nbsp;&nbsp;&nbsp;
									</div>
									<br>
									<div class="user_info_write">
										<b>* 주소</b>
										<input type="text" class="form-control">
										<input type="button" class="btn btn-warning" value="주소 검색"  style="float: right;"/>
									</div>
									<div class="user_bt">
										<input type="submit" class="btn btn-success" value="변경완료">
									</div>
									</form>
								</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	 <%@ include file="WEB-INF/inc/footer.jsp" %>
		
		
  </body>
  </html>