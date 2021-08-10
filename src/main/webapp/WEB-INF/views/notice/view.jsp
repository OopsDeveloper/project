<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style type="text/css">
	.content{
		width:700px;
    	height:600px;
    	margin:0 auto;
    	background-color: #fff; 
    	margin-top: 60px;
	}
	.noticContent{
		height: 500px;
	}
	table{
		border: 4px solid;
	}
	tr{
		border: 2px solid;
	}
	.bt-motify{
		width: 100px;
		float: right;
	}
	.bt-list{
		width: 100px;
		float: right;
	}
</style>
<meta charset="UTF-8">
<%@include file="/WEB-INF/views/includes/header.jsp"%>
<title>Insert title here</title>
</head>
<body>
<div class="content">
	<table class="table table-bordered">
		<tr>
			<td colspan="2" class="col-sm-1">${user.noticeName}</td>
		</tr>
		<tr>
			<td colspan="2" class="col-sm-1">작성자: ${user.noticeCommentWriter} 등록일: ${user.noticeDate} 조회: ${user.noticeHit}</td>
		</tr>
		<tr>
			<td colspan=2 class="noticContent">${user.noticeCommentContent}</td>
		</tr>
	</table>
	<button class="bt-motify form-control btn-success">수정</button>
	<button onclick="location.href='/notice/list'" class="bt-list form-control btn-primary">목록</button>
</div>
</body>
</html>