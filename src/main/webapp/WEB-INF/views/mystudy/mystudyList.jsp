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
<%@include file="/WEB-INF/views/includes/header.jsp"%>
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
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="mystudy">
	<div class="study">
		<h1>내가 가입한 스터디</h1>
		<table class="table">
			<thead>
				<tr>
					<th>no</th>
					<th>스터디명</th>
					<th>스터디장</th>
					<th>전화번호</th>
					<th>위치</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${join}" var="list">
				<tr>
					<td>${list.meetNo}</td>
					<td><a href="/mystudy/mystudyView?no=${list.meetNo}">${list.meetGroupName}</a></td>
					<td>${list.meetName}</td>
					<td>${list.meetPhone}</td>
					<td>${list.meetRoadAddress}</td>
					<td>${list.meetRegistrationDate}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<hr>
	<div class="regist">
		<h1>내가 등록한 스터디</h1>
		<table class="table">
			<thead>
				<tr>
					<th>no</th>
					<th>스터디명</th>
					<th>스터디장</th>
					<th>전화번호</th>
					<th>위치</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${regist}" var="my">
					<tr>
						<td>${my.meetNo}</td>
						<td><a href="/article/get?articleNo=${my.meetNo}">${my.meetGroupName}</a></td>
						<td>${my.meetName}</td>
						<td>${my.meetPhone}</td>
						<td>${my.meetRoadAddress}</td>
						<td>${my.meetRegistrationDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
</body>
</html>