<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<style>
	body{
		padding: 0px;
		margin: 0px;
	}
	.top{
		background-color: green;
		height: 100px;
	}
	.slider{
		background-color: blue;
		height: 400px;
	}
	.sec_menu_bar{
		background-color: orange;
		text-align: center;
		height: 100px;
	}
	.pop_study{
		background-color: yellow;
		height: 300px;
	}
	.today_people{
		background-color: gray;
		width: 50%;
		height: 300px;
		float: left;  
	}
	.recent_comment{
		/* background-color: black; */
		width: 50%;
		height: 300px;
		float: left;
	}
	.logo{
		float: left;
		margin-top: 25px;
		margin-left: 30px;
		margin-right: 20px;
		font-size: 30px;
	}
	.menu{
		float: left;
		margin-top: 25px;
		margin-left: 30px;
		margin-right: 20px;
		font-size: 30px;
	}
	.join{
		float: right;
		margin-top: 25px;
		margin-right: 20px;
		font-size: 30px;
	}
	.slider{
		text-align: center;
	}
	.sec_menu{
		display: inline-block;
		margin-top: 25px;
		margin-left: 40px;
		margin-right: 40px;
		font-size: 30px;
	}
	.container {
        width: 400vw;
        transition: transform 0.5s; //움직임은 0.5초 지연시켜줌
    }
	.inner {
        width: 100vw;
        float: left;
    }
    img{
    	width: 100%;
    	height: 400px;
    }	
</style>
<html>
<head>
<meta charset="EUC-KR">
<title>StudyTab</title>
</head>
<body>
	<div class="top">
		<div class="logo">logo</div>
			<div class="menu_bar">
				<div class="menu">공지사항</div>
				<div class="menu">스터디게시판</div>
				<div class="menu">완료된스터디</div>
				<div class="join">회원가입</div>
				<div class="join">로그인</div>
			</div>
	</div>
	<div class="slider" style="overflow: hidden;">
        <div class="container">
            <div class="inner">
                <img src="/resources/images/home.jpg">
            </div>
            <div class="inner">
                <img src="/resources/images/study2.jpg">
            </div>
            <div class="inner">
                <img src="images/quit.jpg">
            </div>
            <div class="inner">
                <img src="images/spacejam.jpg">
            </div>
        </div>
    </div>
	<div class="sec_menu_bar">
		<div class="sec_menu">모임만들기</div>
		<div class="sec_menu">스터디게시판</div>
		<div class="sec_menu">스터디 가이드</div>
	</div>
	<div class="pop_study">
		조회수 높은 스터디 게시물 보이는 곳
	</div>
	<div class="today_people">
		오늘은 200명이<br> 문을 두들겼어요~
	</div>
	<div class="recent_comment">
		최신 댓글 보는곳
	</div>
</body>
</html>