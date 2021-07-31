<%@ page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

<link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet" type="text/css">
<title>Home</title>

</head>
<body>
	<section>
	<div class = "circle"></div>
		<header>
			 <a href="/WEB-INF/views/home.jsp" class ="logo"><img alt="logo" src="${pageContext.request.contextPath}/resources/startpage/logo1.png"></a>
		</header>
		<div class = "content">
				
		<!-- 시작페이지 문장 및 로그인 회원가입 버튼  -->
			<div class = "textBox">
				<h2><span></span>언제 어디서나 </h2>
				<a href="${pageContext.request.contextPath}/user/login">로그인</a>
				<a href="${pageContext.request.contextPath}/user/register">회원가입</a>
			</div>
			<!-- 시작페이지 5시 방향 눈알 이미지  -->
			<div class = "imgBox">
			
				 <img alt="11" src="${pageContext.request.contextPath}/resources/startpage/other12.png" class ="iii">
			</div>
		</div>
		<!-- 버튼 누르면 색상 및 사진 변경  -->
		 <ul class = "thumb">
		 <img alt="11" src="${pageContext.request.contextPath}/resources/startpage/mainphoto.png" class ="iii">
		</ul>
			<!-- <li ><img src="/resources/startpage/start1.png"onclick="imgSlider('/resources/startpage/start1.png');changeCircleColor('#017143')"></li>
			<li><img src="/resources/startpage/start2.png"onclick="imgSlider('/resources/startpage/start2.png');changeCircleColor('#eb7495')"></li>
			<li><img src="/resources/startpage/start3.png"onclick="imgSlider('/resources/startpage/start3.png');changeCircleColor('#d752b1')"></li> -->
	</section>
	<script type="text/javascript">
	//버튼 누르면 이미지 변경
	function imgSlider(anything){
		document.querySelector('.iii').src = anything;
	}
	//버튼 누르면 원 색상 변경
	function changeCircleColor(color) {
		var circle = document.querySelector('.circle');
		circle.style.background = color;
	}
	</script>
	
</body>
</html>