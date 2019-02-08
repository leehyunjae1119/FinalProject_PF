<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link href="resources/assets/css/pw_change.css" rel="stylesheet">
 <script src="http://code.jquery.com/jquery-1.11.3.min.js" type="text/javascript" charset="utf-8"></script>

 <!-- 
 <script type="text/javascript">
 $(function(){
	  var sBtn = $("#clickevent");    //  ul > li 이를 sBtn으로 칭한다. (클릭이벤트는 li에 적용 된다.)
	  sBtn.click(function(){   // sBtn에 속해 있는  a 찾아 클릭 하면.
	   sBtn.removeClass("active");     // sBtn 속에 (active) 클래스를 삭제 한다.
	   $(this).addClass("active"); // 클릭한 a에 (active)클래스를 넣는다.
	  })
 })
</script>

<style type="text/css">
a.active{

	background-color:#ccc;
	color:white;
}
</style>
 

 <script>
	 $(function(){
	  var sBtn = $("div");    //  ul > li 이를 sBtn으로 칭한다. (클릭이벤트는 li에 적용 된다.)
	  sBtn.find("a").click(function(){   // sBtn에 속해 있는  a 찾아 클릭 하면.
	   sBtn.removeClass("active");     // sBtn 속에 (active) 클래스를 삭제 한다.
	   $(this).parent().addClass("active"); // 클릭한 a에 (active)클래스를 넣는다.
	  })
	 })
</script>
-->
</head>
<body>

	<div class="col-md-3" id="sidebar">
		<b>투자자</b>&nbsp;&nbsp; <a href="user_infoUpdate.do"><b>기본정보 수정하기</b></a>
		<hr>
		<div class="user_info">
			<c:choose>
				<c:when test="${userdto.user_img eq null}">
					<img src="resources/assets/img/남자.png" class="user_img rounded-circle img-fluid" />
				</c:when>
				<c:otherwise>
					<img src="http://localhost:8787/pf/storage/${userdto.user_img }" class="user_img rounded-circle img-fluid" />
				</c:otherwise>
			</c:choose>
			<div class="user_info">
				<p>${userdto.user_id }</p>
				<p>${userdto.user_email }</p>
			</div>
		</div>
		<hr>
		<div class="col-md-12">
			<a id="clickevent" class="btn btn-link2 active" href="user_coin.do">코인 조회/결제</a> 
			<a id="clickevent" class="btn btn-link2" href="user_delete.do">회원탈퇴</a>
		</div>

	</div>


</body>
</html>