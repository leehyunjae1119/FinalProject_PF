<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link href="resources/assets/css/pw_change.css" rel="stylesheet">
</head>
<body>

	<div class="col-md-3" id="sidebar">
		<b>클라이언트</b>&nbsp;&nbsp; <a href="user_infoUpdate.do"><b>기본정보 수정하기</b></a>
		<hr>
		<div class="user_info">
			<img src="resources/assets/img/Teemo.png"
				class="user_img rounded-circle img-fluid" />
			<div class="user_info">
				<p>${userdto.user_id }</p>
				<p>${userdto.user_email }</p>
			</div>
		</div>
		<hr>
		<div class="col-md-12">
			<a class="btn btn-link2 active" href="#">기본정보수정</a> 
			<a class="btn btn-link2" href="#">비밀번호변경</a> 
			<a class="btn btn-link2" href="#">계정 유형 변경 신청</a><br /> 
			<a class="btn btn-link2" href="#">회원탈퇴</a>
		</div>

	</div>


</body>
</html>