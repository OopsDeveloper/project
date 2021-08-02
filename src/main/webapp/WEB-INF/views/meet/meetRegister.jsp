<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/views/includes/header.jsp"%>
<style type="text/css">
	table, th, td{
		border: 1px solid;
		font-size: 20px;
	}
	input{
		
	}
	.study{
		width:100%;
    	height:100%;
	}
	.study .studyContent{
		width:400px;
	    margin:0 auto;
	    margin-top: 60px;
	}
</style>
<meta charset="EUC-KR">
<title>StudyTab</title>
</head>
<body>
<div class="study">
<form action="/meet/meetRegister" method="post">
	<div class="studyContent">
		<table>
			<tr>
				<td>스터디 이름</td><td><input type="text" name="meetGroupName"></td>
			</tr>
			<tr>
				<td>스터디 종류</td>
				<td>
					<select name="meetCategoryCode">
						<option value="">--카테고리--</option>
						<option value="it">IT</option>
						<option value="eng">영어</option>
						<option></option>
					</select>
				</td>
			</tr>
			<!-- <tr>
				<td>스터디 위치</td>
				<td>
					<select name="gu">
						<option value="">--지역구--</option>
						<option value="it">유성구</option>
						<option value="eng">서구</option>
						<option></option>
					</select>
					<select name="dong">
						<option value="">--동--</option>
						<option value="it">도룡동</option>
						<option value="eng">신성동</option>
						<option></option>
					</select>
				</td>
			</tr> -->
			<tr>
				<td>스터디 난이도</td>
				<td>
					상<input type="radio" name="meetLevel" value="top">
					중<input type="radio" name="meetLevel" value="middle">
					하<input type="radio" name="meetLevel" value="bottom">
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
					<select name="studyDate">
						<option value="">--선택하세요--</option>
						<option value="every">매일</option>
						<option value="week">매주</option>
						<option value="month">매달</option>
						<option value="year">매년</option>
					</select>
					<input type="time" name="studyTime" min="09:00" max="22:00">
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