<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> <style>
    body { min-height: 100vh; background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c)); background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%); background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%); background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%); background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%); } .input-form { max-width: 680px; margin-top: 80px; padding: 32px; background: #fff; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px; -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15); -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15); box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15) } </style>
</head>

<body>
    <div class="container">
        <div class="input-form-backgroud row">
            <div class="input-form col-md-12 mx-auto">
                <h4 class="mb-3">회원가입</h4>
                <form class="validation-form" novalidate action="/user/register" method="post">
                    <div class="mb-3">
                        <label for="joinId">아이디</label>
                        <input type="text" class="form-control" name="joinId" id="joinId" placeholder="" value="" required>
                        <div class="invalid-feedback"> 아이디를 입력해주세요. </div>
                    </div>
                    <div class="mb-3">
                        <label for="joinPass">패스워드</label>
                        <input type="password" class="form-control" name="joinPass" id="joinPass" placeholder="" value="" required>
                        <div class="invalid-feedback"> 패스워드를 입력해주세요. </div>
                    </div>
                    <div class="mb-3">
                        <label for="joinName">이름</label>
                        <input type="text" class="form-control" name="joinName" id="joinName" placeholder="" value="" required>
                        <div class="invalid-feedback"> 이름을 입력해주세요. </div>
                    </div>
                    <div class="mb-3">
                        <label for="joinEmail">이메일</label>
                        <input type="email" class="form-control" name="joinEmail" id="joinEmail" placeholder="you@example.com" required>
                        <div class="invalid-feedback"> 이메일을 입력해주세요. </div>
                    </div>
                    <div class="mb-3">
                        <label for="joinEmail">휴대폰번호</label>
                        <input type="tel" class="form-control" name="joinPhone" id="joinPhone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="010-****-****" required>
                        <div class="invalid-feedback"> 휴대폰번호를 입력해주세요. </div>
                    </div>
                    <div class="mb-3">
                        <label for="joinBirth">생년월일</label>
                        <input type="month" class="form-control" name="joinBirth" id="joinBirth" min="1900-01" max="2021-09"
                               pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}" placeholder="1991-03" required>
                        <div class="invalid-feedback"> 생년월일을 선택해주세요. </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8 mb-3">
                            <label for="joinGender">성별</label>
                            <select class="custom-select d-block w-100" name="joinGender" id="joinGender">
                                <option value=""></option>
                                <option>남</option>
                                <option>여</option>
                            </select>
                            <div class="invalid-feedback"> 성별을 선택해주세요. </div>
                        </div>
                    </div>
                    <hr class="mb-4">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="aggrement" required>
                        <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
                    </div>
                    <div class="mb-4"></div>
                    <button class="btn btn-primary btn-lg btn-block" type="submit">가입 완료</button>
                </form>
            </div>
        </div>
        <footer class="my-3 text-center text-small"> <p class="mb-1">&copy; 2021 StudyTap</p> </footer>
    </div>
    <script>
        window.addEventListener('load', () => {
            const forms = document.getElementsByClassName('validation-form');
            Array.prototype.filter.call(forms, (form) => {
                form.addEventListener('submit', function (event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                    }, false);
            });
            }, false);
    </script>
</body>



