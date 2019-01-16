<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Puding</title>
<%@ include file="WEB-INF/inc/topbar.jsp" %>
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
					<select name="category" style="font-size: 13px;">
						<option value="" selected>카테고리</option>
  						<option value="web">웹</option>
  						<option value="app">어플리케이션</option>
  						<option value="software">일반 소프트웨어</option>
  						<option value="game">게임</option>
  						<option value="embedded">임베디드</option>
  						<option value="publishing">퍼블리싱</option>
  						<option value="other">기타</option>
					</select>
				</div>
				<div class="form-group has-default" id="form_subject">
            	   	<input type="text" class="form-control" placeholder="제목을 입력해주세요.">
          		</div>
            
           		<div class="money_container">
					<div class="money">
						<img src="resources/assets/img/money.png" style="width: 20px;" />
					</div>
					<div class="money_input">
						<p class="text-muted">예상금액</p>
					</div>
					<div class="form-group" id="form2">
						<input type="text" class="form-control" id="control">
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
						<input type="text" class="form-control" id="control">
					</div>
					<p class="text-muted" id="day">일</p>
				</div>
				<div class="project_content2">
					<div class="title">
						<h5><b>프로젝트 내용</b></h5>
					</div>
					<textarea rows="15" cols="121"></textarea>
				</div>
				<div class="file_content">
					<div class="title">
						<h5><b>파일 첨부</b></h5>
					</div>
					
				</div>
				<div class="start_container">
					<div class="start_input">
						<p class="text-muted">프로젝트 예상 시작일</p>
					</div>
					<div class="start_select">
						<input type="text" class="form-control" id="control">
					</div>
					<p class="text-muted" id="day">일</p>
				</div>
				<div class="start_container">
					<div class="start_input">
						<p class="text-muted">모집 마감 일자</p>
					</div>
					<div class="start_select" style="padding-left: 60px;">
						<input type="text" class="form-control" id="control">
					</div>
					<p class="text-muted" id="day">일</p>
				</div>
				<div class="num_people">
					<div class="num_title">
						<p class="text-muted">모집 인원</p>
					</div>
					<div class="people">
						<select name="number_of_people" style="font-size: 13px;">
							<option value="one" selected>1명</option>
  							<option value="two">2명</option>
  							<option value="three">3명</option>
  							<option value="four">4명</option>
  							<option value="five">5명</option>
  							<option value="six">6명</option>
						</select>
					</div>				
				</div>
				
				<div class="project_insert_type">
					<h5 style="text-align: center; margin-top: 50px; margin-bottom: 20px;"><b>프로젝트 등록 유형</b></h5>
					<div class="col-md-2" id="col2">
						<img src="resources/assets/img/K-024.png" />
							<div class="form-check" style="padding-top: 20px; margin-bottom: 50px; text-align: center;">
                				<label class="form-check-label">
                 				 <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1">
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
                 				 <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1">
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
                 				 <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1">
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
			<button class="btn btn-success" style="width: 150px;">등록</button>
		</div>
	</div>
</div>
</div>

<%@ include file="WEB-INF/inc/footer.jsp" %>
</body>
</html>