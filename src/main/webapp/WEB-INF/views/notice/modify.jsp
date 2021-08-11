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
	.nregist{
		width:700px;
    	margin:0 auto;
    	margin-top: 100px;
    	background-color: #fff;
	}
	.bt-motify{
		width: 100px;
		float: right;
	}
	.bt-delete{
		width: 100px;
		float: right;
	}
</style>
<meta charset="UTF-8">
<%@include file="/WEB-INF/views/includes/header.jsp"%>
<title>수정하기</title>
</head>
<body>
<div class="nregist">
	<form action="/notice/modify" method="post">
		<input type="hidden" name="noticeNo" value="${user.noticeNo}">
		<table class="table table-bordered">
			<tr>
				<td>제목</td>
				<td><input class="form-control" type="text" name="noticeName" value="${user.noticeName}"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>
					<input class="form-control" type="text" value="관리자" disabled>
					<input type="hidden" name="noticeCommentWriter" value="관리자">
				</td>
			</tr>
			<tr>
				<td colspan="2">
				<textarea  class="form-control" name="noticeCommentContent" rows="30" >${user.noticeCommentContent}</textarea>
				</td>
			</tr>
		</table>
		<button class="bt-motify form-control btn-success">수정</button>
		<button onclick="location.href='/notice/delete?bno=${user.noticeNo}'" class="bt-delete form-control btn-danger">삭제</button>
	</form>
</div>
</body>
</html>