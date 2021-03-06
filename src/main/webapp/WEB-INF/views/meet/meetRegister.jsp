<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
	.eMsg{
		font-size: 15px;
		color:red;
	}
</style>
<meta charset="UTF-8">
<title>StudyTab</title>
</head>
<body>
<div class="study">
<form:form action="/meet/meetRegister" modelAttribute="meetVO">
	<div class="studyContent">
		<table class="table">
			<tr>
				<td>????????? ??????</td>
				<td>
					<form:hidden path="meetName" value="${user.joinId}"/>
					<form:input path="meetGroupName" cssClass="form-control"/>
					<form:errors path="meetGroupName" cssClass="eMsg"/>
				</td>
			</tr>
			<tr>
				<td>????????? ??????</td>
				<td>
					<form:select path="meetCategoryCode" cssClass="form-control">
						<form:option value="">--????????? ??????--</form:option>
						<form:options items="${category}" itemValue="categoryCode" itemLabel="categoryName"/>
					</form:select>
					<form:errors path="meetCategoryCode" cssClass="eMsg"/>
				</td>
			</tr>
			<tr>
				<td>????????? ??????</td>
				<td>
					<form:input path="meetPostcode" cssClass="form-control" placeholder="??????????????? ??????????????????" readonly="true"/>
					<form:errors path="meetPostcode" cssClass="eMsg"/><br>
					
					<form:input path="meetRoadAddress" cssClass="form-control" placeholder="?????????????????? ??????????????????" readonly="true"/>
					<form:errors path="meetRoadAddress" cssClass="eMsg"/><br>
					
					<form:input path="meetJibunAddress" cssClass="form-control" placeholder="??????????????? ??????????????????" readonly="true"/>
					<form:errors path="meetJibunAddress" cssClass="eMsg"/><br>
					
					<form:input path="meetDetailAddress" cssClass="form-control" placeholder="??????????????? ??????????????????" />
					<form:errors path="meetDetailAddress" cssClass="eMsg"/><br>
					
					<input class="form-control btn-success" type="button" onclick="korea_address()" value="???????????? ??????"><br>
				</td>
				
			</tr>
			<tr>
				<td>????????? ?????????</td>
				<td>
					<label class="radio-inline">
						???<input  class="form-check-input" type="radio" name="meetLevel" value="t">&nbsp&nbsp
					</label>
					<label class="radio-inline">
						???<input  class="form-check-input" type="radio" name="meetLevel" value="m">&nbsp&nbsp
					</label>
					<label class="radio-inline">
						???<input  class="form-check-input" type="radio" name="meetLevel" value="b">&nbsp&nbsp
					</label>
				</td>
			</tr>
			<tr>
				<td>????????? ??????</td>
				<td>
					<form:input type="number" path="meetCount" cssClass="form-control"/>
					<form:errors path="meetCount" cssClass="eMsg"/>
				</td>
			</tr>
			<tr>
				<td>?????????</td>
				<td>
					<form:input path="meetPhone" cssClass="form-control"/>
					<form:errors path="meetPhone" cssClass="eMsg"/>
				</td>
			</tr>
			<tr>
				<td>????????? ?????????</td>
				<td>
					<form:input type="time" path="meetStudyTime" cssClass="form-control"/>
					<form:errors path="meetStudyTime" cssClass="eMsg"/>
				</td>
			</tr>
			<tr>
				<td>????????????</td>
				<td>
					<form:textarea path="meetDetail" rows="10" cols="30" cssClass="form-control"/>
					<form:errors path="meetDetail" cssClass="eMsg"/>
				</td>
			</tr>
			<tr>
				<td colspan=2><button class="form-control btn-success">????????????</button></td>
			</tr>
		</table><!--table?????????  -->
	</div>
</form:form><!--form?????????  -->
</div><!--study ?????????  -->
<script src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function korea_address(){
		new daum.Postcode({
			oncomplete: function(data){
				var roadAddr = data.roadAddress; //????????? ?????? ??????
				var extraRoadAddr = '';  //?????? ?????? ??????
				
				//??????????????? ?????? ?????? ????????????.(???????????? ??????)
				//???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
				if(data.bname != '' && /[???|???|???]$/g.test(data.bname)){
					extraRoadAddr += data.bname;
				}
				
				//???????????? ??????, ??????????????? ?????? ????????????.
				if(data.buildingName != '' && data.apartment === 'Y'){
					extraRoadAddr += (extraRoadAddr !== '' ? '.'+data/buildingName : data.buildingName);
				}
				
				//????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
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