<<<<<<< HEAD
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <!-- Main Header -->

    <!-- Left side column. contains the logo and sidebar -->

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Page Header
                <small>Optional description</small>
                	메인페이지
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
                <li class="active">Here</li>
                <li><a href="${path}/"><i class="fa fa-dashboard"></i> home</a></li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content container-fluid">
            <!--------------------------
              | Your Page Content Here |
              -------------------------->
            <p>메인페이지입니다....</p>

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <!-- Main Footer -->

</div>
<!-- ./wrapper -->

=======
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="/resources/css/home.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>start</title>
<style>
@import url('http://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap');
</style>
</head>
<body>
	<section>
			<div class = "circle"></div>
		<header>
			<a href="#" class ="logo"><img alt="logo가 들어갈 곳" src="/resources/image/logo.png"></a>
			<ul>
				<li><a href="#">home</a></li>
				<li><a href="#">home</a></li>
				<li><a href="#">home</a></li>
				<li><a href="#">home</a></li>
			</ul>
		</header>
		<div class = "content">
			<div class = "textBox">
				<h2>It's study Go Go<br>Study<span>Starbucks</span></h2>
				<p>ddddddddddddddddddddddddddddddddddddd</p>
				<a href="#">Learn asasdasd</a>
			</div>				
			<div class = "imgBox">
				<img alt="11" src="/resources/image/img1.png" class = "starbucks">
			</div>
		</div>
		<ul class = "thumb">                         
			<li><img src="/resources/image/thumb1.png"onclick="imgSlider('img1.png')changeCircleColor('#017143')"></li>
			<li><img src="/resources/image/thumb2.png"onclick="imgSlider('img2.png')changeCircleColor('#eb7495')"></li>
			<li><img src="/resources/image/thumb3.png"onclick="imgSlider('img3.png')changeCircleColor('#d752b1')"></li>
		</ul>                                                            
		<ul class="sci">
			<li> <a href="#"><img src="/resources/image/facebook.png"></a></li>
			<li> <a href="#"><img src="/resources/image/twitter.png"></a></li>
			<li> <a href="#"><img src="/resources/image/instagram.png"></a></li>
		</ul>
	</section>
	
	<script type="text/javascript">
	function imgSlider(anything){
		document.querySelector('.starbucks').src = anything;
	}
	function changeCircleColor(color) {
		const circle = document.querySelector('.circle');
		circle.style.background = color;
	}
	</script>
>>>>>>> branch 'master' of https://github.com/OopsDeveloper/project.git
</body>
</html>