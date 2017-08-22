<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
@CHARSET "UTF-8";

h4 {
	color: red;
}


th, tr, td {
	padding: 0 10px;
	letter-spacing: 3px;
	text-align: center;
}

#list {
	width: 10%;
	height: 100px;
	float: left;
	text-align: center;
}

#list ul {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 20px;
}

.music {
	list-style: none;
}

#list ul li a {
	background: white;
	line-height: 35px;
	color: black;
	list-style: none;
	text-decoration: none;
}

#content {
	margin-top: 35px;
	width: 70% float: right;
	height: 50px;
}

td {
	border-bottom: 1px solid black;
}

h1 {
	border-bottom: 3px solid black;
}

body {
	font-family: Verdana, sans-serif;
	margin: 0px;
}

html, * {
	margin: 0;
	padding: 0;
}

header {
	background-color: #303C43;
	padding-top: 10px;
	padding-bottom: 7px;
}

.header_menu_ul {
	list-style: none;
}

.menu {
	display: inline;
	padding: 0 205px;
	color: white;
}

.hd_mn_ul_li_span {
	color: white;
}

.header_search {
	width: 100%;
	height: 35px;
	text-align: center;
}

</style>
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
<link href="/som/css/main/menu.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/footer.css" rel="stylesheet" tyep="text/css">
<link href="/som/css/main/mp_header.css" rel="stylesheet" type="text/css">

<link href="/som/css/main/menu.css" rel="stylesheet" type="text/css">
<link href="/som/css/popular/verticalTabs.css" rel="stylesheet"
	type="text/css">
</head>

