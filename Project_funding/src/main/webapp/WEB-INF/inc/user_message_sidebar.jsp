<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link href="resources/assets/css/pw_change.css" rel="stylesheet">
</head>
<body>

	<div class="col-md-3" id="sidebar">
		<b>${userdto.user_type }</b>&nbsp;&nbsp; <a href="user_infoUpdate.do"><b>기본정보 수정하기</b></a>
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

			<a class="btn btn-link2 active" href="user_notereceive.do">받은 쪽지함</a> 
			<a class="btn btn-link2 active" href="user_notesend.do">보낸 쪽지함</a> 
		</div>

	</div>


</body>
</html>