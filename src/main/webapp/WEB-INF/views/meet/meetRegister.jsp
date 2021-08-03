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
		<table>
			<tr>
				<td>스터디 이름</td><td><input type="text" name="meetName"></td>
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
					<!-- <input type="time" name="meetStudyTime" min="09:00" max="22:00"> -->
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