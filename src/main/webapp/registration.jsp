<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!doctype html>

<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Registration</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="/resources/vendors/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/vendors/themify-icons/css/themify-icons.css">
    <link rel="stylesheet" href="/resources/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="/resources/vendors/selectFX/css/cs-skin-elastic.css">

    <link rel="stylesheet" href="/resources/assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

</head>

<body class="bg-dark">


    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <a href="index.html">
                        <img class="align-content" src="/resources/images/logo.png" alt="">
                    </a>
                </div>
                <div class="login-form">
                	
                	
                	<form:form method="POST" modelAttribute="userForm" class="form-signin">
			            
			            <spring:bind path="username">
			                <div class="form-group ${status.error ? 'has-error' : ''}">
			                    <form:input type="text" path="username" class="form-control" placeholder="Username"
			                                autofocus="true"></form:input>
			                    <form:errors path="username"></form:errors>
			                </div>
			            </spring:bind>
			
			            <spring:bind path="password">
			                <div class="form-group ${status.error ? 'has-error' : ''}">
			                    <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
			                    <form:errors path="password"></form:errors>
			                </div>
			            </spring:bind>
			
			            <spring:bind path="passwordConfirm">
			                <div class="form-group ${status.error ? 'has-error' : ''}">
			                    <form:input type="password" path="passwordConfirm" class="form-control"
			                                placeholder="Confirm your password"></form:input>
			                    <form:errors path="passwordConfirm"></form:errors>
			                </div>
			            </spring:bind>
			            <div class="checkbox"><label><input type="checkbox"> Agree the terms and policy</label></div>

           				 <button class="btn btn-primary btn-flat m-b-30 m-t-30" type="submit">Submit</button>
           				 <div class="social-login-content">
                                        <div class="social-button">
                                            <button type="button" class="btn social facebook btn-flat btn-addon mb-3"><i class="ti-facebook"></i>Register with facebook</button>
                                            <button type="button" class="btn social twitter btn-flat btn-addon mt-2"><i class="ti-twitter"></i>Register with twitter</button>
                                        </div>
                                    </div>
                                    <div class="register-link m-t-15 text-center">
                                        <p>Already have account ? <a href="#"> Sign in</a></p>
                                    </div>
        			</form:form>
                
                </div>
            </div>
        </div>
    </div>

    <script src="/resources/vendors/jquery/dist/jquery.min.js"></script>
    <script src="/resources/vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="/resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="/resources/assets/js/main.js"></script>

</body>

</html>