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
			<a href="#" class ="logo"><img alt="logo가 들어갈 곳" src="/resources/image/logo1.png"></a>
			
		</header>
		<div class = "content">
			<div class = "textBox">
				<h2>언제 어디서나 <span>StudyTab!</span></h2>
				<a href="#">Learn more</a>
			</div>				
			<div class = "imgBox">
				<img alt="11" src="/resources/image/img1.png" class = "starbucks">
			</div>
		</div>
		<ul class = "thumb">                         
			<li><img src="/resources/image/thumb1.png"onclick="imgSlider('/resources/image/img1.png');changeCircleColor('#017143')"></li>
			<li><img src="/resources/image/logo2.png"onclick="imgSlider('/resources/image/logo2.png');changeCircleColor('#eb7495')"></li>
			<li><img src="/resources/image/thumb3.png"onclick="imgSlider('/resources/image/img3.png');changeCircleColor('#d752b1')"></li>
		</ul>                                                         
		<ul class="sci">
			<li><a href="#"><img src="/resources/image/facebook.png"></a></li>
			<li><a href="#"><img src="/resources/image/twitter.png"></a></li>
			<li><a href="#"><img src="/resources/image/instagram.png"></a></li>
		</ul>
	</section>
	
	<script type="text/javascript">
	function imgSlider(anything){
		document.querySelector('.starbucks').src = anything;
	}
	function changeCircleColor(color) {
		var circle = document.querySelector('.circle');
		circle.style.background = color;
	}
	</script>
</body>
</html>