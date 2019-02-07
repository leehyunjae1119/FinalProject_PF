<%@page import="com.klp.pf.dto.PF_ProfileDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png"
	href="resources/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>프로젝트 지원내역01</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!-- CSS Files -->
<link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="resources/assets/demo/demo.css" rel="stylesheet" />
<!-- index.css 참조 -->
<link href="resources/assets/css/index.css" rel="stylesheet" />
<!-- fontawesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">

</head>
<% String user_id = request.getParameter("evaluation_object"); %>
<body style="background-color: white;">
				<table class="table table-sm">
					<thead class="thead-dark">
						<tr>
							<th style="text-align: center;">파트너스</th>
							<th style="text-align: center;">전문성</th>
							<th style="text-align: center;">의사소통</th>
							<th style="text-align: center;">적극성</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="text-align: center; color: black;vertical-align: middle;">
								${param.evaluation_object }<input type="hidden" id="evaluation_object" value="${param.evaluation_object }">
							</td>
							<td style="text-align: center;width: 120px;">
								<select class="form-control" id="evaluation_item1">
      								<option value="1">⭐️</option>
      								<option value="2">⭐️⭐️</option>
      								<option value="3">⭐️⭐️⭐️</option>
      								<option value="4">⭐️⭐️⭐️⭐️</option>
      								<option value="5">⭐️⭐️⭐️⭐️⭐️</option>
    							</select>
							</td>
							<td style="text-align: center;width: 120px;">
								<select class="form-control" id="evaluation_item2">
      								<option value="1">⭐️</option>
      								<option value="2">⭐️⭐️</option>
      								<option value="3">⭐️⭐️⭐️</option>
      								<option value="4">⭐️⭐️⭐️⭐️</option>
      								<option value="5">⭐️⭐️⭐️⭐️⭐️</option>
    							</select>
							</td>
							<td style="text-align: center;width: 120px;">
								<select class="form-control" id="evaluation_item3">
      								<option value="1">⭐️</option>
      								<option value="2">⭐️⭐️</option>
      								<option value="3">⭐️⭐️⭐️</option>
      								<option value="4">⭐️⭐️⭐️⭐️</option>
      								<option value="5">⭐️⭐️⭐️⭐️⭐️</option>
    							</select>
							</td>
							
						</tr>
						<tr>
							<td colspan="4">
								<textarea class="form-control" id="evaluation_content" placeholder="평가 내용을 작성해주세요."></textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<button class="btn btn-success" onclick="reg();">등록하기</button>
		
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
		
		function reg(){
			var objectVal = $("#evaluation_object").val();
			var item1Val = $("#evaluation_item1").val();
			var item2Val = $("#evaluation_item2").val();
			var item3Val = $("#evaluation_item3").val();
			var contentVal = $("#evaluation_content").val();
			$.ajax({
				type:"post",
				url:"insertEvaluationAjax.do",
				data:"evaluation_object="+objectVal+"&evaluation_item1="+item1Val+"&evaluation_item2="+item2Val+"&evaluation_item3="+item3Val+"&evaluation_content="+contentVal,
				success:function(msg){
					if(msg.Chk==true){
						alert("등록이 완료되었습니다.");
						self.close();
					}else{
						alert("등록 실패!");
					}
				},error:function(){
					alert("등록 실패!");
				}
			})
		}
</script>

</body>
</html>