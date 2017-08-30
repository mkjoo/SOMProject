<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
function updateResult(value) {
	if (value == "success") {
		alert('구매성공');
	}
}
window.onload = updateResult("${value}");


function myFunction2() {
    document.getElementById("myDropdown2").classList.toggle("show");
}
window.onclick = function(event) {
	  if (!event.target.matches('.dropbtn2')) {

	    var dropdowns = document.getElementsByClassName("dropdown2-content2");
	    var i;
	    for (i = 0; i < dropdowns.length; i++) {
	      var openDropdown = dropdowns[i];
	      if (openDropdown.classList.contains('show')) {
	        openDropdown.classList.remove('show');
	      }
	    }
	  }
	}
	
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
<link href="/som/css/main/mp_header.css" rel="stylesheet" type="text/css">
<link href="/som/css/myPage/myPage_style.css" rel="stylesheet" type="text/css">
<link href="/som/css/board/board_style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<input type="button" value="나의뮤직"
		onclick="javascript:window.open('musicPlayer.do','aa','width=310px height=500px');">
	<!-- header -->
	<header>
	<div class="header_menu">
		<jsp:include page="../main/u_header.jsp" flush="false" />
	</div>
	</header>



	<nav id="myp_title">
	<h2>&nbsp;MyPage</h2>
	<hr/>
	</nav>
	
	<a href="myPage_acc.do" id="mem_info"><button class="button1">
		<img src="/som/images/myPage/member_info.jpg"><p>회원정보</p></button></a>
			
	<a href="Playlist.do?list_num=1" id="playlist"><button class="button2">
		<img src="/som/images/myPage/myPlaylist.jpg"><p>내 Playlist</p></button></a>
			
	<a href="myMusic_list.do" id="m_list"><button class="button3">
		<img src="/som/images/myPage/myMusic.jpg"><p>내 Music</p></button></a>
			
	<a href="myPoint.do" id="point_pay"><button class="button4">
	<img src="/som/images/myPage/mypoint.jpg"><p>내 Point</p></button></a>
			
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