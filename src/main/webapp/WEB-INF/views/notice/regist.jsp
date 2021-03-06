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
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<%@include file="/WEB-INF/views/includes/header.jsp"%>
<style type="text/css">
	.nregist{
		width:700px;
    	margin:0 auto;
    	margin-top: 100px;
    	background-color: #fff;
	}
</style>
<meta charset="UTF-8">
<title>공지사항 글쓰기</title>
</head>
<body>
<div class="nregist">
	<form action="/notice/regist" method="post">
		<table class="table table-bordered">
			<tr>
				<td>제목</td>
				<td><input class="form-control" type="text" name="noticeName"></td>
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
				<textarea  class="form-control" name="noticeCommentContent" rows="30" ></textarea>
				</td>
			</tr>
		</table>
		<button type="submit" class="bt_more form-control btn-success">제출하기</button>
	</form>
</div>
</body>
</html>