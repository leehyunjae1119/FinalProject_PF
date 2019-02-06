<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html;charset=UTF-8"); %>

<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Puding</title>
 <%@ include file="WEB-INF/inc/client_topbar.jsp" %>
<link href="resources/assets/css/project_insert.css" rel="stylesheet" />
<link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="resources/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>
 	 Puding
 	 </title>
 	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  	<!--     Fonts and icons     -->
  	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
 	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
 	 <!-- CSS Files -->
 	 <link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
  	<!-- CSS Just for demo purpose, don't include it in your project -->
  	<link href="resources/assets/demo/demo.css" rel="stylesheet" />

</head>

<body>
<div class="main main-raised">
<div class="insert_container">
	<div class="col-md-1" id="col1">
	</div>
	<div class="col-md-10" id="col10">
		<form action="insert.do?user_no=${userdto.user_no }" method="post">
		<input type='hidden' name="user_no" value="${userdto.getUser_no()}" />
		<div class="container_title">
		<h3><span class="tim-note"><b>프로젝트 등록</b></span></h3>
 		<div class="project_insert">
 			<img src="resources/assets/img/K-023.png" style="width: 50px;"/> 
 		</div> 
			<p class="text-muted" style="font-size: 13px;">
			진행하고 싶은 프로젝트를 등록해주세요.
			</p>
		</div>
		<div class="container_content">
			<div class="project_content">
				<div class="project_title">
					<h5><b>프로젝트 제목</b></h5>
				</div>
				<div class="select_category">
					<select name="project_category" style="font-size: 13px;">
						<option value="" selected>카테고리</option>
  						<option value="웹">웹</option>
  						<option value="어플리케이션">어플리케이션</option>
  						<option value="일반 소프트웨어">일반 소프트웨어</option>
  						<option value="게임">게임</option>
  						<option value="임베디드">임베디드</option>
  						<option value="퍼블리싱">퍼블리싱</option>
  						<option value="기타">기타</option>
					</select>
				</div>
				<div class="form-group has-default" id="form_subject">
            	   	<input type="text" class="form-control" placeholder="제목을 입력해주세요." name="board_title">
          		</div>
            
           		<div class="money_container">
					<div class="money">
						<img src="resources/assets/img/money.png" style="width: 20px;" />
					</div>
					<div class="money_input">
						<p class="text-muted">예상금액</p>
					</div>
					<div class="form-group" id="form2">
						<input type="text" class="form-control" id="control" name="project_money" placeholder="1,000,000">
					</div>
					<p class="text-muted" id="won">원</p>
				</div>
				<div class="time_container">
					<div class="time">
						<img src="resources/assets/img/time.png" style="width: 20px;" />
					</div>
					<div class="time_input">
						<p class="text-muted">예상기간</p>
					</div>
					<div class="form-group" id="form2">
						<input type="text" class="form-control" id="control" name="project_term" placeholder="30" >
					</div>
					<p class="text-muted" id="day">일</p>
				</div>
				<div class="project_content2">
					<div class="title">
						<h5><b>프로젝트 내용</b></h5>
					</div>
					<pre>
					<textarea rows="15" cols="121" name="board_content"></textarea></pre>
				</div>
				<div class="file_content">
					<br/>
					<input type="text" id="board_file" name="board_file" hidden="" />
					<br/>
				</div>
				<div class="start_container">
					<div class="start_input">
						<p class="text-muted">프로젝트 예상 시작일</p>
					</div>
					<div class="start_select">
						<input type="text" class="form-control" id="control" name="project_start_day" placeholder="2019-02-01">
					</div>
					<p class="text-muted" id="day">일</p>
				</div>
				<div class="start_container">
					<div class="start_input">
						<p class="text-muted">모집 마감 일자</p>
					</div>
					<div class="start_select" style="padding-left: 60px;">
						<input type="text" class="form-control" id="control" name="recruit_date" placeholder="2019-01-01">
					</div>
					<p class="text-muted" id="day">일</p>
				</div>
				<div class="num_people">
					<div class="num_title">
						<p class="text-muted">모집 인원</p>
					</div>
					<div class="people">
						<select name="recruit_personnel" style="font-size: 13px;">
							<option value="1" selected>1명</option>
  							<option value="2">2명</option>
  							<option value="3">3명</option>
  							<option value="4">4명</option>
  							<option value="5">5명</option>
  							<option value="6">6명</option>
						</select>
					</div>				
				</div>
				
				<div class="project_insert_type">
					<h5 style="text-align: center; margin-top: 50px; margin-bottom: 20px;"><b>프로젝트 등록 유형</b></h5>
					<div class="col-md-2" id="col2">
						<img src="resources/assets/img/K-024.png" />
							<div class="form-check" style="padding-top: 20px; margin-bottom: 50px; text-align: center;">
                				<label class="form-check-label">
                 				 <input class="form-check-input" type="radio" name="project_type" id="exampleRadios1" value="후원">
                 					 <span class="circle">
                  					  <span class="check"></span>
                  					</span>
                				</label>
              				</div>
					</div>
					<div class="col-md-2" id="col2_2">
						<img src="resources/assets/img/K-025.png" />
							<div class="form-check" style="padding-top: 20px; margin-bottom: 50px; text-align: center;">
                				<label class="form-check-label">
                 				 <input class="form-check-input" type="radio" name="project_type" id="exampleRadios1" value="파트너">
                 					 <span class="circle">
                  					  <span class="check"></span>
                  					</span>
                				</label>
              				</div>
					</div>
					<div class="col-md-2" id="col2_3">
						<img src="resources/assets/img/K-026.png" />
							<div class="form-check" style="padding-top: 20px; margin-bottom: 50px; text-align: center;">
                				<label class="form-check-label">
                 				 <input class="form-check-input" type="radio" name="project_type" id="exampleRadios1" value="후파">
                 					 <span class="circle">
                  					  <span class="check"></span>
                  					</span>
                				</label>
              				</div>
					</div>
					<!-- 프로젝트 유형 끝! -->
				</div>
			</div>
		
		</div>
		
		<div class="insert_btn">
			<input type="submit" value="등록" class="btn btn-success" style="width: 150px;" />
		</div>
		</form>
		<div style="position:relative; bottom:630px; left:25px;">
         	<form id="fileUploadForm" action="fileUpload.do" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
                 <input type="file" id="fileUpload" name="fileUpload"/>
               <input type="button" class="btn btn-success" value="업로드" onClick="fileSubmit();">
                &nbsp;&nbsp;
           	</form>
        </div>
	</div>
</div>
</div>

<script>
	    function fileSubmit() {
	        var formData = new FormData($("#fileUploadForm")[0]);
	        $.ajax({
	            type : 'post',
	            url : 'fileUpload.do',
	            data : formData,
	            processData : false,
	            contentType : false,
	            success : function(html) {
	                alert("파일 업로드하였습니다.");
	                document.getElementById("board_file").value=html;
	               // alert(document.getElementById("board_file").value);
	            },
	            error : function(error) {
	                alert("포트폴리오 업로드에 실패하였습니다.");
	                console.log(error);
	                console.log(error.status);
	            }
	        });
	    }	
</script>
<%@ include file="WEB-INF/inc/footer.jsp" %>
</body>

</html>