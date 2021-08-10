<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록</title>
</head>
<body>
<form action="/notice/regist" method="post">
<input type="text" name="noticeName">
<input type="text" name="noticeCommentWriter">
<input type="text" name="noticeCommentContent">
<button type="submit">제출하기</button>
</form>
</body>
</html>