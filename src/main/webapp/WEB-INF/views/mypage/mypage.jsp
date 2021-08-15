<%@ page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
	<%
		request.setCharacterEncoding("utf-8");
	%>
  <head>
    <title>StudyTap MyPage</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Herr+Von+Muellerhoff" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css">


    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

	  <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
	  <script>
		  $(document).ready(function() {
			  //이미지 클릭시 업로드창 실행
			  $('#profile_file_add').click(function () {
				  console.log('fileadd');
				  $("input[name='fileProfile']").click();
			  })

			  $("input[name='fileProfile']").change(function (e) {
				  console.log($("input[name='fileProfile']").val());
				  let formData = new FormData();
				  let fileInput = $('input[name="fileProfile"]');
				  let fileList = fileInput[0].files;
				  let fileObj = fileList[0];

				  formData.append("uploadFile", fileObj);

				  $.ajax({
					  url: '/mypage/uploadAjaxAction',
					  processData : false,
					  contentType : false,
					  data : formData,
					  type : 'POST',
					  dataType : 'json'
				  });
			  });
		  })
	  </script>
  </head>
  <body>

	<div id="colorlib-page">
		${user}
		<form name="fileForm" method="POST" ENCTYPE="multipart/form-data">
			<input type="file" id="fileProfile" name="fileProfile" style="display:none;">
		</form>
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="js-fullheight text-center">
			<h1 id="colorlib-logo"><span class="img" id="profile_file_add" style="background-image: url(${pageContext.request.contextPath}/resources/images/author.jpg);"></span>${user.joinName}</h1>
			<nav id="colorlib-main-menu" role="navigation">
				<ul>
					<li><a href="/main/mainp">Home</a></li>
					<li><a href="/notice/list">공지사항</a></li>
					<li><a href="/article/list">스터디 게시판</a></li>
					<li><a href="">완료된 스터디</a></li>
					<li class="colorlib-active"><a href="/mypage/mypage">마이페이지</a></li>
				</ul>
			</nav>

			<div class="colorlib-footer">
				<h3>Newsletter</h3>
				<div class="d-flex justify-content-center">
					<form action="#" class="colorlib-subscribe-form">
            <div class="form-group d-flex">
            	<div class="icon"><span class="icon-paper-plane"></span></div>
              <input type="text" class="form-control" placeholder="Enter Email Address">
            </div>
          </form>
				</div>
			</div>
		</aside> <!-- END COLORLIB-ASIDE -->
		<div id="colorlib-main">
			<section class="ftco-section ftco-bread">
				<div class="container">
					<div class="row no-gutters slider-text justify-content-center align-items-center">
	          <div class="col-md-8 ftco-animate">
	            <p class="breadcrumbs"><span class="mr-2"><a href="/main/mainp">Home</a></span></p>
	            <h1 class="bread">마이페이지</h1>
	          </div>
	        </div>
				</div>
			</section>
			<section class="ftco-section contact-section">
	      <div class="container">
	        <div class="row d-flex mb-5 contact-info">
	          <div class="col-md-12 mb-4">
	            <h2 class="h3 font-weight-bold">사용자 정보</h2>
	          </div>
	          <div class="w-100"></div>
	          <div class="col-md-3 d-flex">
	          	<div class="info bg-light p-4">
		            <p><span>메일:</span> www.test.com</p>
		          </div>
	          </div>
	          <div class="col-md-3 d-flex">
	          	<div class="info bg-light p-4">
		            <p><span>연락처:</span> <a href="tel://1234567920">+ 1235 2355 98</a></p>
		          </div>
	          </div>
	          <div class="col-md-3 d-flex">
	          	<div class="info bg-light p-4">
		            <p><span>관심사:</span> <a href="mailto:info@yoursite.com">IT</a></p>
		          </div>
	          </div>
	          <div class="col-md-3 d-flex">
	          	<div class="info bg-light p-4">
		            <p><span>매너온도</span> <a href="#">50도</a></p>
		          </div>
	          </div>
	        </div>
	        <div class="row block-9">
	          <div class="col-md-6 d-flex">
	            <form action="#" class="bg-light p-5 contact-form">
	              <div class="form-group">
	                <input type="text" class="form-control" placeholder="메일">
	              </div>
	              <div class="form-group">
	                <input type="text" class="form-control" placeholder="연락처">
	              </div>
	              <div class="form-group">
	                <input type="text" class="form-control" placeholder="관심사">
	              </div>
	              <div class="form-group">
	                <input type="submit" value="회원정보 수정" class="btn btn-primary py-3 px-5">
	              </div>
	            </form>
	          
	          </div>

	          <div class="col-md-6 d-flex">
	          	<div id="map" class="bg-light"></div>
	          </div>
	        </div>
	      </div>
	    </section>
	    <footer class="ftco-footer ftco-bg-dark ftco-section">
	      <div class="container px-md-5">
	        <div class="row mb-5">
	          <div class="col-md">
	            <div class="ftco-footer-widget mb-4 ml-md-4">
	              <h2 class="ftco-heading-2">Recent Photos</h2>
	              <ul class="list-unstyled photo">
	                <li><a href="#" class="img" style="background-image: url(${pageContext.request.contextPath}/resources/images/image_1.jpg);"></a></li>
	                <li><a href="#" class="img" style="background-image: url(${pageContext.request.contextPath}/resources/images/image_2.jpg);"></a></li>
	                <li><a href="#" class="img" style="background-image: url(${pageContext.request.contextPath}/resources/images/image_3.jpg);"></a></li>
	                <li><a href="#" class="img" style="background-image: url(${pageContext.request.contextPath}/resources/images/image_4.jpg);"></a></li>
	                <li><a href="#" class="img" style="background-image: url(${pageContext.request.contextPath}/resources/images/image_5.jpg);"></a></li>
	                <li><a href="#" class="img" style="background-image: url(${pageContext.request.contextPath}/resources/images/image_6.jpg);"></a></li>
	              </ul>
	            </div>
	          </div>
	          <div class="col-md">
	             <div class="ftco-footer-widget mb-4">
	              <h2 class="ftco-heading-2">Archives</h2>
	              <ul class="list-unstyled categories">
	              	<li><a href="#">November 2018 <span>(105)</span></a></li>
	              	<li><a href="#">October 2018 <span>(212)</span></a></li>
	                <li><a href="#">September 2018 <span>(150)</span></a></li>
	                <li><a href="#">August 2018 <span>(100)</span></a></li>
	                <li><a href="#">July 2018 <span>(200)</span></a></li>
	              </ul>
	            </div>
	          </div>
	          <div class="col-md">
	            <div class="ftco-footer-widget mb-4">
	            	<h2 class="ftco-heading-2">Have a Questions?</h2>
	            	<div class="block-23 mb-3">
		              <ul>
		                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
		                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
		                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
		              </ul>
		            </div>
	            </div>
	          </div>
	        </div>
	        <div class="row">
	          <div class="col-md-12">

	            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
	  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
	          </div>
	        </div>
	      </div>
	    </footer>
		</div><!-- END COLORLIB-MAIN -->
	</div><!-- END COLORLIB-PAGE -->

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.timepicker.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    
  </body>
</html>