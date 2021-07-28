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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        body {
            min-height: 100vh;
            /*background: -webkit-gradient(linear, left bottom, right top, from(#f9fdf9), to(#d3ffae));*/
            /*background: -webkit-linear-gradient(bottom left, #f9fdf9 0%, #d3ffae 100%);*/
            /*background: -moz-linear-gradient(bottom left, #f9fdf9 0%, #d3ffae 100%);*/
            /*background: -o-linear-gradient(bottom left, #f9fdf9 0%, #d3ffae 100%);*/
            /*background: linear-gradient(to top right, #f9fdf9 0%, #d3ffae 100%);*/
        }
        .input-form {
            max-width: 480px;
            /*margin-top: 5px;*/
            padding: 45px;
            background: #fff;
            border: 1px solid #dcdcdc;
            /*-webkit-border-radius: 10px;*/
            /*-moz-border-radius: 10px;*/
            /*border-radius: 10px;*/
            /*-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);*/
            /*-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);*/
            /*box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)*/
        }
        #header {
            height: 100px;
        }

        .btn {
            background : #017143;
        }

    </style>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
</head>

<body>
<div class="container">
    <header id="header" class="my-3 text-center text-small"> <a href="/" class ="md-3"><img  alt="logo가 들어갈 곳" src="/resources/startpage/logo1.png"></a></header>
    <div class="input-form-backgroud row">
        <div class="input-form col-md-8 mx-auto">
            <form class="validation-form" novalidate action="/user/register" method="post">
                <div class="mb-3">
                    <label for="joinId">아이디</label>
                    <input type="text" class="form-control" name="joinId" id="joinId" placeholder="" value="" required>
                    <div id="id_check" class="invalid-feedback"> 아이디를 입력해주세요. </div>
                </div>
                <div class="mb-3">
                    <label for="joinPass">패스워드</label>
                    <input type="text" class="form-control" name="joinPass" id="joinPass" placeholder="" value="" required>
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
                    <div id="email_check" class="invalid-feedback"> 이메일을 입력해주세요. </div>
                </div>
                <div class="mb-3">
                    <label for="joinEmail">휴대폰번호</label>
                    <input type="tel" class="form-control" name="joinPhone" id="joinPhone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="010-****-****" required>
                    <div class="invalid-feedback"> 휴대폰번호를 입력해주세요. </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="joinBirth">생년월일</label>
                        <input type="month" class="form-control" name="joinBirth" id="joinBirth" min="1900-01" max="2021-12"
                               pattern="[0-9]{4}[0-9]{2}" required>
                        <div class="invalid-feedback"> 생년월일을 선택해주세요. </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="joinGender">성별</label>
                        <select class="custom-select d-block w-100" name="joinGender" id="joinGender" required>
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
                <button class="btn btn-success btn-lg btn-block" type="submit">가입 완료</button>
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

    $(document).ready(function () {
        $("#joinId").keyup(function () {
            $.ajax({
                url : "/user/checkId.do",
                type : "POST",
                data : {
                    joinId : $("#joinId").val()
                },
                success : function (result) {
                    if(result == 1) {
                        $("#id_check").attr("class","was-validated");
                        $("#joinId").css("border","1px solid #dc3545");
                        $("#id_check").css({"color":"#dc3545", "font-size" : "80%"});
                        $("#id_check").html("중복된 아이디가 있습니다.");
                        $(".btn").attr("disabled", "disabled");
                    } else {
                        $("#id_check").attr("class","invalid-feedback");
                        $("#joinId").css("border","1px solid #dcdcdc");
                        $("#id_check").html("아이디를 입력해주세요.");
                        $(".btn").removeAttr("disabled");
                    }
                }
            });
        });

        $("#joinEmail").keyup(function () {
            $.ajax({
                url : "/user/checkEmail.do",
                type : "POST",
                data : {
                    joinEmail : $("#joinEmail").val()
                },
                success: function (result) {
                    if(result == 1) {
                        $("#email_check").attr("class","was-validated");
                        $("#joinEmail").css("border","1px solid #dc3545");
                        $("#email_check").css({"color":"#dc3545", "font-size" : "80%"});
                        $("#email_check").html("중복된 이메일이 있습니다.");
                        $(".btn").attr("disabled", "disabled");
                    } else {
                        $("#email_check").attr("class","invalid-feedback");
                        $("#joinEmail").css("border","1px solid #dcdcdc");
                        $("#email_check").html("이메일을 입력해주세요.");
                        $(".btn").removeAttr("disabled");
                    }
                }
            });
        });
    });
</script>
</body>
</html>