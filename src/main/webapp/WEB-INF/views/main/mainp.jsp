<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<style>
	body{
		padding: 0px;
		margin: 0px;
	}
	.top{
		background-color: white;
		height: 100px;
	}
	.menu_bar button{
		background-color:#ff7867;
		width: 100px;
		height: 50px;
		font-size: 20px;
		color: white;
		border: #27D68C;
		border-radius: 25px;
	}
	.slider{
		/* background-color: blue; */
		height: 400px;
	}
	.sec_menu_bar{
		background-color: white;
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
		margin-top: 8px;
		margin-left: 30px;
		margin-right: 20px;
		font-size: 30px;
	}
	.logo img{
		width: 83px;
		height: 80px;
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
		margin-top: 15px;
		margin-left: 80px;
		margin-right: 80px;
		font-size: 30px;
	}
	.sec_menu button{
		background-color:#27D68C;
		width: 220px;
		height: 70px;
		font-size: 30px;
		color: white;
		border: #27D68C;
		border-radius: 25px;
	}
	.hover1:hover{ 
		background-color: rgba(0,0,0,0.5);  
	}
	.container {
        width: 400vw;
        transition: transform 0.5s;
    }
	.inner {
        width: 100vw;
        float: left;
    }
    .inner img{
    	width: 100vw;
    }
</style>
<html>
<head>
<meta charset="EUC-KR">
<title>StudyTab</title>
</head>
<body>
	<div class="top">
		<div class="logo"> 
			<img alt="logo" src="/resources/startpage/logo1.png">
		</div>
			<div class="menu_bar">
				<div class="menu">공지사항</div>
				<div class="menu">스터디게시판</div>
				<div class="menu">완료된스터디</div>
				<div class="join"><button class="hover1">로그아웃</button></div>
			</div>
	</div>
	<div class="slider" style="overflow: hidden;">
        <div class="container">
            <div class="inner">
            	<img alt="" src="/resources/mainpage/mint.jpg">
            </div>
            <div class="inner">
            	<img alt="" src="/resources/mainpage/orange.jpg">
            </div>
            <div class="inner">
            	<img alt="" src="/resources/mainpage/pink.jpg">
            </div>
            <div class="inner">
            	<img alt="" src="/resources/mainpage/green.jpg">
            </div>
        </div>
    </div>
	<div class="sec_menu_bar">
		<div class="sec_menu"><button class="hover1">모임만들기</button></div>
		<div class="sec_menu"><button class="hover1">스터디게시판</button></div>
		<div class="sec_menu"><button class="hover1">스터디 가이드</button></div>
		<div class="sec_menu"><button class="hover1">나의 스터디</button></div>
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
	<script>
		var x = 0;
		function next_slider() {
			x -=100;
			if(x<-300){
				x = 0;
			}
			document.querySelector('.container').style.transform = 'translate('+ x +'vw)';
			
		}
		setInterval(next_slider,3000);
		
	</script>
</body>
</html>