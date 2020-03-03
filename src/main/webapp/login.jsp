<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Login</title>
<meta name="description" content="Sufee Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="apple-icon.png">
<link rel="shortcut icon" href="favicon.ico">

<link rel="stylesheet"
	href="/resources/vendors/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/resources/vendors/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="/resources/vendors/themify-icons/css/themify-icons.css">
<link rel="stylesheet"
	href="/resources/vendors/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet"
	href="/resources/vendors/selectFX/css/cs-skin-elastic.css">

<link rel="stylesheet" href="/resources/assets/css/style.css">

<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
	rel='stylesheet' type='text/css'>

</head>

<body class="bg-dark">

	<div class="sufee-login d-flex align-content-center flex-wrap">
		<div class="container">
			<div class="login-content">
				<div class="login-logo">
					<a href="index.html"> <img class="align-content"
						src="/resources/images/logo.png" alt="">
					</a>
				</div>
				<div class="login-form">


					<%-- <form method="POST" action="${contextPath}/login"
						class="form-signin">
						<h2 class="form-heading">Log in</h2>

						<div class="form-group ${error != null ? 'has-error' : ''}">
							<span>${message}</span> <input name="username" type="text"
								class="form-control" placeholder="Username" autofocus="true" />
							<input name="password" type="password" class="form-control"
								placeholder="Password" /> <span>${error}</span> <input
								type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />

							<button class="btn btn-lg btn-primary btn-block" type="submit">Log
								In</button>
							<h4 class="text-center">
								<a href="${contextPath}/registration">Create an account</a>
							</h4>
						</div>
					</form> --%>


					<form method="POST" action="${contextPath}/login">
						<div class="form-group ${error != null ? 'has-error' : ''}">
							<label>Email address</label> 
							<span>${message}</span>
							<input  name="username" type="text" class="form-control" placeholder="Email">
						</div>
						<div class="form-group">
						 <span>${error}</span>
							<label>Password</label> <input name="password" type="password"
								class="form-control" placeholder="Password">
							<input
								type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />	
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"> Remember Me
							</label> <label class="pull-right"> <a href="#">Forgotten
									Password?</a>
							</label>

						</div>
						<button type="submit"
							class="btn btn-success btn-flat m-b-30 m-t-30">Sign in</button>
						<div class="social-login-content">
							<div class="social-button">
								<button type="button"
									class="btn social facebook btn-flat btn-addon mb-3">
									<i class="ti-facebook"></i>Sign in with facebook
								</button>
								<button type="button"
									class="btn social twitter btn-flat btn-addon mt-2">
									<i class="ti-twitter"></i>Sign in with twitter
								</button>
							</div>
						</div>
						<div class="register-link m-t-15 text-center">
							<p>
								Don't have account ? <a href="${contextPath}/registration"> Sign Up Here</a>
							</p>
						</div>
					</form>
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