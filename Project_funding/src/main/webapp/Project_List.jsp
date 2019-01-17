<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Puding</title>

<c:if test="${userdto eq null }"> 
 <%@ include file="WEB-INF/inc/topbar.jsp" %>
 </c:if>
 
 <c:if test="${userdto.getUser_type() eq '파트너스' }">
  <%@ include file="WEB-INF/inc/Partners_topbar.jsp" %></c:if>
   
 <c:if test="${userdto.getUser_type() eq '클라이언트' }">
  <%@ include file="WEB-INF/inc/client_topbar.jsp" %></c:if>
   
 <c:if test="${userdto.getUser_type() eq '투자자' }">
  <%@ include file="WEB-INF/inc/investor_topbar.jsp" %></c:if>
  
<link href="resources/assets/css/project_list.css" rel="stylesheet" />
<link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="resources/assets/img/favicon.png">

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
<div class="list_container">
	<div class="row">
	<div class="col-md-12" style="height: 170px;">
		<div class="container_title">
		<h3><span class="tim-note"><b>프로젝트 찾기</b></span></h3>
 		<div class="project_list">
 			<form class="form-inline ml-auto">
                  <div class="form-group has-white">
                    <input type="text" class="form-control" placeholder="Search">
                  </div>
                  <button type="submit" class="btn btn-white btn-raised btn-fab btn-round">
                    <i class="material-icons" style="background-color: black;">search</i>
                  </button>
            </form>
 		</div> 
			<p class="text-muted">
			15,846개의 프로젝트가 있습니다.
			</p>
		</div>
	</div>
	
		<div class="col-md-2" id="list_col">
			<div class="list_container2">
				<div class="project_array">
					<p class="text-muted" style="font-size: 15px;"><b>프로젝트 정렬</b></p>
				</div>
				<div class="project_array_2">
					<a href="#">금액 높은 순</a><br />
					<a href="#">최신 등록 순</a><br />
					<a href="#">마감 등록 순</a><br />
				</div>
			
			<div class="project_category">
				<div class="project_cate_title">
					<p class="text-muted" style="font-size: 15px;"><b>프로젝트 카테고리</b></p>
				</div>
				<div class="project_cate">
					<div class="form-check">
               		 	<label class="form-check-label">
                 		 <input class="form-check-input" type="checkbox" value="">
                 		 	<p class="text-muted" style="font-size: 12px;">개발</p>
                 		 <span class="form-check-sign">
                	 	   <span class="check"></span>
                		  </span>
                		</label>
             		</div>
             		<div class="project_cate2">
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">웹</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">어플리케이션</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">일반 소프트웨어</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">게임</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">임베디드</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">퍼블리싱</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">기타</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             		</div>
				</div>
				<div class="project_cate">
					<div class="form-check">
               		 	<label class="form-check-label">
                 		 <input class="form-check-input" type="checkbox" value="">
                 		 	<p class="text-muted" style="font-size: 12px;">금액</p>
                 		 <span class="form-check-sign">
                	 	   <span class="check"></span>
                		  </span>
                		</label>
             		</div>
             		<div class="project_cate2">
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">100만원 이하</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">500만원 이하</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">1000만원 이하</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">5000만원 이하</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">1억 이하</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			<div class="form-check">
               		 		<label class="form-check-label">
                 			 <input class="form-check-input" type="checkbox" value="">
                 			 	<p class="text-muted" style="font-size: 12px;">10억 이하</p>
                 			 <span class="form-check-sign">
                	 		   <span class="check"></span>
                			  </span>
                			</label>
             			</div>
             			
             		</div>
				</div>
				
				<div class="meeting_title">
					<div class="meeting_area_title">
						<p class="text-muted" style="font-size: 13px;"><b>미팅 진행지역</b></p>
					</div>
					<div class="select_area">
						<select name="category" style="font-size: 13px;">
							<option value="" selected>전체 지역</option>
  							<option value="web">서울특별시</option>
  							<option value="app">경기도</option>
  							<option value="software">인천 광역시</option>
  							<option value="game">부산 광역시</option>
  							<option value="embedded">부산 광역시</option>
  							<option value="publishing">대구 광역시</option>
  							<option value="other">광주 광역시</option>
  							<option value="other">대전 광역시</option>
  							<option value="other">울산 광역시</option>
  							<option value="other">세종 특별자치시</option>
  							<option value="other">강원도</option>
  							<option value="other">충청도</option>
  							<option value="other">전라도</option>
  							<option value="other">경상도</option>
  							<option value="other">제주 특별자치도</option>
						</select>
					</div>
					<div class="search_button">
						<button class="btn" style="width: 200px; height: 40px;">검색</button>
					</div>
				</div>
				<!-- 미팅 지역 끝! -->
				
			</div>
			</div>
		</div>
		<!-- 카테고리 별 검색 끝! -->
		<!-- col-md-2 끝! -->
		<div class="col-md-8" id="col8">
			<div class="project_content_form">
				<h5><b><a href="#">제공되는 참고 소스 기반 BLE 데이터 연동!</a></b></h5>
					<div class="project_title2">
       					<div class="project_money">
       						<img src="resources/assets/img/money.png" />
       						<p class="text-muted"><b>예상 금액</b>&nbsp;&nbsp;&nbsp;<b>200,000원</b></p>
       					</div>
       					<div class="project_time">
       						<img src="resources/assets/img/time.png" />	
       						<p class="text-muted"><b>예상 시간</b>&nbsp;&nbsp;&nbsp;<b>180일</b></p>
       					</div>
       					<div class="project_support">
       						<p class="text-muted"><b>등록 일자</b>&nbsp;&nbsp;&nbsp;<b>2019.01.01</b></p>
       					</div>
       				</div>
					<div class="c_detail">
						<div class="project_content_detail">
       						<p class="text-muted" id="detail">
       					자사 사무실에서 상주하여 근무가 가능한 풀 스택 개발자 1분을 모집하고 있습니다.
						- 근무 방식 : 주 5일 또는 3일 출근(상주 / 협의 후 결정합니다. )
						- 프로젝트 대금 지급 : 월 단위 지급

						모집 인원 : 1명
						- 3년 차 이상 : 1명 (월 500만 원)
						경력/이력 등 관련 경험에 따라 최종 계약 금액은 변경될 수 있습니다.


						1) 근무 위치 : 서울특별시 서초구 강남대로 69길 8(신논현 역 교보타워 인근)
						2) 근무 시간 : 오전 9시 ~ 오후 6시 또는 오전 10시 ~ 오후 7시( 휴게시간 12시 ~ 1시 또는 1시 ~ 2시 )
						3) 근무 일정 : 1개월 이상 근무를 요청드립니다. ( 1개월 계약 후 연장 요청드릴 예정입니다. )
						출근 예정일 : 협의 후 결정할 예정입니다.
						4) 식사 지원 : 중식 제공합니다.
						5) 장비 지참 : 개인 장비 지참 부탁드립니다.
						6) 협업 예정자 : 소스코드 제공 및 인수인계 가능한 개발자분이 있습니다.

						정부지원을 받아 진행되는 프로젝트로 아래 조건이 가능한 파트너와 계약이 가능합니다.
       						</p>
       					
       					</div>
       					<div class="end_date">
       						<img src="resources/assets/img/K-021.png" />
       						<p class="text-muted"><b>마감 1주일 4일 전</b></p>
       						<br />
       						<img src="resources/assets/img/support.png" />
       						<p class="text-muted"><b>총 78명 지원</b></p>
       					</div>
       				</div>
				</div>
				<div class="project_content_form">
				<h5><b><a href="#">제공되는 참고 소스 기반 BLE 데이터 연동!</a></b></h5>
					<div class="project_title2">
       					<div class="project_money">
       						<img src="resources/assets/img/money.png" />
       						<p class="text-muted"><b>예상 금액</b>&nbsp;&nbsp;&nbsp;<b>200,000원</b></p>
       					</div>
       					<div class="project_time">
       						<img src="resources/assets/img/time.png" />	
       						<p class="text-muted"><b>예상 시간</b>&nbsp;&nbsp;&nbsp;<b>180일</b></p>
       					</div>
       					<div class="project_support">
       						<p class="text-muted"><b>등록 일자</b>&nbsp;&nbsp;&nbsp;<b>2019.01.01</b></p>
       					</div>
       				</div>
					<div class="c_detail">
						<div class="project_content_detail">
       						<p class="text-muted" id="detail">
       					자사 사무실에서 상주하여 근무가 가능한 풀 스택 개발자 1분을 모집하고 있습니다.
						- 근무 방식 : 주 5일 또는 3일 출근(상주 / 협의 후 결정합니다. )
						- 프로젝트 대금 지급 : 월 단위 지급

						모집 인원 : 1명
						- 3년 차 이상 : 1명 (월 500만 원)
						경력/이력 등 관련 경험에 따라 최종 계약 금액은 변경될 수 있습니다.


						1) 근무 위치 : 서울특별시 서초구 강남대로 69길 8(신논현 역 교보타워 인근)
						2) 근무 시간 : 오전 9시 ~ 오후 6시 또는 오전 10시 ~ 오후 7시( 휴게시간 12시 ~ 1시 또는 1시 ~ 2시 )
						3) 근무 일정 : 1개월 이상 근무를 요청드립니다. ( 1개월 계약 후 연장 요청드릴 예정입니다. )
						출근 예정일 : 협의 후 결정할 예정입니다.
						4) 식사 지원 : 중식 제공합니다.
						5) 장비 지참 : 개인 장비 지참 부탁드립니다.
						6) 협업 예정자 : 소스코드 제공 및 인수인계 가능한 개발자분이 있습니다.

						정부지원을 받아 진행되는 프로젝트로 아래 조건이 가능한 파트너와 계약이 가능합니다.
       						</p>
       					
       					</div>
       					<div class="end_date">
       						<img src="resources/assets/img/K-021.png" />
       						<p class="text-muted"><b>마감 1주일 4일 전</b></p>
       						<br />
       						<img src="resources/assets/img/support.png" />
       						<p class="text-muted"><b>총 78명 지원</b></p>
       					</div>
       				</div>
				</div>
				<div class="project_content_form">
				<h5><b><a href="#">제공되는 참고 소스 기반 BLE 데이터 연동!</a></b></h5>
					<div class="project_title2">
       					<div class="project_money">
       						<img src="resources/assets/img/money.png" />
       						<p class="text-muted">예상 금액&nbsp;&nbsp;&nbsp;200,000원</p>
       					</div>
       					<div class="project_time">
       						<img src="resources/assets/img/time.png" />	
       						<p class="text-muted">예상 시간&nbsp;&nbsp;&nbsp;180일</p>
       					</div>
       					<div class="project_support">
       						<p class="text-muted">등록 일자&nbsp;&nbsp;&nbsp;2019.01.01</p>
       					</div>
       				</div>
					<div class="c_detail">
						<div class="project_content_detail">
       						<p class="text-muted" id="detail">
       					자사 사무실에서 상주하여 근무가 가능한 풀 스택 개발자 1분을 모집하고 있습니다.
						- 근무 방식 : 주 5일 또는 3일 출근(상주 / 협의 후 결정합니다. )
						- 프로젝트 대금 지급 : 월 단위 지급

						모집 인원 : 1명
						- 3년 차 이상 : 1명 (월 500만 원)
						경력/이력 등 관련 경험에 따라 최종 계약 금액은 변경될 수 있습니다.


						1) 근무 위치 : 서울특별시 서초구 강남대로 69길 8(신논현 역 교보타워 인근)
						2) 근무 시간 : 오전 9시 ~ 오후 6시 또는 오전 10시 ~ 오후 7시( 휴게시간 12시 ~ 1시 또는 1시 ~ 2시 )
						3) 근무 일정 : 1개월 이상 근무를 요청드립니다. ( 1개월 계약 후 연장 요청드릴 예정입니다. )
						출근 예정일 : 협의 후 결정할 예정입니다.
						4) 식사 지원 : 중식 제공합니다.
						5) 장비 지참 : 개인 장비 지참 부탁드립니다.
						6) 협업 예정자 : 소스코드 제공 및 인수인계 가능한 개발자분이 있습니다.

						정부지원을 받아 진행되는 프로젝트로 아래 조건이 가능한 파트너와 계약이 가능합니다.
       						</p>
       					
       					</div>
       					<div class="end_date">
       						<img src="resources/assets/img/K-021.png" />
       						<p class="text-muted">마감 1주일 4일 전</p>
       						<br />
       						<img src="resources/assets/img/support.png" />
       						<p class="text-muted">총 78명 지원</p>
       					</div>
       				</div>
				</div>
				<div class="project_content_form">
				<h5><b><a href="#">제공되는 참고 소스 기반 BLE 데이터 연동!</a></b></h5>
					<div class="project_title2">
       					<div class="project_money">
       						<img src="resources/assets/img/money.png" />
       						<p class="text-muted">예상 금액&nbsp;&nbsp;&nbsp;200,000원</p>
       					</div>
       					<div class="project_time">
       						<img src="resources/assets/img/time.png" />	
       						<p class="text-muted">예상 시간&nbsp;&nbsp;&nbsp;180일</p>
       					</div>
       					<div class="project_support">
       						<p class="text-muted">등록 일자&nbsp;&nbsp;&nbsp;2019.01.01</p>
       					</div>
       				</div>
					<div class="c_detail">
						<div class="project_content_detail">
       						<p class="text-muted" id="detail">
       					자사 사무실에서 상주하여 근무가 가능한 풀 스택 개발자 1분을 모집하고 있습니다.
						- 근무 방식 : 주 5일 또는 3일 출근(상주 / 협의 후 결정합니다. )
						- 프로젝트 대금 지급 : 월 단위 지급

						모집 인원 : 1명
						- 3년 차 이상 : 1명 (월 500만 원)
						경력/이력 등 관련 경험에 따라 최종 계약 금액은 변경될 수 있습니다.


						1) 근무 위치 : 서울특별시 서초구 강남대로 69길 8(신논현 역 교보타워 인근)
						2) 근무 시간 : 오전 9시 ~ 오후 6시 또는 오전 10시 ~ 오후 7시( 휴게시간 12시 ~ 1시 또는 1시 ~ 2시 )
						3) 근무 일정 : 1개월 이상 근무를 요청드립니다. ( 1개월 계약 후 연장 요청드릴 예정입니다. )
						출근 예정일 : 협의 후 결정할 예정입니다.
						4) 식사 지원 : 중식 제공합니다.
						5) 장비 지참 : 개인 장비 지참 부탁드립니다.
						6) 협업 예정자 : 소스코드 제공 및 인수인계 가능한 개발자분이 있습니다.

						정부지원을 받아 진행되는 프로젝트로 아래 조건이 가능한 파트너와 계약이 가능합니다.
       						</p>
       					
       					</div>
       					<div class="end_date">
       						<img src="resources/assets/img/K-021.png" />
       						<p class="text-muted">마감 1주일 4일 전</p>
       						<br />
       						<img src="resources/assets/img/support.png" />
       						<p class="text-muted">총 78명 지원</p>
       					</div>
       				</div>
				</div>
				<div class="project_content_form">
				<h5><b><a href="#">제공되는 참고 소스 기반 BLE 데이터 연동!</a></b></h5>
					<div class="project_title2">
       					<div class="project_money">
       						<img src="resources/assets/img/money.png" />
       						<p class="text-muted">예상 금액&nbsp;&nbsp;&nbsp;200,000원</p>
       					</div>
       					<div class="project_time">
       						<img src="resources/assets/img/time.png" />	
       						<p class="text-muted">예상 시간&nbsp;&nbsp;&nbsp;180일</p>
       					</div>
       					<div class="project_support">
       						<p class="text-muted">등록 일자&nbsp;&nbsp;&nbsp;2019.01.01</p>
       					</div>
       				</div>
					<div class="c_detail">
						<div class="project_content_detail">
       						<p class="text-muted" id="detail">
       					자사 사무실에서 상주하여 근무가 가능한 풀 스택 개발자 1분을 모집하고 있습니다.
						- 근무 방식 : 주 5일 또는 3일 출근(상주 / 협의 후 결정합니다. )
						- 프로젝트 대금 지급 : 월 단위 지급

						모집 인원 : 1명
						- 3년 차 이상 : 1명 (월 500만 원)
						경력/이력 등 관련 경험에 따라 최종 계약 금액은 변경될 수 있습니다.


						1) 근무 위치 : 서울특별시 서초구 강남대로 69길 8(신논현 역 교보타워 인근)
						2) 근무 시간 : 오전 9시 ~ 오후 6시 또는 오전 10시 ~ 오후 7시( 휴게시간 12시 ~ 1시 또는 1시 ~ 2시 )
						3) 근무 일정 : 1개월 이상 근무를 요청드립니다. ( 1개월 계약 후 연장 요청드릴 예정입니다. )
						출근 예정일 : 협의 후 결정할 예정입니다.
						4) 식사 지원 : 중식 제공합니다.
						5) 장비 지참 : 개인 장비 지참 부탁드립니다.
						6) 협업 예정자 : 소스코드 제공 및 인수인계 가능한 개발자분이 있습니다.

						정부지원을 받아 진행되는 프로젝트로 아래 조건이 가능한 파트너와 계약이 가능합니다.
       						</p>
       					
       					</div>
       					<div class="end_date">
       						<img src="resources/assets/img/K-021.png" />
       						<p class="text-muted">마감 1주일 4일 전</p>
       						<br />
       						<img src="resources/assets/img/support.png" />
       						<p class="text-muted">총 78명 지원</p>
       					</div>
       				</div>
				</div>
				<div class="project_content_form">
				<h5><b><a href="#">제공되는 참고 소스 기반 BLE 데이터 연동!</a></b></h5>
					<div class="project_title2">
       					<div class="project_money">
       						<img src="resources/assets/img/money.png" />
       						<p class="text-muted">예상 금액&nbsp;&nbsp;&nbsp;200,000원</p>
       					</div>
       					<div class="project_time">
       						<img src="resources/assets/img/time.png" />	
       						<p class="text-muted">예상 시간&nbsp;&nbsp;&nbsp;180일</p>
       					</div>
       					<div class="project_support">
       						<p class="text-muted">등록 일자&nbsp;&nbsp;&nbsp;2019.01.01</p>
       					</div>
       				</div>
					<div class="c_detail">
						<div class="project_content_detail">
       						<p class="text-muted" id="detail">
       					자사 사무실에서 상주하여 근무가 가능한 풀 스택 개발자 1분을 모집하고 있습니다.
						- 근무 방식 : 주 5일 또는 3일 출근(상주 / 협의 후 결정합니다. )
						- 프로젝트 대금 지급 : 월 단위 지급

						모집 인원 : 1명
						- 3년 차 이상 : 1명 (월 500만 원)
						경력/이력 등 관련 경험에 따라 최종 계약 금액은 변경될 수 있습니다.


						1) 근무 위치 : 서울특별시 서초구 강남대로 69길 8(신논현 역 교보타워 인근)
						2) 근무 시간 : 오전 9시 ~ 오후 6시 또는 오전 10시 ~ 오후 7시( 휴게시간 12시 ~ 1시 또는 1시 ~ 2시 )
						3) 근무 일정 : 1개월 이상 근무를 요청드립니다. ( 1개월 계약 후 연장 요청드릴 예정입니다. )
						출근 예정일 : 협의 후 결정할 예정입니다.
						4) 식사 지원 : 중식 제공합니다.
						5) 장비 지참 : 개인 장비 지참 부탁드립니다.
						6) 협업 예정자 : 소스코드 제공 및 인수인계 가능한 개발자분이 있습니다.

						정부지원을 받아 진행되는 프로젝트로 아래 조건이 가능한 파트너와 계약이 가능합니다.
       						</p>
       					
       					</div>
       					<div class="end_date">
       						<img src="resources/assets/img/K-021.png" />
       						<p class="text-muted">마감 1주일 4일 전</p>
       						<br />
       						<img src="resources/assets/img/support.png" />
       						<p class="text-muted">총 78명 지원</p>
       					</div>
       				</div>
				</div>
				<div class="project_content_form">
				<h5><b><a href="#">제공되는 참고 소스 기반 BLE 데이터 연동!</a></b></h5>
					<div class="project_title2">
       					<div class="project_money">
       						<img src="resources/assets/img/money.png" />
       						<p class="text-muted">예상 금액&nbsp;&nbsp;&nbsp;200,000원</p>
       					</div>
       					<div class="project_time">
       						<img src="resources/assets/img/time.png" />	
       						<p class="text-muted">예상 시간&nbsp;&nbsp;&nbsp;180일</p>
       					</div>
       					<div class="project_support">
       						<p class="text-muted">등록 일자&nbsp;&nbsp;&nbsp;2019.01.01</p>
       					</div>
       				</div>
					<div class="c_detail">
						<div class="project_content_detail">
       						<p class="text-muted" id="detail">
       					자사 사무실에서 상주하여 근무가 가능한 풀 스택 개발자 1분을 모집하고 있습니다.
						- 근무 방식 : 주 5일 또는 3일 출근(상주 / 협의 후 결정합니다. )
						- 프로젝트 대금 지급 : 월 단위 지급

						모집 인원 : 1명
						- 3년 차 이상 : 1명 (월 500만 원)
						경력/이력 등 관련 경험에 따라 최종 계약 금액은 변경될 수 있습니다.


						1) 근무 위치 : 서울특별시 서초구 강남대로 69길 8(신논현 역 교보타워 인근)
						2) 근무 시간 : 오전 9시 ~ 오후 6시 또는 오전 10시 ~ 오후 7시( 휴게시간 12시 ~ 1시 또는 1시 ~ 2시 )
						3) 근무 일정 : 1개월 이상 근무를 요청드립니다. ( 1개월 계약 후 연장 요청드릴 예정입니다. )
						출근 예정일 : 협의 후 결정할 예정입니다.
						4) 식사 지원 : 중식 제공합니다.
						5) 장비 지참 : 개인 장비 지참 부탁드립니다.
						6) 협업 예정자 : 소스코드 제공 및 인수인계 가능한 개발자분이 있습니다.

						정부지원을 받아 진행되는 프로젝트로 아래 조건이 가능한 파트너와 계약이 가능합니다.
       						</p>
       					
       					</div>
       					<div class="end_date">
       						<img src="resources/assets/img/K-021.png" />
       						<p class="text-muted">마감 1주일 4일 전</p>
       						<br />
       						<img src="resources/assets/img/support.png" />
       						<p class="text-muted">총 78명 지원</p>
       					</div>
       				</div>
				</div>
				<div class="project_content_form">
				<h5><b><a href="#">제공되는 참고 소스 기반 BLE 데이터 연동!</a></b></h5>
					<div class="project_title2">
       					<div class="project_money">
       						<img src="resources/assets/img/money.png" />
       						<p class="text-muted">예상 금액&nbsp;&nbsp;&nbsp;200,000원</p>
       					</div>
       					<div class="project_time">
       						<img src="resources/assets/img/time.png" />	
       						<p class="text-muted">예상 시간&nbsp;&nbsp;&nbsp;180일</p>
       					</div>
       					<div class="project_support">
       						<p class="text-muted">등록 일자&nbsp;&nbsp;&nbsp;2019.01.01</p>
       					</div>
       				</div>
					<div class="c_detail">
						<div class="project_content_detail">
       						<p class="text-muted" id="detail">
       					자사 사무실에서 상주하여 근무가 가능한 풀 스택 개발자 1분을 모집하고 있습니다.
						- 근무 방식 : 주 5일 또는 3일 출근(상주 / 협의 후 결정합니다. )
						- 프로젝트 대금 지급 : 월 단위 지급

						모집 인원 : 1명
						- 3년 차 이상 : 1명 (월 500만 원)
						경력/이력 등 관련 경험에 따라 최종 계약 금액은 변경될 수 있습니다.


						1) 근무 위치 : 서울특별시 서초구 강남대로 69길 8(신논현 역 교보타워 인근)
						2) 근무 시간 : 오전 9시 ~ 오후 6시 또는 오전 10시 ~ 오후 7시( 휴게시간 12시 ~ 1시 또는 1시 ~ 2시 )
						3) 근무 일정 : 1개월 이상 근무를 요청드립니다. ( 1개월 계약 후 연장 요청드릴 예정입니다. )
						출근 예정일 : 협의 후 결정할 예정입니다.
						4) 식사 지원 : 중식 제공합니다.
						5) 장비 지참 : 개인 장비 지참 부탁드립니다.
						6) 협업 예정자 : 소스코드 제공 및 인수인계 가능한 개발자분이 있습니다.

						정부지원을 받아 진행되는 프로젝트로 아래 조건이 가능한 파트너와 계약이 가능합니다.
       						</p>
       					
       					</div>
       					<div class="end_date">
       						<img src="resources/assets/img/K-021.png" />
       						<p class="text-muted">마감 1주일 4일 전</p>
       						<br />
       						<img src="resources/assets/img/support.png" />
       						<p class="text-muted">총 78명 지원</p>
       					</div>
       				</div>
				</div>
				<div class="project_content_form">
				<h5><b><a href="#">제공되는 참고 소스 기반 BLE 데이터 연동!</a></b></h5>
					<div class="project_title2">
       					<div class="project_money">
       						<img src="resources/assets/img/money.png" />
       						<p class="text-muted">예상 금액&nbsp;&nbsp;&nbsp;200,000원</p>
       					</div>
       					<div class="project_time">
       						<img src="resources/assets/img/time.png" />	
       						<p class="text-muted">예상 시간&nbsp;&nbsp;&nbsp;180일</p>
       					</div>
       					<div class="project_support">
       						<p class="text-muted">등록 일자&nbsp;&nbsp;&nbsp;2019.01.01</p>
       					</div>
       				</div>
					<div class="c_detail">
						<div class="project_content_detail">
       						<p class="text-muted" id="detail">
       					자사 사무실에서 상주하여 근무가 가능한 풀 스택 개발자 1분을 모집하고 있습니다.
						- 근무 방식 : 주 5일 또는 3일 출근(상주 / 협의 후 결정합니다. )
						- 프로젝트 대금 지급 : 월 단위 지급

						모집 인원 : 1명
						- 3년 차 이상 : 1명 (월 500만 원)
						경력/이력 등 관련 경험에 따라 최종 계약 금액은 변경될 수 있습니다.


						1) 근무 위치 : 서울특별시 서초구 강남대로 69길 8(신논현 역 교보타워 인근)
						2) 근무 시간 : 오전 9시 ~ 오후 6시 또는 오전 10시 ~ 오후 7시( 휴게시간 12시 ~ 1시 또는 1시 ~ 2시 )
						3) 근무 일정 : 1개월 이상 근무를 요청드립니다. ( 1개월 계약 후 연장 요청드릴 예정입니다. )
						출근 예정일 : 협의 후 결정할 예정입니다.
						4) 식사 지원 : 중식 제공합니다.
						5) 장비 지참 : 개인 장비 지참 부탁드립니다.
						6) 협업 예정자 : 소스코드 제공 및 인수인계 가능한 개발자분이 있습니다.

						정부지원을 받아 진행되는 프로젝트로 아래 조건이 가능한 파트너와 계약이 가능합니다.
       						</p>
       					
       					</div>
       					<div class="end_date">
       						<img src="resources/assets/img/K-021.png" />
       						<p class="text-muted">마감 1주일 4일 전</p>
       						<br />
       						<img src="resources/assets/img/support.png" />
       						<p class="text-muted">총 78명 지원</p>
       					</div>
       				</div>
				</div>
				<div class="project_content_form">
				<h5><b><a href="#">제공되는 참고 소스 기반 BLE 데이터 연동!</a></b></h5>
					<div class="project_title2">
       					<div class="project_money">
       						<img src="resources/assets/img/money.png" />
       						<p class="text-muted">예상 금액&nbsp;&nbsp;&nbsp;200,000원</p>
       					</div>
       					<div class="project_time">
       						<img src="resources/assets/img/time.png" />	
       						<p class="text-muted">예상 시간&nbsp;&nbsp;&nbsp;180일</p>
       					</div>
       					<div class="project_support">
       						<p class="text-muted">등록 일자&nbsp;&nbsp;&nbsp;2019.01.01</p>
       					</div>
       				</div>
					<div class="c_detail">
						<div class="project_content_detail">
       						<p class="text-muted" id="detail">
       					자사 사무실에서 상주하여 근무가 가능한 풀 스택 개발자 1분을 모집하고 있습니다.
						- 근무 방식 : 주 5일 또는 3일 출근(상주 / 협의 후 결정합니다. )
						- 프로젝트 대금 지급 : 월 단위 지급

						모집 인원 : 1명
						- 3년 차 이상 : 1명 (월 500만 원)
						경력/이력 등 관련 경험에 따라 최종 계약 금액은 변경될 수 있습니다.


						1) 근무 위치 : 서울특별시 서초구 강남대로 69길 8(신논현 역 교보타워 인근)
						2) 근무 시간 : 오전 9시 ~ 오후 6시 또는 오전 10시 ~ 오후 7시( 휴게시간 12시 ~ 1시 또는 1시 ~ 2시 )
						3) 근무 일정 : 1개월 이상 근무를 요청드립니다. ( 1개월 계약 후 연장 요청드릴 예정입니다. )
						출근 예정일 : 협의 후 결정할 예정입니다.
						4) 식사 지원 : 중식 제공합니다.
						5) 장비 지참 : 개인 장비 지참 부탁드립니다.
						6) 협업 예정자 : 소스코드 제공 및 인수인계 가능한 개발자분이 있습니다.

						정부지원을 받아 진행되는 프로젝트로 아래 조건이 가능한 파트너와 계약이 가능합니다.
       						</p>
       					
       					</div>
       					<div class="end_date">
       						<img src="resources/assets/img/K-021.png" />
       						<p class="text-muted">마감 1주일 4일 전</p>
       						<br />
       						<img src="resources/assets/img/support.png" />
       						<p class="text-muted">총 78명 지원</p>
       					</div>
       				</div>
				</div>
				
				<!-- 페이징 -->
				<div id="pagination">
					<ul class="pagination pagination-info">
                		<li class="page-item">
                	  		<a href="javascript:void(0);" class="page-link"> prev</a>
                		</li>
               			<li class="active page-item">
                  			<a href="javascript:void(0);" class="page-link">1</a>
                		</li>
               	 		<li class="page-item">
                  			<a href="javascript:void(0);" class="page-link">2</a>
                		</li>
                		<li class="page-item">
                  			<a href="javascript:void(0);" class="page-link">3</a>
                		</li>
                		<li class="page-item">
                  			<a href="javascript:void(0);" class="page-link">4</a>
                		</li>
                		<li class="page-item">
                  			<a href="javascript:void(0);" class="page-link">5</a>
                		</li>
                		<li class="page-item">
                  			<a href="javascript:void(0);" class="page-link">next </a>
                		</li>
              		</ul>
			</div>
		</div>
	</div>
</div>
</div>

<%@ include file="WEB-INF/inc/footer.jsp" %>
</body>
</html>