<%--<script type="text/javascript">--%>
<%--    $(document).ready(function(){--%>
<%--        // 취소--%>
<%--        $(".cencle").on("click", function(){--%>
<%--            location.href = "/user/login";--%>
<%--        })--%>

<%--        // 회원가입--%>
<%--        $(".btn").on("click", function(){--%>
<%--            if($("#userId").val()==""){--%>
<%--                alert("아이디를 입력해주세요.");--%>
<%--                $("#userId").focus();--%>
<%--                return false;--%>
<%--            }--%>
<%--            if($("#userName").val()==""){--%>
<%--                alert("이름을 입력해주세요.");--%>
<%--                $("#userName").focus();--%>
<%--                return false;--%>
<%--            }--%>
<%--            if($("#userEmail").val()==""){--%>
<%--                alert("이메일을 입력해주세요.");--%>
<%--                $("#userEmail").focus();--%>
<%--                return false;--%>
<%--            }--%>
<%--            if($("#userPw").val()==""){--%>
<%--                alert("비밀번호를 입력해주세요.");--%>
<%--                $("#userPw").focus();--%>
<%--                return false;--%>
<%--            }--%>
<%--            if($("#userPwChk").val()==""){--%>
<%--                alert("비밀번호 확인을 입력해주세요.");--%>
<%--                $("#userPwChk").focus();--%>
<%--                return false;--%>
<%--            }--%>
<%--        });--%>
<%--    })--%>
<%--</script>--%>
<%--<body>--%>
<%--<div class="register-box-body">--%>
<%--    <p class="login-box-msg">회원가입 페이지</p>--%>

<%--    <form action="/user/register" method="post">--%>
<%--        <div class="form-group has-feedback">--%>
<%--            <input class="form-control" placeholder="아이디" type="text" id="userId" name="userId" />--%>
<%--            <span class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>--%>
<%--        </div>--%>
<%--        <div class="form-group has-feedback">--%>
<%--            <input class="form-control" placeholder="이름" type="text" id="userName" name="userName" />--%>
<%--            <span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
<%--        </div>--%>
<%--        <div class="form-group has-feedback">--%>
<%--            <input class="form-control" placeholder="이메일" type="email" id="userEmail" name="userEmail" />--%>
<%--            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>--%>
<%--        </div>--%>
<%--        <div class="form-group has-feedback">--%>
<%--            <input class="form-control" placeholder="비밀번호" type="password" id="userPw" name="userPw" />--%>
<%--            <span class="glyphicon glyphicon-lock form-control-feedback"></span>--%>
<%--        </div>--%>
<%--        <div class="form-group has-feedback">--%>
<%--            <input class="form-control" placeholder="비밀번호 확인" id="userPwChk"/>--%>
<%--            <span class="glyphicon glyphicon-log-in form-control-feedback"></span>--%>
<%--        </div>--%>
<%--        <div class="row">--%>
<%--            <div class="col-xs-8">--%>
<%--                <div class="checkbox icheck">--%>
<%--                    <label>--%>
<%--                        <input type="checkbox"> 약관에 <a href="#">동의</a>--%>
<%--                    </label>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-xs-4">--%>
<%--                <button type="submit" class="btn btn-primary btn-block btn-flat">가입</button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        &lt;%&ndash;        <div class="form-group has-feedback">&ndash;%&gt;--%>
<%--        &lt;%&ndash;            <button class="btn btn-success" type="submit" id="submit">회원가입</button>&ndash;%&gt;--%>
<%--        &lt;%&ndash;            <button class="cencle btn btn-danger" type="button">취소</button>&ndash;%&gt;--%>
<%--        &lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--    </form>--%>

<%--    <div class="social-auth-links text-center">--%>
<%--        <p>- 또는 -</p>--%>
<%--        <a href="#" class="btn btn-block btn-social btn-facebook btn-flat">--%>
<%--            <i class="fa fa-facebook"></i> 페이스북으로 가입--%>
<%--        </a>--%>
<%--        <a href="#" class="btn btn-block btn-social btn-google btn-flat">--%>
<%--            <i class="fa fa-google-plus"></i> 구글 계정으로 가입--%>
<%--        </a>--%>
<%--    </div>--%>

<%--    <a href="/user/login" class="text-center">로그인</a>--%>
<%--</div>--%>
<%--<script>--%>
<%--    $(function () {--%>
<%--        $('input').iCheck({--%>
<%--            checkboxClass: 'icheckbox_square-blue',--%>
<%--            radioClass: 'iradio_square-blue',--%>
<%--            increaseArea: '20%' // optional--%>
<%--        });--%>
<%--    });--%>
<%--</script>--%>
<%--</body>--%>

</html>