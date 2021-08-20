<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/list.css">
</head>

<title>스터디탭 게시판</title>
<body>
<!-- START 위 게시판 -->
    <div id="content-wrap">
<article id="Information1">
  <h6> 홈 > 게시판 > 스터디게시판 </h6>
  <hr class="hr1" width="30%">
</article>   
</div>  

<article id="Information">

  <p id=sub2>스터디 게시판</p>
<hr class="hr2" width="100%">
	<!-- start 검색-->
	  <div class='row'>
          <div class='col-lg-12'>
            <form id='searchForm' action="/article/list" method="get">
              <select name='type' class="form-select form-select-sm mb-1" aria-label=".form-select-lg example" style="width:300px;height:40px;">
                <option value="" <c:out value="${pageMaker.cri.type == null ? 'selected' : ''}"/>>---카테고리---</option>
                <option value="T" <c:out value="${pageMaker.cri.type eq 'T' ? 'selected' : ''}"/>>스터디명</option> <!-- 제목 -->
                <option value="W" <c:out value="${pageMaker.cri.type eq 'W' ? 'selected' : ''}"/>>스터디장</option> <!-- 글쓴이 -->
                <option value="TC" <c:out value="${pageMaker.cri.type eq 'A' ? 'selected' : ''}"/>>지역구</option>
                <option value="TW" <c:out value="${pageMaker.cri.type eq 'TW' ? 'selected' : ''}"/>>제목 or 내용</option> 
                <option value="TWC" <c:out value="${pageMaker.cri.type eq 'TWC' ? 'selected' : ''}"/>>제목 or 내용 or 작성자</option>
              </select>
          		 <div style=" float: right;">
	              <input type="text" name="keyword" value='<c:out value="${pageMaker.cri.keyword}"/>'/>
	              <input type="hidden" name="pageNum" value='<c:out value="${pageMaker.cri.pageNum}"/>'>
	              <input type="hidden" name="amount" value='<c:out value="${pageMaker.cri.amount}"/>'>
	              <button class='btn btn-default'>Search</button>
	             </div> 
            </form>
          </div>
        </div> 
	<!-- end 검색    -->	


<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">
       <div class="panel-heading">
       
      </div>

      <div class="panel-body">
        <table class="tabletest" border="1">
          <thead>
          <tr>
            <th>번호</th>
            <th>지역구</th>
            <th>스터디명</th>
            <th>스터디장</th>
            <th>등록일</th>
          </tr>
          </thead>
          
          <tbody>
          <c:forEach items="${articles}" var="board">
            <tr class="odd gradeX">
              <td><c:out value="${board.meetNo}"/></td>
              <td><c:out value="${board.meetJibunAddress}"/></td>
              <td><a href="get?articleNo=${board.meetNo}">${board.meetGroupName}</a></td>
              <td><c:out value="${board.meetName}"/></td>
              <td><c:out value="${board.meetRegistrationDate}"/></td>
            </tr>
          </c:forEach>
          </tbody>
        </table>

		<br><br>
		
		
		
		<!-- <div style="text-align: center;">
		<nav aria-label="Page navigation example">
		  <ul class="pagination">
		    <li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
		    <li class="page-item"><a class="page-link" href="#">1</a></li>
		    <li class="page-item"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item"><a class="page-link" href="#">4</a></li>
		    <li class="page-item"><a class="page-link" href="#">5</a></li>
		    <li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
		  </ul>
		</nav>
		</div> -->
	<div class = "box-footer">
		<div class = "text-center">
			<ul class = "pagination">
				<c:if test = "${pageMaker.prev}"> 
					<li><a href = "${path}/article/list?page=${pageMaker.startPage - 1}">이전</a> </li>
				</c:if>
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var = "idx">
					<li <c:out value="${pageMaker.criteria.page == idx ? 'class=active' : '' }" />>
						<a href = "${path}/article/list?page=${idx}">${idx}">${idx}</a>
						</li>
				</c:forEach>
				<c:if test ="${pageMaker.next && pageMaker.endPage > 0}">
					<li><a href="${path}/article/list?page=${pageMaker.endPage + 1}">다음</a></li>
				</c:if>
			</ul>
		</div>
	</div>		
		
        <!-- /.table-responsive -->
       

        <%--  <div class='pull-right'>
          <ul class="pagination">
            <c:if test="${pageMaker.prev}">
              <li class="page-item">
                <a class="page-link" href="${pageMaker.startPage - 1}" tabindex="-1">Previous</a>
              </li>
            </c:if>

            <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
              <li class="page-item ${pageMaker.cri.pageNum == num ? "active" : ""} ">
                <a class="page-link" href="${num}"><c:out value="${num}"/></a></li>
            </c:forEach>

            <c:if test="${pageMaker.next}">
              <li class="page-item">
                <a class="page-link" href="${pageMaker.endPage + 1}" tabindex="-1">Next</a>
              </li>
            </c:if>
          </ul>
        </div> --%>

        <%-- <form id='actionForm' action="/article/list" method="get">
          <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
          <input type="hidden" name="amount" value="${pageMaker.cri.amount}">
          <input type="hidden" name="type" value='<c:out value="${pageMaker.cri.type}"/>'>
          <input type="hidden" name="keyword" value='<c:out value="${pageMaker.cri.keyword}"/>'>
        </form> --%>

      </div>
      <!-- /.panel-body -->
    </div>
    <!-- /.panel -->
  </div>
  <!-- /.col-lg-12 -->
</div>

<!-- /.row -->
</article>

<!--  <div id="myModal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Modal body text goes here.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Save changes</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>  -->

</body>
</html>
 
<script type="text/javascript">

  $(document).ready(function() {
    var result = '<c:out value="${result}"/>';

    checkModal(result);

    history.replaceState({},null,null); //현재 주소창에서 보관하고 있는 모든 데이터를 지움

    function checkModal(result) {
      if(result === '' || history.state) {
        return;
      }

      if(result === 'success') {
        $(".modal-body").html("정상적으로 처리되었습니다.");
      }else if( parseInt(result) > 0 ) {
        $(".modal-body").html("게시글 " + parseInt(result) + " 번이 등록되었습니다.");
      }

      $("#myModal").modal("show");
    }

    $("#regBtn").click(function() {
      window.location = "/article/write";
    });

    var actionForm = $("#actionForm");
    $(".page-link").on("click",function(e) {
      e.preventDefault();

      var targetPage = $(this).attr("href");

      console.log(targetPage);

      actionForm.find("input[name='pageNum']").val(targetPage);
      actionForm.submit();
    });

    /* $(".move").on("click" , function(e) {
      e.preventDefault();

      var targetAno = $(this).attr("href");

      console.log(targetAno);

      actionForm.append("<input type='hidden' name='articleNo' value='" + targetAno +"'>");
      actionForm.attr("action" , "/article/get");
      actionForm.submit();

    }) */

    var searchForm = $("#searchForm");
    $("#searchForm button").on("click", function(e) {
      if(!searchForm.find("option:selected").val()){
        alert("검색종류를 선택하세요");
        return false;
      }

      if(!searchForm.find("input[name='keyword']").val()){
        alert("키워드를 입력하세요");
        return false;
      }

      searchForm.find("input[name='pageNum']").val("1");
      e.preventDefault();

      searchForm.submit();
    });

  });

</script>

<%@include file="../includes/footer.jsp"%>
