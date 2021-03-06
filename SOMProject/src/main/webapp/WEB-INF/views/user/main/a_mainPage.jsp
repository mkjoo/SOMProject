<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/som/js/main/modal.js"></script>
<!-- API 스크립트 -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script language="javascript">
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
	window.onload = loginResult("${result}");
</script>

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
										window.location = 'login.do';

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



<script type="text/javascript" src="/som/js/main/slider.js"></script>
<script type="text/javascript" src="/som/js/main/login.js"></script>
<script type="text/javascript" src="/som/js/main/menu.js"></script>
<script type="text/javascript" src="/som/js/main/signUp.js"></script>


<link href="/som/css/main/modal.css?ver=1" rel="stylesheet"
	type="text/css">
<link href="/som/css/main/login.css?ver=1" rel="stylesheet"
	type="text/css">
<link href="/som/css/main/slider.css?ver=1" rel="stylesheet"
	type="text/css">
<link href="/som/css/main/content.css?ver=1" rel="stylesheet"
	type="text/css">
<link href="/som/css/main/menu.css?ver=1" rel="stylesheet"
	type="text/css">
<link href="/som/css/main/footer.css?ver=1" rel="stylesheet"
	tyep="text/css">
<link href="/som/css/main/mp_header.css?ver=1" rel="stylesheet"
	type="text/css">

</head>

<body>
	<!-- header -->
	<header>
	<div class="header_menu">
		<jsp:include page="../../admin/a_header.jsp" flush="false" />
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

								<a href="javascript:loginWithKakao()" id="custom-login-btn"
									class="button-kakao"><img
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
							<table>
								<tr>
									<td>
										<div class="loginbox-textbox">
											<input type="text" name="email" class="form-control"
												placeholder="Email">
										</div>
									</td>
									<td rowspan="2" width="60px" float="left"><input
										type="image" src="/som/images/main/login.png"
										class="btn btn-primary btn-block"
										style="width: 50px; height: 50px;"></td>

								</tr>
								<tr>
									<td>
										<div class="loginbox-textbox">
											<input type="password" name="pass" class="form-control"
												placeholder="Password">
										</div>
									</td>

								</tr>

							</table>
						</form>
						<div class="loginbox-signup">
							<a href="#"
								onclick="javascript:window.open('gumseck.do','get','width=600px,height=600px');">ID/Password
								찾기</a>
						</div>

						<div class="loginbox-signup">
							<a href="#" onclick="openSignUp()">회원가입</a>
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

	<script type="text/javascript" src="/som/js/main/modal.js"></script>


	<!-- navigation -->
	<nav>

	<div class="slideshow-container">
		<div class="mySlides fade">
			<div class="numbertext">1 / 3</div>
			<div class="c">
				<div class="slide_num">
					<h2>최신가요</h2>
					</br> </br>
					<c:forEach var="newestList" items="${newestList}">
						<li><img alt="" src="${newestList.src}" width="35"
							height="35" style="vertical-align: middle;">&nbsp;&nbsp;${newestList.m_name}&nbsp;&nbsp;-&nbsp;&nbsp;${newestList.m_artist}</li>
					</c:forEach>

				</div>
			</div>
			<div class="text">music 1</div>
		</div>

		<div class="mySlides fade">
			<div class="numbertext">2 / 3</div>
			<div class="c">
				<div class="slide_num">
					<h2>인기가요</h2>
					</br> </br>

					<c:forEach var="popularList" items="${popularList}">
						<li><img alt="" src="${popularList.src}" width="35"
							height="35" style="vertical-align: middle;">&nbsp;&nbsp;${popularList.m_name}&nbsp;&nbsp;-&nbsp;&nbsp;${popularList.m_artist}</li>
					</c:forEach>
				</div>
			</div>
			<div class="text">music 2</div>
		</div>

		<div class="mySlides fade">
			<div class="numbertext">3 / 3</div>
			<div class="c">
				<div class="slide_num">
					<h2>버스킹</h2>
					</br> </br>
			<c:forEach var="buskingList" items="${buskingList}">
				<li><img alt="" src="${buskingList.src}" width="35" height="35"
					style="vertical-align: middle;">&nbsp;&nbsp;${buskingList.m_name}&nbsp;&nbsp;-&nbsp;&nbsp;${buskingList.m_artist}</li>
			</c:forEach>
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
	<div class="num">
		<div class="slide_num" id="최신가요">
			<h2>최신가요</h2>
			</br> </br>
			<c:forEach var="newestList" items="${newestList}">
				<li><img alt="" src="${newestList.src}" width="35" height="35"
					style="vertical-align: middle;">&nbsp;&nbsp;${newestList.m_name}&nbsp;&nbsp;-&nbsp;&nbsp;${newestList.m_artist}</li>
			</c:forEach>


		</div>
		<div class="slide_num" id="인기가요">
			<h2>인기가요</h2>
			</br> </br>
			<c:forEach var="popularList" items="${popularList}">
				<li><img alt="" src=${popularList.src } width="35" height="35"
					style="vertical-align: middle;">&nbsp;&nbsp;${popularList.m_name}&nbsp;&nbsp;-&nbsp;&nbsp;${popularList.m_artist}</li>
			</c:forEach>

		</div>
		<div class="slide_num" id="버스킹">
			<h2>버스킹</h2>
			</br> </br>

			<c:forEach var="buskingList" items="${buskingList}">
				<li><img alt="" src="${buskingList.src}" width="35" height="35"
					style="vertical-align: middle;">&nbsp;&nbsp;${buskingList.m_name}&nbsp;&nbsp;-&nbsp;&nbsp;${buskingList.m_artist}</li>
			</c:forEach>


		</div>
		<div class="slide_num" id="게시판">
			<li><h2>게시판</h2></li> </br> </br>

			<c:forEach var="vo" items="${noticeList}" begin="0" step="1" end="0">
				<font id="not">[ 공지사항 ]</font>
				</br>
				</br>
				<a text-align="center"
					href="noticeContent.do?num=${vo.num}&pageNum=1">${vo.subject}</a>
				</br>
				<font id="writer">${vo.writer}</font>
				</br>
				<font id="date">${vo.formatdate}</font>
				<br>
			</c:forEach>
		</div>
	</div>
	</content>

	<!-- footer -->
	<footer style="text-align: justify">
	<hr>
	<div class="">
		<div class="" style="text-align: center;">Copyright ⓒ 2017 Apple
			Inc. 모든 권리 보유.</div>
		<div class="" style="text-align: center;">
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