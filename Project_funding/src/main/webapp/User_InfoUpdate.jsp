<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
 <c:if test="${userdto.getUser_type() eq '파트너스' }">
<%@ include file="WEB-INF/inc/Partners_topbar.jsp" %></c:if>
 
 <c:if test="${userdto.getUser_type() eq '클라이언트' }">
<%@ include file="WEB-INF/inc/client_topbar.jsp" %></c:if>
 
 <c:if test="${userdto.getUser_type() eq '투자자' }">
<%@ include file="WEB-INF/inc/investor_topbar.jsp" %></c:if>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="resources/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>
 	회원정보수정
</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
<!-- Fonts and icons -->
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
<link href="resources/assets/css/User_InfoUpdate.css" rel="stylesheet">


<!-- 다음도로명주소사용시 필요 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script charset="UTF-8" type="text/javascript"
	src="http://t1.daumcdn.net/postcode/api/core/180928/1538455030985/180928.js"></script>
<script>
	function roadaddr() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
				var extraRoadAddr = ''; // 도로명 조합형 주소 변수

				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
					extraRoadAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraRoadAddr += (extraRoadAddr !== '' ? ', '
							+ data.buildingName : data.buildingName);
				}
				// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraRoadAddr !== '') {
					extraRoadAddr = ' (' + extraRoadAddr + ')';
				}
				// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
				if (fullRoadAddr !== '') {
					fullRoadAddr += extraRoadAddr;
				}

				// 도로명 주소 값 얻어오기
				document.getElementById('roadAddress').value = fullRoadAddr;

			}
		}).open();

	}
</script>
</head>

<body class="index-page sidebar-collapse">
	<div class="main main-raised">
		<div class="section section-basic">
			<div class="container">
			<div class="row">
				<c:if test="${userdto.getUser_type() eq '파트너스' }">
				<%@ include file="WEB-INF/inc/partners_sidebar.jsp" %></c:if>
				 
				<c:if test="${userdto.getUser_type() eq '클라이언트' }">
				<%@ include file="WEB-INF/inc/client_sidebar.jsp" %></c:if>
				 
				<c:if test="${userdto.getUser_type() eq '투자자' }">
				<%@ include file="WEB-INF/inc/investor_sidebar.jsp" %></c:if>
				<!-- 왼쪽 사이드 바 div -->
				<div class="col" style="margin-top: -30px;">
				<div class="col col-md-15">
					<h3><b>회원정보수정</b></h3>
					<p class="text-muted" style="font-size: 13px;">회원정보를 수정할 수 있습니다.</p>
				</div>
				<br>
						<div class="col col-md-15">
								<h3>
									<b>계정 정보</b>
								</h3>
								<div class="user_idemail">
									<b>아이디</b>&nbsp;&nbsp;&nbsp; <p class="text-muted">${userdto.user_id }</p><br>
									<b>이메일</b>&nbsp;&nbsp;&nbsp; <p class="text-muted">${userdto.user_email }</p>
								</div>
								<hr>
								<div class="user_info_up">
									<h3>
										<b>기본 정보</b>
									</h3>
									<br>
										
									<form id="imageUploadForm" action="imageUpload.do" method="post" enctype="multipart/form-data">
										<div class="user_info_write" id="profile_img">
											<b>프로필 사진</b>
											<input type="file" id="fileUpload" name="fileUpload" class="form-control" >
											<input type="button" class="btn btn-warning"onClick="fileSubmit();" value="업로드" style="float: right;"/>
										</div>
									</form>
									<br>
									<form action="user_infoUpdateAction.do">
									<div class="imageupload">
										<input type="text" id="user_img" name="user_img" hidden="" placeholder="${userdto.user_img }"/>
									</div>
									<div class="user_info_write">
										<b>* 이름</b>
										<input name="user_name" placeholder="${userdto.user_name }" type="text" class="form-control">
									</div>
									<br>
									<div class="user_info_write">
										<b>* 성별</b>&nbsp;&nbsp;</br></br>
										<div class="form-check">
											<label class="form-check-label">
												<input class="form-check-input" type="radio" name="user_sex" id="exampleRadios2" value="man" checked> 남자
												<span class="circle">
													<span class="check"></span>
												</span>
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label">
												<input class="form-check-input" type="radio" name="user_sex" id="exampleRadios1" value="woman"> 여자
												<span class="circle">
 													<span class="check"></span>
												</span>
 											</label>
 										</div>
									</div>
									<br>
									<div class="user_info_write">
										<b>* 생년월일</b>
										<input name="user_birth" placeholder="${userdto.user_birth }" type="text" class="form-control">
									</div>
									<br>
									<div class="user_info_write">
										<b>* 주소</b>
										<a onclick="roadaddr()">
											<input name="user_addr" placeholder="${userdto.user_addr }" type="text" class="form-control" id="roadAddress" readonly="readonly" style="background-color: white;">
										</a>
<!-- 										<input type="button" class="btn btn-warning" value="주소 검색" style="float: right;" onclick="roadaddr()"/> -->
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
	
	<script>
	function fileSubmit() {
	var formData = new FormData($("#imageUploadForm")[0]);
	$.ajax({
	type : 'post',
	url : 'imageUpload.do',
	data : formData,
	processData : false,
	contentType : false,
	success : function(html) {
	alert("사진을 업로드하였습니다.");
	document.getElementById("user_img").value=html;
	//alert(document.getElementById("user_img").value);
	 			 },
	error : function(error) {
	alert("사진 업로드에 실패하였습니다.");
	console.log(error);
	console.log(error.status);
	}
	});
	}
	</script>
	
	
	<%@ include file="WEB-INF/inc/footer.jsp" %>
		
		
</body>
</html>