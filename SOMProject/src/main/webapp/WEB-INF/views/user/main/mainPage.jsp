<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="/som/css/main/modal.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/login.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/slider.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/mp_header.css" rel="stylesheet"
	type="text/css">
	
	<script type="text/javascript" src="/som/js/main/modal.js"></script>
	<script type="text/javascript" src="/som/js/main/slider.js"></script>
	<script type="text/javascript" src="/som/js/main/login.js"></script>

</head>
<body>
	<!-- header -->
	<header>
	<div class="header_menu">
		<ul class="header_menu_ul" style="color: white">
			<li class="menu"><button class="btn btn-primary dropdown-toggle"
					type="button" data-toggle="dropdown">
					<img src="/som/images/main/메뉴바.png" width="40" height="40" alt="" />
				</button>
				<ul class="dropdown-menu">
					<li><button href="#">최신가요</button></li>
					<li><button href="#">인기가요</button></li>
					<li><button href="#">버스킹</button></li>
					<li><button href="#">게시판</button></li>
				</ul></li>
			<li class="menu"><a href="mainPage.jsp" title="Home"
				class="hd_logo"><img src="/som/images/main/som_logo.png"
					width="100" height="40"></a></li>
			<li class="menu" id=""><button type="button"
					class="btn btn-primary btn-lg" data-toggle="modal"
					data-target="#myModal">Login/Join</button></li>
		</ul>
	</div>
	</header>

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


	<div class="header_search">
		<input id="seach" type="search" placeholder="Search Music"> <input
			type="submit" value="Search"> <br />
	</div>


	<!-- navigation -->
	<nav>
	<div class="slideshow-container">
		<div class="mySlides fade">
			<div class="numbertext">1 / 3</div>
			<img src="/som/images/main/flower.jpg" style="width: 100%">
			<div class="text">music 1</div>
		</div>

		<div class="mySlides fade">
			<div class="numbertext">2 / 3</div>
			<img src="/som/images/main/pink_guy-wallpaper-1920x1280.jpg"
				style="width: 100%">
			<div class="text">music 2</div>
		</div>

		<div class="mySlides fade">
			<div class="numbertext">3 / 3</div>
			<img src="/som/images/main/KakaoTalk_20170718_143925493.png"
				style="width: 100%">
			<div class="text">music 3</div>
		</div>

		<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a class="next"
			onclick="plusSlides(1)">&#10095;</a>

	</div>
	<br>
	<div style="text-align: center">
		<span class="dot" onclick="currentSlide(1)"></span> <span class="dot"
			onclick="currentSlide(2)"></span> <span class="dot"
			onclick="currentSlide(3)"></span>
	</div>
	</nav>
	<!-- section -->
	<section>
	<div class="slideshow-container">
		<div class="mySlides fade">
			<div class="numbertext">최신음악</div>
			<img src="/som/images/main/flower.jpg" style="width: 100%">
			<div class="text">music 1</div>
		</div>

		<div class="mySlides fade">
			<div class="numbertext">최신음악</div>
			<img src="/som/images/main/pink_guy-wallpaper-1920x1280.jpg"
				style="width: 100%">
			<div class="text">music 2</div>
		</div>

		<div class="mySlides fade">
			<div class="numbertext">최신음악</div>
			<img src="/som/images/main/KakaoTalk_20170718_143925493.png"
				style="width: 100%">
			<div class="text">music 3</div>
		</div>

		<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a class="next"
			onclick="plusSlides(1)">&#10095;</a>

	</div>
	<br>
	<div style="text-align: center">
		<span class="dot" onclick="currentSlide(1)"></span> <span class="dot"
			onclick="currentSlide(2)"></span> <span class="dot"
			onclick="currentSlide(3)"></span>
	</div>
	</section>
	
	
	<!-- footer -->
	<footer>
	<hr>
	<div class="">
		<div class="">Copyright © 2017 Apple Inc. 모든 권리 보유.</div>
		<div class="">
			<a class="" href="">개인정보 취급방침</a> <a class="" href="">약관</a> <a
				class="" href="">판매 및 환불</a> <a class="" href="">법적 고지</a> <a
				class="" href="">사이트 맵</a>
		</div>
	</div>
	<br />
	<p style="margin-top: -20px; margin-bottom: 20px; color: #999;">
		<span style="white-space: nowrap;">사업자등록번호 : 120-95-0515 |</span> <span
			style="white-space: nowrap;">통신판매업신고번호 : 제 2011-서울강서-95051호 |</span>
		<span style="white-space: nowrap;">대표이사 : Swanson Choi |</span> <span
			style="white-space: nowrap;">주소 : 서울 특별시 강서구 가로공원로 184-11 |</span> <span
			style="white-space: nowrap;">대표전화 : 010-9252-2095 |</span> <span
			style="white-space: nowrap;">팩스 : 02-9252-2095</span>
	</p>
	</footer>

	<script src="/som/js/main/slider.js" type="text/javascript"></script>
</body>
</html>
