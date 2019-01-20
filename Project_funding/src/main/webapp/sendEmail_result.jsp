<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="resources/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Material Kit by Creative Tim</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
<!--		 Fonts and icons		 -->
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!-- CSS Files -->
<link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="resources/assets/demo/demo.css" rel="stylesheet" />
<!-- fontawesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body class="index-page sidebar-collapse">

<%@ include file="WEB-INF/inc/topbar.jsp" %>

	<div class="main main-raised">
		<div class="section section-basic">
			<div class="container">
				<div class="row row-offcanvas row-offcanvas-right">
					<h2><strong>회원 가입 - 인증 메일 전송 완료</strong></h2>
					<div class="container" style="text-align: center;">
						<br><br><br>
						<img alt="EmailSendIcon" src="resources/assets/img/sendEmailIcon2.png" style="width: 150px;height: 150px;">
						<br><br><br>
						<p>회원가입 인증 메일이 전송되었습니다.</p>
						<p><strong>${userdto.user_email }</strong>으로 인증 메일을 완료하여 주십시오.</p>
						<p>이메일이 전송되지 않았다면 관리자에게 문의 해주시기 바랍니다.</p>
						
					</div>
				</div>
			</div>
		</div>
	</div>
		
<%@ include file="WEB-INF/inc/footer.jsp" %>
		
</body>
</html>