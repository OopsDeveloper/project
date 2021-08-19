<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<style>
	.list{
		width:700px;
    	margin:0 auto;
    	background-color: #fff;
	}
	.notice_fx{
		width:700px;
    	height:65px;
    	margin:0 auto;
    	background-color: #fff; 
    	/* margin-top: 100px; */
    	border-top: 2px solid;
    	border-bottom: 2px solid;
	}
	.notice_list_total{
		height: 30px;
		margin:0 auto;
		margin-top: 20px;
	} 
	ul{
		list-style:none;
		padding-left: 0;
		width: 700px;
	}
	li {
		border-bottom: 1px solid;
	}
	.nt_num{
		width: 50px;
    	text-align: center;
    	margin-right: 5px;
	}
	.nt_name{
		font-weight: bold;
	}
	.nt_other{
		width: 100%;
    	display: block;
    	padding-top: 5px;
	}
	.nt_wrap{
		display: inline-block;
    	position: relative;
    	font-weight: normal;
	}
	a{
		text-decoration: none;
	}
	a:visited {
		color: black;
	}
	a:link{
		color: black;
	}
	.bt_more{
		margin-top: 10px;
	}
	.sicon{
		float: right;
		cursor: pointer;
	}
	.all{
		width: 700px;
		margin: 0 auto;
		margin-top: 80px;
	}
</style>
<%@include file="/WEB-INF/views/includes/header.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
		function plus() {
			if (${page} > ${total*10} ) {
				// page >= (total*10)
				alert("더보기 끝");
				return;
			}
			location.href='/notice/list';
		}
	</script>

</head>
<body>
<div class="all">
	<h1>공지사항</h1>
	<div class="notice_fx">
		<div class="notice_list_total">
			<span>Total ${count}건</span>
			<c:if test="${user.joinAdmin == 'Y'}">
				<span onclick="location.href='/notice/regist'" class="sicon"><i class="fas fa-plus-circle fa-2x"></i></span>
			</c:if>
		</div>
	</div>
	<div class="list">
		<ul>
			<c:forEach items="${notice}" var="vo">
				<li>
					<span class="nt_num">${vo.noticeNo}</span>
					<span class="nt_name"><a href="view?bno=${vo.noticeNo}">${vo.noticeName}</a></span>
					<span class="nt_other">작성자 : 
						<span class="nt_wrap">${vo.noticeCommentWriter} | 작성일 : ${vo.noticeDate} | 조회수 : ${vo.noticeHit}</span>
					</span>
				</li>
			</c:forEach>
			<c:if test="${count >=10}">
				<button onclick="plus()" class="bt_more form-control btn-success">더보기</button>
			</c:if>
		</ul>
	</div>
</div>
</body>
</html>