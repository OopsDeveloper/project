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
		/* border: 1px solid; */
		font-size: 20px;
	}
	.study{
		width:700px;
    	height:600px;
    	margin:0 auto;
    	background-color: #fff; 
	}
	.study .studyContent{
		width:600px;
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
				<td>스터디 이름</td><td><input class="form-control" type="text" name="meetName" placeholder="스터디 이름"></td>
			</tr>
			<tr>
				<td>스터디장</td><td><input class="form-control" type="text" name="meetGroupName" placeholder="당신의 이름"></td>
			</tr>
			<tr>
				<td>스터디 종류</td>
				<td>
					<select class="form-control" name="meetCategoryCode">
						<option value="">스터디 종류</option>
						<option value="CB01">IT</option>
						<option value="CB02">영어</option>
						<option></option>
					</select>
				</td>
			</tr>
			<tr>
				<td>스터디 위치</td>
				<td>
					<input class="form-control" type="text" name="meetPostcode" placeholder="우편번호"><br>
					<input class="form-control" type="text" name="meetRoadAddress" placeholder="도로명주소"><br>
					<input class="form-control" type="text" name="meetJibunAddress" placeholder="지번주소"><br>
					<input class="form-control" type="text" name="meetDetailAddress" placeholder="상세주소"><br>
					<input class="form-control btn-success" type="button" onclick="korea_address()" value="우편번호 찾기"><br>
				</td>
				
			</tr>
			<tr>
				<td>스터디 난이도</td>
				<td>
					<label class="radio-inline">
						상<input  class="form-check-input" type="radio" name="meetLevel" value="t">&nbsp&nbsp
					</label>
					<label class="radio-inline">
						중<input  class="form-check-input" type="radio" name="meetLevel" value="m">&nbsp&nbsp
					</label>
					<label class="radio-inline">
						하<input  class="form-check-input" type="radio" name="meetLevel" value="b">&nbsp&nbsp
					</label>
				</td>
			</tr>
			<tr>
				<td>스터디 인원</td>
				<td>
					<input class="form-control" type="number" min="2" max="10" name="meetCount" value="">
				</td>
			</tr>
			<tr>
				<td>연락처</td>
				<td>
					<input class="form-control" type="text" name="meetPhone" value="">
				</td>
			</tr>
			<tr>
				<td>스터디 날짜</td>
				<td>
					<select class="form-control" name="meetStudyDate">
						<option value="">스터디 주기</option>
						<option value="every">매일</option>
						<option value="week">매주</option>
						<option value="month">매달</option>
						<option value="year">매년</option>
					</select>
					<input class="form-control" type="time" name="meetStudyTime">
				</td>
			</tr>
			<tr>
				<td>상세내용</td>
				<td>
					<textarea class="form-control" id="content" name="meetDetail" rows="10" cols="30"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan=2><button class="form-control btn-success">제출하기</button></td>
			</tr>
		</table><!--table마지막  -->
	</div>
</form><!--form마지막  -->
</div><!--study 마지막  -->
<script src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function korea_address(){
		new daum.Postcode({
			oncomplete: function(data){
				var roadAddr = data.roadAddress; //도로명 주소 변수
				var extraRoadAddr = '';  //참고 항목 변수
				
				//법정동명이 있을 경우 추가한다.(법정리는 제외)
				//법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if(data.bname != '' && /[동|로|가]$/g.test(data.bname)){
					extraRoadAddr += data.bname;
				}
				
				//건물명이 있고, 공동주택일 경우 추가한다.
				if(data.buildingName != '' && data.apartment === 'Y'){
					extraRoadAddr += (extraRoadAddr !== '' ? '.'+data/buildingName : data.buildingName);
				}
				
				//표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if(extraRoadAddr !== ''){
					extraRoadAddr = '('+ extraRoadAddr + ')';
				}
				
				document.getElementsByName('meetPostcode')[0].value = data.zonecode;
				document.getElementsByName('meetRoadAddress')[0].value = roadAddr;
				document.getElementsByName('meetJibunAddress')[0].value = data.jibunAddress;
			}
		}).open();
	}
</script>
</body>
</html>