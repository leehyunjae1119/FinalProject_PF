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
  <link href="resources/assets/css/user_role01.css" rel="stylesheet">
  
  
</head>

<body class="index-page sidebar-collapse">
	<div class="main main-raised">
		<div class="section section-basic">
			<div class="container">
			<div class="row">
				<%@ include file="WEB-INF/inc/sidebar.jsp" %>
				<!-- 왼쪽 사이드 바 div -->
				<div class="col" style="margin-top: -30px;">
				<div class="col col-md-15">
					<h3><b>계정 유형 변경 신청</b></h3>
					<p class="text-muted" style="font-size: 13px;">계정의 유형을 변경할 수 있습니다.</p>
				</div>
				<br>
						<div class="col col-md-15" id="col15">
							<form action="#">
								<h4><b>유형변경</b></h4>
								<select title="user_type" class="form-control" id="select_type">
									<option>=== 유형을 선택해 주세요 ===</option>
									<option>개인</option>
									<option>클라이언트</option>
									<option>투자자</option>
								</select>
							</form>
						</div>
							<div class="user_bt">
								<input type="submit" class="btn btn-success" value="변경하기">
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="WEB-INF/inc/footer.jsp" %>
		
		
  </body>
  </html>