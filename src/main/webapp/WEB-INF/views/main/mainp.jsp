<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/views/includes/header.jsp"%>
<link href="${pageContext.request.contextPath}/resources/css/mainp.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>StudyTab</title>
</head>
<body>
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
		<div class="sec_menu"><button class="hover1" onclick="location.href='/meet/meetRegister'">모임만들기</button></div>
		<div class="sec_menu"><button class="hover1">스터디 가이드</button></div>
		<div class="sec_menu"><button class="hover1">나의 스터디</button></div>
		<div class="sec_menu"><button class="hover1" onclick="location.href='/mypage/mypage'">마이페이지</button></div>
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