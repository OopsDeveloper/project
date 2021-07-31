<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
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
		height: 400px;
	}
	.sec_menu_bar{
		background-color: white;
		text-align: center;
		height: 100px;
	}
	.pop_study{
		/* background-color: blue; */ 
		height: 600px;
		font-size: 30px;
	}
	.today_people{
		/* background-color: gray; */
		margin-left: 80px;
		width: 800px;
		height: 500px;
		float: left;
		border: 1px solid;  
	}
	.recent_comment{
		/* background-color: black; */
		margin-left: 80px;
		width: 870px;
		height: 500px;
		float: left;
		border: 1px solid;  
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
    .study_div{
    	display: inline-block;
		margin-top: 15px;
		margin-left: 80px;
		margin-right: 60px;
    }
    .best_study{
    	width: 230px;
    	height: 230px;
    }
    .icon{
    	text-align: center;
    	margin-top: 10px;
    }
    .visitor{
    	text-align: center;
    	font-size: 30px;
    }
    .visitor_count{
    	text-align: center;
    	margin-top: 30px;
    }
    .recent_comment{
    }
    .chat{
    	text-align: center;
    	font-size: 30px;
    }
</style>
<html>
<head>
<meta charset="UTF-8">
<title>StudyTab</title>
</head>
<body>
	<div class="top">
		<div class="logo"> 
			<img alt="logo" src="${pageContext.request.contextPath}/resources/startpage/logo1.png">
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
            	<img alt="" src="${pageContext.request.contextPath}/resources/mainpage/mint.jpg">
            </div>
            <div class="inner">
            	<img alt="" src="${pageContext.request.contextPath}/resources/mainpage/orange.jpg">
            </div>
            <div class="inner">
            	<img alt="" src="${pageContext.request.contextPath}/resources/mainpage/pink.jpg">
            </div>
            <div class="inner">
            	<img alt="" src="${pageContext.request.contextPath}/resources/mainpage/green.jpg">
            </div>
        </div>
    </div>
	<div class="sec_menu_bar">
		<div class="sec_menu"><button class="hover1">모임만들기</button></div>
		<div class="sec_menu"><button class="hover1">스터디게시판</button></div>
		<div class="sec_menu"><button class="hover1">스터디 가이드</button></div>
		<div class="sec_menu"><button class="hover1">나의 스터디</button></div>
	</div>
	<!--아직 데이터가 없어서 하드코딩 했습니다.   -->
	<div class="pop_study">
		<div class="divider-custom">
	        <div class="icon">
		        <i class="fas fa-star"></i>
		        	금주의 스터디
		        <i class="fas fa-star"></i>
	        </div>
       </div>
       <div class="study_div">
	       <div>
	           <img class="best_study" src="${pageContext.request.contextPath}/resources/mainpage/cabin.png" alt="..." />
	       </div>
       </div>
       <div class="study_div">
	       <div>
	           <img class="best_study" src="${pageContext.request.contextPath}/resources/mainpage/cake.png" alt="..." />
	       </div>
       </div>
        <div class="study_div">
	       <div>
	           <img class="best_study" src="${pageContext.request.contextPath}/resources/mainpage/circus.png" alt="..." />
	       </div>
       </div>
        <div class="study_div">
	       <div>
	           <img class="best_study" src="${pageContext.request.contextPath}/resources/mainpage/game.png" alt="..." />
	       </div>
       </div>
       <div class="study_div">
	       <div>
	           <img class="best_study" src="${pageContext.request.contextPath}/resources/mainpage/circus.png" alt="..." />
	       </div>
       </div>
       <div class="study_div">
	       <div>
	           <img class="best_study" src="${pageContext.request.contextPath}/resources/mainpage/safe.png" alt="..." />
	       </div>
       </div>
       <div class="study_div">
	       <div>
	           <img class="best_study" src="${pageContext.request.contextPath}/resources/mainpage/circus.png" alt="..." />
	       </div>
       </div>
       <div class="study_div">
	       <div>
	           <img class="best_study" src="${pageContext.request.contextPath}/resources/mainpage/game.png" alt="..." />
	       </div>
       </div>
       <div class="study_div">
	       <div>
	           <img class="best_study" src="${pageContext.request.contextPath}/resources/mainpage/safe.png" alt="..." />
	       </div>
       </div>
       <div class="study_div">
	       <div>
	           <img class="best_study" src="${pageContext.request.contextPath}/resources/mainpage/cabin.png" alt="..." />
	       </div>
       </div>
	</div>
	<div class="today_people">
		<div class="visitor">
        	<i class="fas fa-running"></i>
	        	금일 방문자
        </div>
        <div class="visitor_count">
	        <i class="fas fa-user-check"></i>
			3명 방문했습니다. 
		</div>
	</div>
	<div class="recent_comment">
		<div class="chat">
			<i class="far fa-comment-dots"></i>
			꼬꼬무
		</div>
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
		setInterval(next_slider,5000);		
	</script>
</body>
</html>