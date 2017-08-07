<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>#즐거운 음악세상! SOM★☆# 마이페이지 입니다.</title>
<link type="text/css" rel="stylesheet"
	href="/som/css/myPage/myPage_style.css">
<link type="text/css" rel="stylesheet" href="/som/css/main/menu.css">

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
							<a class="dropmenu" href="#">최신가요</a> <a class="dropmenu"
								href="#">인기가요</a> <a class="dropmenu" href="#">버스킹</a> <a
								class="dropmenu" href="#">게시판</a>
						</div>
					</div>
				</li>
				<li class="menu"><a href="mainPage.jsp" title="Home"
					class="hd_logo"><img src="/som/images/main/som_logo.png"
						width="70" height="25"></a></li>
				<li class="menu"><button id="myBtn">Login/Join</button></li>
			</ul>
		</div>
	</header>
	<br>
	<h2>MyPage</h2>
	<hr />
	<br>
	<section>
		<div class="container-fluid"></div>
		<div id="box1">
			<table id="member_info" border="0" width="300" height="200">
				<tr>
					<td><a href="myPage_acc.do" id="mem_info"><img
							src="/som/images/myPage/member_info.jpg">회원정보</a></td>
				</tr>
			</table>
		</div>

		<div id="box2">
			<table id="myPlaylist" border="0" width="300" height="200">
				<tr>
					<td><a href="Playlist.jsp" id="playlist"><img
							src="/som/images/myPage/myPlaylist.jpg">내 Playlist</a></td>
				</tr>
			</table>
		</div>



		<div id="box3">
			<table id="myMusic" border="0" width="300" height="200">
				<tr>
					<td><a href="myMusic_list.jsp" id="m_list"><img
							src="/som/images/myPage/myMusic.jpg">내 Music</a></td>
				</tr>
			</table>
		</div>



		<div id="box4">
			<table id="myPoint" border="0" width="300" height="200">
				<tr>
					<td><a href="myPoint.jsp" id="point_pay"><img
							src="/som/images/myPage/mypoint.jpg">내 Point</a></td>
				</tr>
			</table>
		</div>

	</section>
	<footer>
		<br>
		<br>
		<div id="footer">
			<p id="about">
				Back to <a href="../jsp/myPage_home.jsp">main</a> / Go to <a
					href="../jsp/myMusic_list.jsp">Home</a>
			</p>
			<br>
			<hr />
			<table border="0" id="foot1" width="870" height="50">
				<tr>
					<td>회사소개&nbsp; |</td>
					<td>이용약관&nbsp; |</td>
					<td>개인정보처리방침&nbsp; |</td>
					<td>청소년보호정책&nbsp; |</td>
					<td>제휴/프로모션문의&nbsp; |</td>
					<td>이메일주소무단수집거부&nbsp; |</td>
					<td>파트너센터&nbsp; |</td>
					<td>사업자정보확인</td>
				</tr>
			</table>
			<table border="0" id="foot2" width="1000" height="80">
				<tr>
					<td>서울시 성동구 무학로2길 54 신방빌딩&nbsp; |</td>
					<td>대표 : 주민경,신가람,김한누리,최시온&nbsp; |</td>
					<td>사업자등록번호 : ***-**-*****&nbsp; |</td>
					<td>통신판매업 신고번호 : 제2017-서울성동-*****호</td>
				</tr>
				<tr>
					<td>문의전화(평일 13:00~15:00) : 1588-0000&nbsp; |</td>
					<td>이메일 : mymusic_som@gmail.com&nbsp; |</td>
					<td colspan="2" align="left">ⓒ2017. SOM Entertainment, Inc,
						ALL RIGHTS RESERVED.</td>
				</tr>
			</table>
			<br> <br>
		</div>
	</footer>
</body>
</html>