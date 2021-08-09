<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/header.css">
<div class="top">
	<div class="logo"> 
		<a href="/main/mainp">
			<img alt="logo" src="${pageContext.request.contextPath}/resources/startpage/logo1.png">
		</a>
	</div>
	<div class="menu_bar">
		<div class="menu" onclick="location.href='/notice/list'">공지사항</div>
		<div class="menu" onclick="location.href='/article/list'">스터디게시판</div>
		<div class="menu">완료된스터디</div>
		<div class="join"><button class="hover1" onclick="location.href='/'">로그아웃</button></div>
	</div>
</div>    