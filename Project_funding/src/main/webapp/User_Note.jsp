<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link href="resources/assets/css/topbar_kit.css" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  
</head>
<body class="index-page sidebar-collapse">

<!-- 쪽지 모달창 -->
<div>
<div class="container">
  <h2 style="color:white;">쪽지</h2>
  <!-- Button to Open the Modal -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    전송하기
  </button>

  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog ">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h3 class="modal-title"><b style="padding-left: 180px;">쪽지 보내기</b></h3>
         
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
         	<h3><b>아이디&nbsp;</b></h3><b>동민</b><br><br>
         	<h3><b>제목&nbsp;</b></h3><input type="text" class="form-control"><br>
         	<h3><b>내용&nbsp;</b></h3><textarea rows="10" cols="40" class="form-control"></textarea>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <input type="submit" class="btn btn-warning" value="전송하기"/>
          <input type="button" class="btn btn-warning" data-dismiss="modal" style="color:white;">취소</button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>
</div>
</body>
</html>