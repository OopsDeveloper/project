<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Oswald:700|Poppins" rel="stylesheet"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Herr+Von+Muellerhoff" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

	   <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<style>
	.mystudy{
		width: 1000px;
		height: 1000px;
		margin: 0 auto;
		margin-top: 100px;
	}
	hr{
		margin-top: 100px;
		margin-bottom: 100px;
	}
	.info{
		float: left;
	}
</style>
<%@include file="/WEB-INF/views/includes/header.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="mystudy">
	<h1>스터디방</h1>
	<div class="todoList" style="overflow:auto; width:1000px; height:300px;border: solid;">
		<c:forEach items="${todoList}" var="list">
			<input type="text" name="todoList" class="form-control" value="${list.todo}" readonly="readonly"><br><br>
		</c:forEach>
	</div>
	<input type="text" class="form-control" value="" name="todo" id="todo" placeholder="오늘의 할일 등록">
	<input type="hidden" value="${myStudyNum}" name="myStudyNum" id="myStudyNum">
	<button class="form-control btn-success" type="button" onclick="todo_regist()">추가</button>
	<hr>
	<h1>멤버 연락처</h1>
	<div class="memebrPhone">
		<c:forEach items="${member}" var="info">
			<div class="col-md-3 d-flex info">
	          	<div class="info bg-light p-4">
		            <p><span>이름:</span>${info.joinName}</p>
		            <p><span>핸드폰:</span> <a href="tel://${info.joinPhone}">${info.joinPhone}</a></p>
		            <p><span>메일:</span> ${info.joinEmail}</p>
		        </div>
			</div>
	    </c:forEach>
	</div>
</div>
</body>
<script type="text/javascript">
	function todo_regist(){
		var todo = $("#todo").val();
		var myStudyNum = $("#myStudyNum").val();
		if(todo==="" || todo===null){
			alert("글을 써주세요");
			return;
		}
		$.ajax({
			type:"POST",
			url:"/mystudy/todoRegist.todo",
			data:{  todo:todo,
					myStudyNum:myStudyNum
			},
			success : function(result) {
				alert("todoList가 추가되었습니다.");
				$("#todoList").val(result);
			},
			error: function(request,status,error){
				alert("실패:"+error);
			}
			
			
		});
	}
</script>
</html>