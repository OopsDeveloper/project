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

    <style>
        .btn {
            background : #017143;
        }
    </style>

</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-panel">
                <div class="my-3 text-center text-small">
                    <a href="/" class ="md-3"><img  alt="logo가 들어갈 곳" src="/resources/startpage/logo1.png"></a>
                </div>
                <div class="panel-body">
                    <form id="loginForm" action="${path}/user/loginPost" method="post" role="form">
                        <fieldset>
                            <div class="form-group">
                                <input type="text" name="joinId" class="form-control" placeholder="아이디" autofocus>
                            </div>
                            <div class="form-group">
                                <input type="password" name="joinPass" class="form-control" placeholder="패스워드">
                            </div>
                            <button type="submit" class="btn btn-lg btn-success btn-block">
                                <i class="fa fa-sign-in"></i> 로그인
                            </button>
                            <button type="button" class="btn btn-lg btn-success btn-block">
                                <i class="fa fa-sign-in"></i> 회원가입
                            </button>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%--${path}/user/register --%>

<!-- jQuery -->
<script src="/resources/vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="/resources/dist/js/sb-admin-2.js"></script>

<script>
    var msg = "${msg}";
    if (msg === "REGISTERED") {
        alert("회원가입이 완료되었습니다. 로그인해주세요~");
    }



    $("button[type=submit]").on("click", function (e) {
        e.preventDefault();
        console.log("click");
        console.log($(".form-group").find("input[name='userId']").val() == "");
        console.log($(".form-group").find("input[name='userPw']").val() == "");

        if($(".form-group").find("input[name='userId']").val() == "") {
            alert("아이디를 입력해주세요.");
            return;
        } else if ($(".form-group").find("input[name='userPw']").val() == "") {
            alert("비밀번호를 입력해주세요.");
            return;
        }
        $("#loginForm").submit();
    })


    $("button[type=button]").on("click",function (e) {
        e.preventDefault();
        console.log("click");
        location.href="/user/register";
    });
</script>
</body>
</html>