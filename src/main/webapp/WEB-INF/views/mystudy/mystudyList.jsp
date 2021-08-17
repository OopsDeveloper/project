<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/views/includes/header.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${join}
<table border="1">
	<c:forEach items="${join}" var="joinlist">
		<tr>
			<td>${joinlist.meetDetail}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>