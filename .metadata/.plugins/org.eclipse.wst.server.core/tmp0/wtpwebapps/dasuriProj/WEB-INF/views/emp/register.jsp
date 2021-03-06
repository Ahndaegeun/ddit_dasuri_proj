<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Register</title>

    <!-- Custom fonts for this template-->
    <link href="../../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../../resources/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">직원 등록</h1>
                            </div>
                            <form:form modelAttribute="emp" method="post" class="user" action="/emp/register">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <form:input path="empNo" readonly="true" class="form-control form-control-user"
                                            placeholder="직원번호" />
                                        <font color="red" size="1"><form:errors path="empNo"/></font>
                                    </div>
                                    <div class="col-sm-6">
                                        <form:input path="nm" class="form-control form-control-user"
                                            placeholder="이름" />
                                        <font color="red" size="1"><form:errors path="nm"/></font>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <form:input path="hp" type="email" class="form-control form-control-user"
                                        placeholder="연락처"/>
                                    <font color="red" size="1"><form:errors path="hp"/></font>
                                </div>
                                <div class="form-group">
                                    <form:input path="postNo" class="form-control form-control-user"
                                        placeholder="우편번호"/>
                                    <font color="red" size="1"><form:errors path="postNo"/></font>
                                </div>
                                <div class="form-group">
                                    <form:input path="addr" class="form-control form-control-user"
                                        placeholder="주소"/>
                                    <font color="red" size="1"><form:errors path="addr"/></font>
                                </div>
                                <div class="form-group">
                                    <form:input path="addr2" class="form-control form-control-user"
                                        placeholder="상세주소"/>
                                    <font color="red" size="1"><form:errors path="addr2"/></font>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <form:input path="password" type="password" class="form-control form-control-user"
                                            placeholder="비밀번호" />
	                                    <font color="red" size="1"><form:errors path="password"/></font>
                                    </div>
                                    <div class="col-sm-6">
                                        <input id="password2" type="password" class="form-control form-control-user"
                                            placeholder="비밀번호 확인" />
                                        <font color="red" id="idFont" style="display: none;" size="1">동일한 비밀번호를 입력해 주세요</font>
                                    </div>
                                </div>
                                
                                <a href="#" id="idSubmit" class="btn btn-primary btn-user btn-block">
                                    Register Account
                                </a>
                                
                            </form:form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="forgot-password.html">Forgot Password?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="login.html">Already have an account? Login!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    	<div class="modal-dialog">
    		<div class="modal-content">
	    		<div class="modal-header">
	    			<h4 class="modal-title" id="myModalLabel">DDIT</h4>
	    			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	    		</div>
	    		<div class="modal-body">success</div>
	    		<div class="modal-footer">
	    			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	    		</div>
    		</div>
    	</div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../../resources/vendor/jquery/jquery.min.js"></script>
    <script src="../../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../../resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../../resources/js/sb-admin-2.min.js"></script>
    
    <script type="text/javascript">
    	$(function() {
    		$('#idSubmit').on('click', function() {
    			if($('#password').val() !== $('#password2').val()) {
    				$('.modal-body').html("비밀번호가 다릅니다.")
    				$('#myModal').modal("show")
    				$("#idFont").css("display", "block")
    				return
    			}
    			
    			$('.user').submit()    				
    		})
    	})
    </script>

</body>

</html>