<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SOM | Registration Page</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link type="text/css" rel="stylesheet" href="/som/css/regForm.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
</head>
<body>

	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary btn-lg"
		data-toggle="modal" data-target="#myModal">Launch demo modal
	</button>

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Login title</h4>
				</div>
				<div class="modal-body">



					<div class="login-container animated fadeInDown bootstrap snippets">
						<div class="loginbox bg-white">
							<div class="loginbox-title">SIGN IN</div>
							<div class="loginbox-social">
								<div class="social-title ">Connect with Your Social
									Accounts</div>
								<div class="social-buttons">
									<a href="" class="button-facebook"> <i
										class="social-icon fa fa-facebook"></i>
									</a> <a href="" class="button-twitter"> <i
										class="social-icon fa fa-twitter"></i>
									</a> <a href="" class="button-google"> <i
										class="social-icon fa fa-google-plus"></i>
									</a>
								</div>
							</div>
							<div class="loginbox-or">
								<div class="or-line"></div>
								<div class="or">OR</div>
							</div>
							<div class="loginbox-textbox">
								<input type="text" class="form-control" placeholder="Email">
							</div>
							<div class="loginbox-textbox">
								<input type="text" class="form-control" placeholder="Password">
							</div>
							<div class="loginbox-forgot">
								<a href="">Forgot Password?</a>
							</div>
							<div class="loginbox-submit">
								<input type="button" class="btn btn-primary btn-block"
									value="Login">
							</div>
							<div class="loginbox-signup">
								<a href="#register.html">Sign Up With Email</a>
							</div>
						</div>
						<div class="logobox"></div>
					</div>




				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>