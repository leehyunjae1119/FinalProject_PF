<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div class="container">
			<p>${userdto.user_email }</p>
			<p>${userdto.user_id }</p>
			<p>${userdto.user_pw }</p>
			<p>${userdto.user_type }</p>
			<form action="sendEmail.do" method="post">	
				<input type="hidden" name="user_email" value="${userdto.user_email }">
				<input type="submit" value="인증하기">
			</form>
		</div>
</body>
</html>