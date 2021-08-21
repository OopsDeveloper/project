<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../includes/header.jsp" %>
<head>
	 <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&display=swap" rel="stylesheet">
    <link
    href="https://fonts.googleapis.com/css?family=Oswald:700|Poppins"
    rel="stylesheet"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/get.css">
</head>


<div >
	<article id="Information1">
		<%-- <h6 id=sub2> ${article.meetGroupName}</h6> --%>
	</article>  
</div>  

	<article id="Information">
<!-- /.panel-headingg -->
<div class="container">


  <div class="middle">
    <div class="middle-left"> 
    <table class="tabletest">
          <tbody>
          <tr>
          
            <th>스터디명</th> <td>${article.meetGroupName}</td>
          </tr>
          <tr>
            <th>등록일시</th> <td>${article.meetRegistrationDate}</td>
          </tr>
          <tr>
            <th>카테고리</th> <td>
               <%-- ${article.meetCategoryCode == Category.categoryName? Category.categoryCode:" "} --%>
               ${article.meetCategoryCode}
				<%-- ${article.CategoryName} 
            	${category.categoryCode} --%>
            	<%-- <input type="hidden" name="joinId" value="${user.joinId}"> --%>
            </td>
          </tr>
          <tr>
            <th>시간대</th>  <td>${article.meetStudyTime}</td>
          </tr>
          <tr>  
            <th>난이도</th>  <td>${article.meetLevel}</td>
          </tr> 
          <tr>  
            <th>스터디 인원</th>  <td>${article.meetCount}</td>
          </tr>   
          <tr>  
            <th>연락처</th>  <td>${article.meetPhone}</td>
          </tr> 
          </tbody>
        </table>

    <div class="middle-right">

	    <div class="middle-right-1">
	      	<div class="box" >
		    	<img class="profile" src="${pageContext.request.contextPath}/resources/images/cat.JPG" >
		</div> 
	</div>
      <div class="middle-right-2"> <span>매너온도</span> 
<!--       <span><input type="button" class="tempbutton" value="50"></span> -->
      <span><progress value="50" max="100"></progress></span>
      </div>
      <div class="middle-right-3"> 
      	<div> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      	<input type="button" onclick="btn('/article/mystudyList?meetNo=${article.meetNo }&joinId=${user.joinId}')" class="addbutton" value="모임신청하기"></div>
      	
      	<br><br>
      	<span>※ 승인을 받은 후 모임 참여가 가능합니다.</span>
      </div>
	
    </div>
    <br><br>
	
  </div>
  

  <!-- <div class="bottom"> <span>BOTTOM (1000 x 100) <br/> #5D5D5D;</span> </div> -->
</div>

		
		<div class="panel-body">
        <div class="form-group">
          <label></label>
          <input class="form-control" type = "hidden"name="articleNo" readonly="readonly" value='<c:out value="${article.meetNo}"/>'>
        </div>
        <br><br>
    	<div><textarea class = "textarea" cols="123" rows="25" readonly style="resize: none;">${article.meetDetail}</textarea><br></div>
    	
    	<hr class = "hr3">
    	
    	<div id = "comments">
    		<div id = "comment-head" class ="comment-row">
    			<span id = "comments-count">2</span> 댓글 </div>
    	<hr>
    	<div class = "comment-row">
    		<textarea id="new-comment" name="new_comment" rows="5" cols="123" placeholder="코멘트" style="resize: none;"></textarea>
    	<button type ="submit" onclick="submitComment()" class = "addbutton2">보내기</button> </div>
    	<hr>
    	<div class = "comment-row">
    		<div class = "comment-date">2021-08-16 00:00</div>
    		<div class = "comment-content">study Comment 1</div> </div>
    	<hr>
    	<div class = "comment-row">
    		<div class = "comment-date">2021-08-16 01:00</div>
    		<div class = "comment-content">study Comment 2</div> </div>
    		</div>
    	<hr>
    	</div>
    		
          </div>
      <!-- /.panel-body -->
    </div>
    
    <!-- /.panel -->
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
</article>

</div>
<script>
function btn(url){
var answer;
		answer = confirm('이 모임을 신청하시겠습니까?');
		if(answer == true){
			location = url;
		}
	}
</script>
        <!-- <script type="text/javascript">

          var actionForm = $("#actionForm");

          $(".listBtn").click(function(e) {
            e.preventDefault();
            actionForm.find("input[name='articleNo']").remove();
            actionForm.submit();
          });

          $(".modBtn").click(function(e) {
            e.preventDefault();
            actionForm.attr("action" , "/article/modify");
            actionForm.submit();
          })
        </script> -->

<script type="text/javascript">
function warnEmpty(){
	alert("Hi study");
}
function dateToString(date) {
	const dateString = date.toISOString();
	const dateToString = dateString.subString(0,10) + 
		" " + dateString.substring(11,19);
	return dateToString;
}
function submitComment() {
	const newcommentEL = document.getElementById("new-comment");
	const newcomment = newcommentEL.value.trim();
	
	if(newcomment){
		const dateEL = document.createElement('div');
		dateEL.classList.add("comment-date");
		const dateString = dateToString(new Date());
		dateEL.innerText = dateString;
		
		const contentEL = document.createElement('div');
		contentEL.classList.add('comment-content');
		contentEL.innerText = newcomment;
		
		const commentEL = document.createElement('div');
		commentEL.classList.add('comment-row');
		commentEL.appendChild(dateEL);
		commentEL.appendChild(contentEL);
		
		document.getElementById('comments').appendChild(commentEL);
		newcommentEL.value = "";
		
		const countEL = document.getElementById('comments-count');
		const count = countEL.innerText;
		countEL.innerText = parseInt(count) + 1;
	}
	else warnEmpty();}
</script>



<%-- <%@include file="../includes/footer.jsp"%> --%>
