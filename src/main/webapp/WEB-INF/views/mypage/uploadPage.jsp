<%--
  Created by IntelliJ IDEA.
  User: goyongsu
  Date: 2021/08/11
  Time: 4:48 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form enctype="multipart/form-data" action="imageUpload.do" method="post">
        <input type="file" name="file_path" >
        <input type="submit" value="send it">
    </form>
</body>
</html>
