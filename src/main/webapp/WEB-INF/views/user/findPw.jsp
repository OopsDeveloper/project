<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>StudyTap</title>

    <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Custom Fonts -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- jQuery -->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>

    <style>
        .btn {
            background : #017143;
        }

        #header {
            height: 90px;
            font-size : 20px;
            border : 1px solid #017143;
        }

        input[type=button] {
            margin-top: 20px;
            height: 40px;
            color : white;
            background-color: #017143;
        }

        #headerBtn {
            position: relative;
        }
        #idBtn {
            position: absolute;
            margin-top: 20px;
            width: 160px;
            color : white;
            left: 41%;
            top: 50%;
            background-color: #017143;
        }
        #pwBtn {
            position: absolute;
            margin-top: 20px;
            width: 160px;
            color : white;
            left: 50%;
            top: 50%;
            background-color: #017143;
        }
        #caption {
            font-size: 45px;
            border: 1px solid #017143;
            border-radius: 10px;
            background-color: #017143;
            color: white;
        }
        .login-panel {
            margin-top: 10%;
        }

        label {
            font-size: 20px;
            color:#f7ecb5;
        }

    </style>

</head>

<body>
    <div id="header" class="my-3 text-center text-small">
        <div id="headerBtn" class="my-3 text-center text-small">
            <button id="idBtn" class="btn btn-lg btn-success btn-block" onclick="idBtn()">
                <i class="fa fa-sign-in"></i> 아이디 찾기
            </button>
            <button id="pwBtn" class="btn btn-lg btn-success btn-block" onclick="pwBtn()">
                <i class="fa fa-sign-in"></i> 비밀번호 찾기
            </button>
        </div>
    </div>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-panel">
                <div id="caption" class="text-center">
                    비밀번호 찾기
                </div>
                <div class="panel-body">
                    <form id="findIdForm" action="${path}/user/findPw.do" method="post" role="form">
                        <fieldset>
                            <div class="form-group">
                                <input type="text" name="joinId" class="form-control" placeholder="아이디" autofocus>
                            </div>
                            <div class="form-group">
                                <input type="text" name="joinName" class="form-control" placeholder="이름" autofocus>
                            </div>
                            <div class="form-group">
                                <input type="text" id="joinPhone" name="joinPhone" class="form-control" placeholder="휴대폰 번호" autofocus>
                            </div>
                            <button type="submit" class="btn btn-lg btn-success btn-block">
                                <i class="fa fa-sign-in"></i> 비밀번호 찾기
                            </button>
                            <button id="register" class="btn btn-lg btn-success btn-block">
                                <i class="fa fa-sign-in"></i> 회원가입
                            </button>
                            <button id="login" class="btn btn-lg btn-success btn-block">
                                <i class="fa fa-sign-in"></i> 로그인
                            </button>
                        </fieldset>
                    </form>
                    <c:if test="${check == 0}">
                        <script>
                            $("#findIdForm").html("");
                            $("#caption").html("비밀번호 변경");
                        </script>
                        <form id="findIdForm" action="${path}/user/updatePw.do" method="post" role="form">
                            <fieldset>
                                <div class="form-group">
                                    <input type="text" name="joinId" class="form-control" placeholder="아이디" autofocus>
                                </div>
                                <div class="form-group">
                                    <input type="password" id="joinPw" name="joinPw" class="form-control" placeholder="새로운 비밀번호" autofocus>
                                </div>
                                <div class="form-group">
                                    <input type="password" id="confirmPw" name="confirmPw" class="form-control" placeholder="새로운 비밀번호 확인" autofocus>
                                </div>
                                <button type="submit" class="btn btn-lg btn-success btn-block">
                                    <i class="fa fa-sign-in"></i> 비밀번호 변경
                                </button>
                            </fieldset>
                        </form>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    $("#joinPhone").blur(function () {
        var num = $("#joinPhone").val();
        blur(num);
    });

    function blur(num) {
        num = num.replace(/[^0-9]/g, '');
        var tmp = '';
        tmp += num.substr(0, 3);
        tmp += '-';
        tmp += num.substr(3, 4);
        tmp += '-';
        tmp += num.substr(7);
        $("#joinPhone").val(tmp);
    }

    function idBtn() {
        location.href="/user/findId.do"
    }

    function pwBtn() {
        location.href="/user/findPw.do"
    }
</script>
</html>

