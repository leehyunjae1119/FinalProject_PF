<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@ include file="WEB-INF/inc/client_topbar.jsp" %>
  <meta charset="utf-8" />
  
  <link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="resources/assets/img/favicon.png">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
	쪽지함
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

  <link href="resources/assets/css/Project_RecruitmentList.css" rel="stylesheet">
</head>

<body class="index-page sidebar-collapse">
	<div class="main main-raised">
		<div class="section section-basic">
			<div class="container">
			<div class="row">
				<%@ include file="WEB-INF/inc/user_message_sidebar.jsp" %>
				<!-- 왼쪽 사이드 바 div -->
				<div class="col" style="margin-top: -30px;">
				<div class="col col-md-15" id="apply">
					<h3><b>보낸 쪽지함</b></h3>
					<p class="text-muted">보낸 쪽지를 확인할 수 있습니다.</p>
				</div>
				<br>
					<div class="col col-md-15">
						<table class="table table-striped"  style="text-align: center;">
							<tr>
								<th>번호</th>
								<th>내용</th>
								<th>보낸사람</th>
								<th>날짜</th>
							</tr>
							
							<tr>
								<td>1</td>
								<td>프로젝트를 잘 마무리 할 수 있을까......................</td>
								<td>user1</td>
								<td>2019.01.20</td>
								
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	 <%@ include file="WEB-INF/inc/footer.jsp" %>
  </body>
  </html>