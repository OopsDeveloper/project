<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<meta charset="EUC-KR">
	
	
<title>header2</title>

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
        crossorigin="anonymous">
    </script>


</head>
<body>
<div id="wrap"></div>
<!-- START 헤더라인 -->
      <header id="header" class="">
        <div class="container">
          <a class="navbar-brand" href="#">
          <img alt="logo" width="5%" height="10%" class="logo" src="${pageContext.request.contextPath}/resources/startpage/logo1.png">
          </a>
        <!--  -->
        <nav class="navbar navbar-expand-lg navbar-light bg-white">
          <div class="container-fluid">
            <a class="navbar-brand" href="#"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item dropdown">
                  <a class="nav-link " href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    스터디탭
                  </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <li><a class="dropdown-item" href="#">스터디탭소개</a></li>
                    <li><a class="dropdown-item" href="#">공지사항</a></li>
                  </ul>
                </li>
                
                <li class="nav-item dropdown">
                  <a class="nav-link " href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    나만의 스터디
                  </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <li><a class="dropdown-item" href="#">나의정보</a></li>
                    <li><a class="dropdown-item" href="#">스터디 만들기</a></li>
                    <li><a class="dropdown-item" href="#">쪽지</a></li>
                    <li><a class="dropdown-item" href="#">1:1 문의</a></li>
                  </ul>
                </li>

                <li class="nav-item">
                  <a class="nav-link " href="#" tabindex="-1" aria-disabled="true">장소</a>
                </li>

                <li class="nav-item dropdown">
                  <a class="nav-link " href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    게시판
                  </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <li><a class="dropdown-item" href="#">자유 게시판</a></li>
                    <li><a class="dropdown-item" href="#">모집 게시판</a></li>
                  </ul>
                </li>
              </ul>
              <div>&nbsp;&nbsp;</div>
              <form class="d-flex">
                <input class="form-control me-1 btn-outline-dark" type="search" placeholder="검색" aria-label="Search"> </form>
                <button class="btn btn-outline-dark" type="submit"><i class="fas fa-search"></i></button>
              </form>
            </div>
          </div>
        </nav>
      </header>
<!-- END 헤더라인 -->
</body>
</html>