<body>
<!-- header -->
	<header>
	<div class="header_menu">
		<jsp:include page="a_header.jsp" flush="false"/>
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
							<div class="social-title ">sns 계정으로 LogIn 하기</div>
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

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>

	</div>
	<script type="text/javascript" src="/som/js/main/modal.js"></script>





















	

	<content>
	<div id="content_body">
		<nav>
			<h1>곡명검색</h1>
		</nav>
		
			
				<table>
					<tr>
						<th><input type="checkbox" name="all" class="checkall" id="checkall"></th>
						<th>No</th>
						<th></th>
						<th>곡명</th>
						<th>가수</th>
						<th>앨범명</th>
						<th>뮤비</th>
						<th>다운</th>
						<th>듣기</th>
						<th>가사</th>
						<th>담기</th>
					</tr>
		<form action="addAllPlay.do" method="get" name="my_form">
		<c:forEach var="musicVo" items="${list}">
			<tr>
						<td><input type="checkbox" name="chk" value="${musicVo.m_num}" ></td>
						<td><h4>${musicVo.m_num}</h4></td>
						<td><img src="버튼/캡처.PNG" width="50" height="50"></td>
						<td>${musicVo.m_name}</td>
						<td>${musicVo.m_artist}</td>
						<td>${musicVo.m_album}</td>
						<td><a href="#" onclick="javascript:window.open('getPopularMovie.do?m_musicvideo=${musicVo.m_musicvideo}','g','height=500px, width=700px');"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
		
					<td><input type="button" value="구매" onclick="window.open('buy.do?path=${musicVo.m_path}&fileName=${musicVo.m_name}','get','height=500px, width=500px')"></td>
						<td><a href="#" onclick="javascript:window.open('addPlay.do?m_num=${musicVo.m_num}','aa','height=310px, width=500px')"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><input type="button" value="가사" onclick="window.open('lyrics.do?lyrics=${musicVo.m_lyrics}','get','height=500px, width=500px')"></td>
						<!-- <td><input type="button" value="담기" onclick="window.location='insertPlay.do?email=${email}&m_name=${musicVo.m_name}&m_artist=${musicVo.m_artist}&m_album=${musicVo.m_album}&m_genre=${musicVo.m_genre}&m_lyrics=${musicVo.m_lyrics}'"></td>-->
						<td><input type="button" value="담기" onclick="window.open('selectPlayList.do?m_num=${musicVo.m_num}','get','height=400px, width=400px')"></td>
					</tr>
			
		</c:forEach>
		<input type="submit" value="선택한곡듣기">
		</form>
				</table>
			</div>
		
			
		<div id="content_body">
		<nav>
			<h1>가수명 검색</h1>
		</nav>
		
						
				<table>
					<tr>
						<th><input type="checkbox" name="all" class="checkall" id="checkall"></th>
						<th>No</th>
						<th></th>
						<th>곡명</th>
						<th>가수</th>
						<th>앨범명</th>
						<th>뮤비</th>
						<th>다운</th>
						<th>듣기</th>
						<th>가사</th>
						<th>담기</th>
					</tr>
		<form action="addAllPlay.do" method="get" name="my_form">
		<c:forEach var="musicVo" items="${list2}">
			<tr>
						<td><input type="checkbox" name="chk" value="${musicVo.m_num}" ></td>
						<td><h4>${musicVo.m_num}</h4></td>
						<td><img src="버튼/캡처.PNG" width="50" height="50"></td>
						<td>${musicVo.m_name}</td>
						<td>${musicVo.m_artist}</td>
						<td>${musicVo.m_album}</td>
						<td><a href="#" onclick="javascript:window.open('getPopularMovie.do?m_musicvideo=${musicVo.m_musicvideo}','g','height=500px, width=700px');"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
		
					<td><input type="button" value="구매" onclick="window.open('buy.do?path=${musicVo.m_path}&fileName=${musicVo.m_name}','get','height=500px, width=500px')"></td>
						<td><a href="#" onclick="javascript:window.open('addPlay.do?m_num=${musicVo.m_num}','aa','height=310px, width=500px')"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><input type="button" value="가사" onclick="window.open('lyrics.do?lyrics=${musicVo.m_lyrics}','get','height=500px, width=500px')"></td>
						<!-- <td><input type="button" value="담기" onclick="window.location='insertPlay.do?email=${email}&m_name=${musicVo.m_name}&m_artist=${musicVo.m_artist}&m_album=${musicVo.m_album}&m_genre=${musicVo.m_genre}&m_lyrics=${musicVo.m_lyrics}'"></td>-->
						<td><input type="button" value="담기" onclick="window.open('selectPlayList.do?m_num=${musicVo.m_num}','get','height=400px, width=400px')"></td>
					</tr>
			
		</c:forEach>
		<input type="submit" value="선택한곡듣기">
		</form>
				</table>
			</div>
			
		<div id="content_body">
		<nav>
			<h1>앨범명 검색</h1>
		</nav>
		
				<table>
					<tr>
						<th><input type="checkbox" name="all" class="checkall" id="checkall"></th>
						<th>No</th>
						<th></th>
						<th>곡명</th>
						<th>가수</th>
						<th>앨범명</th>
						<th>뮤비</th>
						<th>다운</th>
						<th>듣기</th>
						<th>가사</th>
						<th>담기</th>
					</tr>
		<form action="addAllPlay.do" method="get" name="my_form">
		<c:forEach var="musicVo" items="${list3}">
			<tr>
						<td><input type="checkbox" name="chk" value="${musicVo.m_num}" ></td>
						<td><h4>${musicVo.m_num}</h4></td>
						<td><img src="버튼/캡처.PNG" width="50" height="50"></td>
						<td>${musicVo.m_name}</td>
						<td>${musicVo.m_artist}</td>
						<td>${musicVo.m_album}</td>
						<td><a href="#" onclick="javascript:window.open('getPopularMovie.do?m_musicvideo=${musicVo.m_musicvideo}','g','height=500px, width=700px');"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
		
					<td><input type="button" value="구매" onclick="window.open('buy.do?path=${musicVo.m_path}&fileName=${musicVo.m_name}','get','height=500px, width=500px')"></td>
						<td><a href="#" onclick="javascript:window.open('addPlay.do?m_num=${musicVo.m_num}','aa','height=310px, width=500px')"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><input type="button" value="가사" onclick="window.open('lyrics.do?lyrics=${musicVo.m_lyrics}','get','height=500px, width=500px')"></td>
						<!-- <td><input type="button" value="담기" onclick="window.location='insertPlay.do?email=${email}&m_name=${musicVo.m_name}&m_artist=${musicVo.m_artist}&m_album=${musicVo.m_album}&m_genre=${musicVo.m_genre}&m_lyrics=${musicVo.m_lyrics}'"></td>-->
						<td><input type="button" value="담기" onclick="window.open('selectPlayList.do?m_num=${musicVo.m_num}','get','height=400px, width=400px')"></td>
					</tr>
			
		</c:forEach>
		<input type="submit" value="선택한곡듣기">
		</form>
				</table>
			</div>
	
			<div id="content_body">
		<nav>
			<h1>장르명 검색</h1>
		</nav>
		
				<table>
					<tr>
						<th><input type="checkbox" name="all" class="checkall" id="checkall"></th>
						<th>No</th>
						<th></th>
						<th>곡명</th>
						<th>가수</th>
						<th>앨범명</th>
						<th>뮤비</th>
						<th>다운</th>
						<th>듣기</th>
						<th>가사</th>
						<th>담기</th>
					</tr>
		<form action="addAllPlay.do" method="get" name="my_form">
		<c:forEach var="musicVo" items="${list4}">
			<tr>
						<td><input type="checkbox" name="chk" value="${musicVo.m_num}" ></td>
						<td><h4>${musicVo.m_num}</h4></td>
						<td><img src="버튼/캡처.PNG" width="50" height="50"></td>
						<td>${musicVo.m_name}</td>
						<td>${musicVo.m_artist}</td>
						<td>${musicVo.m_album}</td>
						<td><a href="#" onclick="javascript:window.open('getPopularMovie.do?m_musicvideo=${musicVo.m_musicvideo}','g','height=500px, width=700px');"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
		
					<td><input type="button" value="구매" onclick="window.open('buy.do?path=${musicVo.m_path}&fileName=${musicVo.m_name}','get','height=500px, width=500px')"></td>
						<td><a href="#" onclick="javascript:window.open('addPlay.do?m_num=${musicVo.m_num}','aa','height=310px, width=500px')"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><input type="button" value="가사" onclick="window.open('lyrics.do?lyrics=${musicVo.m_lyrics}','get','height=500px, width=500px')"></td>
						<!-- <td><input type="button" value="담기" onclick="window.location='insertPlay.do?email=${email}&m_name=${musicVo.m_name}&m_artist=${musicVo.m_artist}&m_album=${musicVo.m_album}&m_genre=${musicVo.m_genre}&m_lyrics=${musicVo.m_lyrics}'"></td>-->
						<td><input type="button" value="담기" onclick="window.open('selectPlayList.do?m_num=${musicVo.m_num}','get','height=400px, width=400px')"></td>
					</tr>
			
		</c:forEach>
		<input type="submit" value="선택한곡듣기">
		</form>
				</table>
			</div>
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