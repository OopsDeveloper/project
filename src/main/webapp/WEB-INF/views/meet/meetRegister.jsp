<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<%@include file="/WEB-INF/views/includes/header.jsp"%>
<style type="text/css">
	table, th, td{
		border: 1px solid;
		font-size: 20px;
	}
	.study{
		width:600px;
    	height:600px;
    	margin:0 auto;
    	background-color: #fff; 
	}
	.study .studyContent{
		width:400px;
	    margin:0 auto;
	    margin-top: 60px;
	    /* background-color: white; */
	}
</style>
<meta charset="UTF-8">
<title>StudyTab</title>
</head>
<body>
<div class="study">
<form action="/meet/meetRegister" method="post">
	<div class="studyContent">
		<table class="table">
			<tr>
				<td>스터디 이름</td><td><input class="form-control" type="text" name="meetName"></td>
			</tr>
			<tr>
				<td>스터디장</td><td><input type="text" name="meetGroupName"></td>
			</tr>
			<tr>
				<td>스터디 종류</td>
				<td>
					<select name="meetCategoryCode">
						<option value="">--카테고리--</option>
						<option value="CB01">IT</option>
						<option value="CB02">영어</option>
						<option></option>
					</select>
				</td>
			</tr>
			<tr>
				<td>스터디 위치</td>
				<td>
					<select name="meetGu">
						<option value="">--지역구--</option>
						<option value="GB01">유성구</option>
						<option value="GB02">서구</option>
						<option></option>
					</select>
					<select name="meetDong">
						<option value="">--동--</option>
						<option value="DB01">도룡동</option>
						<option value="DB02">신성동</option>
						<option></option>
					</select>
				</td>
			</tr>
			<tr>
				<td>스터디 난이도</td>
				<td>
					상<input type="radio" name="meetLevel" value="t">
					중<input type="radio" name="meetLevel" value="m">
					하<input type="radio" name="meetLevel" value="b">
				</td>
			</tr>
			<tr>
				<td>스터디 인원</td>
				<td>
					<input type="number" min="2" max="10" name="meetCount" value="">
				</td>
			</tr>
			<tr>
				<td>연락처</td>
				<td>
					<input type="text" name="meetPhone" value="">
				</td>
			</tr>
			<tr>
				<td>스터디 날짜</td>
				<td>
					<select name="meetStudyDate">
						<option value="">--선택하세요--</option>
						<option value="every">매일</option>
						<option value="week">매주</option>
						<option value="month">매달</option>
						<option value="year">매년</option>
					</select>
					<input type="time" name="meetStudyTime">
				</td>
			</tr>
			<tr>
				<td>상세내용</td>
				<td>
					<textarea id="content" name="meetDetail" rows="20" cols="30"></textarea>
				</td>
			</tr>
			<tr>
				<td><input type="submit"></td>
				<td>
				</td>
			</tr>
		</table><!--table마지막  -->
	</div>
</form><!--form마지막  -->
</div><!--study 마지막  -->
</body>
</html>