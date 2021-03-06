<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  <!-- API 스크립트 -->
   <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
   <script type="text/javascript">
      Kakao.init('df328bb008ac1bbc251e428accb4cb91');
      function loginWithKakao() {
         Kakao.Auth
               .login({
                  success : function(authObj) {
                     alert('success');
                     alert(JSON.stringify(authObj));
                     Kakao.API
                           .request({
                              url : '/v1/user/me',
                              success : function(res) {
                                 alert(res.properties.nickname
                                       + '님 환영합니다.');
                                 document.getElementById("myBtn").innerHTML = res.kaccount_email;
                                 window.location='login.do?'+res.kaccount_email;
                                 
                              },
                              fail : function(error) {
                                 alert(JSON.stringify(error));
                              }
                           });
                  },
                  fail : function(err) {
                     alert('fail');
                     alert(JSON.stringify(err));
                  }
               });
      }
   </script>
   
  <script>
function loginResult(result) {
	if (result == "resultNoId") {
		alert('아디가 틀려요');
	}
	if (result == "resultNoPass") {
		alert('비번이 틀려요');
	}
	if (result == "resultOK") {
		alert('로그인 성공');
	}
}
function openSignUp() {
	window.open("regForm1.do", "_blank", "width=550, height=800");
}
window.onload = loginResult("${result}");

</script>
<script type="text/javascript" src="/som/js/main/slider.js"></script>
<script type="text/javascript" src="/som/js/main/login.js"></script>
<script type="text/javascript" src="/som/js/main/menu.js"></script>
<script type="text/javascript" src="/som/js/main/signUp.js"></script>


<link href="/som/css/main/modal.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/login.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/slider.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/content.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/menu.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/footer.css" rel="stylesheet" tyep="text/css">
<link href="/som/css/main/mp_header.css" rel="stylesheet" type="text/css">

</head>

<body>
	<!-- header -->
	<header>
	<div class="header_menu">
		<ul class="header_menu_ul" style="color: white">
			<li class="menu">

				<div class="dropdown">

					<button onclick="myFunction()" class="dropbtn">
						<img src="/som/images/main/메뉴바.png" width="25" height="25" alt="" />
					</button>

					<div id="myDropdown" class="dropdown-content">
						<a class="dropmenu" href="newest.do">최신가요</a> <a class="dropmenu" href="#">인기가요</a>
						<a class="dropmenu" href="#">버스킹</a> <a class="dropmenu" href="noticeList.do">게시판</a>
					</div>
				</div>
			</li>
			<li class="menu"><a href="mainPage_home.do" title="Home"
				class="hd_logo"><img src="/som/images/main/som_logo.png"
					width="70" height="25"></a></li>
			<li class="menu"><button id="myBtn">Login/Join</button></li>
			
		</ul>
	</div>
	</header>

	<!-- The Modal -->
   <div id="myModal" class="modal">

      <!-- Modal content -->
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close">
               <span aria-hidden="true">&times;</span>
            </button>

            <h4 class="modal-title" id="myModalLabel">Login Page</h4>
         </div>

         <div class="modal-body">
            <div class="login-container animated fadeInDown bootstrap snippets">
               <div class="loginbox bg-white">
                  <div class="loginbox-title">Log In</div>
                  <div class="loginbox-social">
                     <div class="social-title">sns 계정으로 LogIn 하기</div>
                     <div class="social-buttons">

                        <a href="javascript:loginWithKakao()" id="custom-login-btn" class="button-kakao"><img
                           src="/som/images/main/KakaoLogo.png"
                           class="social-icon fa fa-kakao" width="30px" height="30px"
                           style="margin-top: 20%;"></img></a> <a
                           href="https://www.google.co.uk/" class="button-google"><img
                           src="/som/images/main/GoogleLogo.png"
                           class="social-icon fa fa-google" width="30px" height="30px"
                           style="margin-top: 20%;"></img></a> <a href="https://twitter.com/"
                           class="button-twitter"><img
                           src="/som/images/main/TwitterLogo.png"
                           class="social-icon fa fa-twitter" width="50px" height="50px"
                           style="margin-top: 4%;"></img></a>
                     </div>
                  </div>
                  <div class="loginbox-or">
                     <div class="or-line"></div>
                     <div class="or">OR</div>
                  </div>
                  <form method="post" action="loginProc.do">
                     <div class="loginbox-textbox">
                        <input type="text" name="email" class="form-control"
                           placeholder="Email">
                     </div>
                     <div class="loginbox-textbox">
                        <input type="text" name="pass" class="form-control"
                           placeholder="Password">
                     </div>

                     <div class="loginbox-submit">
                        <input type="submit" class="btn btn-primary btn-block"
                           value="Login">
                     </div>
                  </form>
                  <div class="loginbox-forgot">
                     <a href="">ID/Password 찾기</a>
                  </div>


                  <div class="loginbox-signup">
                     <button onclick="openSignUp()">회원가입</button>
                  </div>
               </div>
               <div class="logobox"></div>
            </div>


	<script type="text/javascript" src="/som/js/main/modal.js"></script>



	<div class="header_search">
		<input id="seach" type="search" placeholder="Search Music"> <input
			type="submit" value="Search"> <br />
	</div>


	<!-- navigation -->
	<nav>
	<div class="slideshow-container">
		<div class="mySlides fade">
			<div class="numbertext">1 / 3</div>
			<div class="c">
				<img class="nm" src="/som/images/main/flower.jpg" width="50%">
				<div class="nm" id="nm_album">
					<h1>오빠</h1>
					<h3>(PROD.Brother Su)</h3>
					<br />유승우, 산들(B1A4)<br />발라드
				</div>
			</div>
			<div class="text">music 1</div>
		</div>

		<div class="mySlides fade">
			<div class="numbertext">2 / 3</div>
			<div class="c">
				<img class="nm"
					src="/som/images/main/pink_guy-wallpaper-1920x1280.jpg" width="50%">
				<div class="nm" id="nm_album">
					<h1>오빠</h1>
					<h3>(PROD.Brother Su)</h3>
					<br />유승우, 산들(B1A4)<br />발라드
				</div>
			</div>
			<div class="text">music 2</div>
		</div>

		<div class="mySlides fade">
			<div class="numbertext">3 / 3</div>
			<div class="c">
				<img class="nm"
					src="/som/images/main/KakaoTalk_20170718_143925493.png" width="50%">
				<div class="nm" id="nm_album">
					<h1>오빠</h1>
					<h3>(PROD.Brother Su)</h3>
					<br />유승우, 산들(B1A4)<br />발라드
				</div>
			</div>
			<div class="text">music 3</div>
		</div>

		<!-- <a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a class="next"
         onclick="plusSlides(1)">&#10095;</a> -->

	</div>
	<br>
	<div style="text-align: center">
		<span class="dot" onclick="currentSlide(1)"></span> <span class="dot"
			onclick="currentSlide(2)"></span> <span class="dot"
			onclick="currentSlide(3)"></span>
	</div>
	</nav>

	<content>
	<ul class="num">
		<div class="slide_num" id="최신가요">

			<h2>최신가요</h2>
			</br> </br>
			<li><img alt="" src="images/myPage/레드벨벳.PNG" width="35"
				height="35">&nbsp;&nbsp;|빨간 맛 - 레드벨벳</li>
			<li><img alt="" src="images/myPage/레드벨벳.PNG" width="35"
				height="35">&nbsp;&nbsp;|빨간 맛 - 레드벨벳</li>
			<li><img alt="" src="images/myPage/레드벨벳.PNG" width="35"
				height="35">&nbsp;&nbsp;|빨간 맛 - 레드벨벳</li>
			<li><img alt="" src="images/myPage/레드벨벳.PNG" width="35"
				height="35">&nbsp;&nbsp;|빨간 맛 - 레드벨벳</li>
			<li><img alt="" src="images/myPage/레드벨벳.PNG" width="35"
				height="35">&nbsp;&nbsp;|빨간 맛 - 레드벨벳</li>



		</div>
		<div class="slide_num" id="인기가요">
			<h2>인기가요</h2>
			</br> </br>
			<li><img src="images/myPage/지코.PNG" width="35" height="35">&nbsp;&nbsp;|Artist
				- 지코</li>
			<li><img src="images/myPage/지코.PNG" width="35" height="35">&nbsp;&nbsp;|Artist
				- 지코</li>
			<li><img src="images/myPage/지코.PNG" width="35" height="35">&nbsp;&nbsp;|Artist
				- 지코</li>
			<li><img src="images/myPage/지코.PNG" width="35" height="35">&nbsp;&nbsp;|Artist
				- 지코</li>
			<li><img src="images/myPage/지코.PNG" width="35" height="35">&nbsp;&nbsp;|Artist
				- 지코</li>

		</div>
		<div class="slide_num" id="버스킹">
			<h2>버스킹</h2>
			</br> </br>
			<li><img src="images/myPage/블랙핑크.PNG" width="35" height="35">&nbsp;&nbsp;|마지막처럼
				- 블랭핑크</li>
			<li><img src="images/myPage/블랙핑크.PNG" width="35" height="35">&nbsp;&nbsp;|마지막처럼
				- 블랭핑크</li>
			<li><img src="images/myPage/블랙핑크.PNG" width="35" height="35">&nbsp;&nbsp;|마지막처럼
				- 블랭핑크</li>
			<li><img src="images/myPage/블랙핑크.PNG" width="35" height="35">&nbsp;&nbsp;|마지막처럼
				- 블랭핑크</li>
			<li><img src="images/myPage/블랙핑크.PNG" width="35" height="35">&nbsp;&nbsp;|마지막처럼
				- 블랭핑크</li>

		</div>
		<div class="slide_num" id="게시판">
			<li><h2>게시판</h2></li>
			<p></p>
			<p></p>
			</br> </br>
			<h3>
				[공지사항]
				<p></p>
				최신 공지글이 여기에
				<p></p>
				보여지게 됩니다.
			</h3>
			2017.8.7
		</div>
	</ul>
	</content>

	<!-- footer -->
	<footer>
	<hr>
	<div class="">
		<div class="">Copyright ⓒ 2017 Apple Inc. 모든 권리 보유.</div>
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