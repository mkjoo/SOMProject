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
<link type="text/css" rel="stylesheet" href="/som/css/myPage/myPage_style.css">
<link href="/som/css/board/board.css" rel="stylesheet" type="text/css">
</head>

<body>
	<!-- header -->
	<header>
	<div class="header_menu">
		<jsp:include page="../main/u_header.jsp" flush="false" />
	</div>
	</header>


	<hr style="width: 90%; margin-left: 40px" />



	<nav id="myp_title">
	<h2>&nbsp;MyPage</h2>
	<hr />
	</nav>
	<section>
	<div class="container-fluid"></div>
	<div id="box1">
		<table border="0" style="width: 50%" height="30">
			<caption>
				<br>
				<br>
			</caption>
			<colgroup>
				<col style="width: 29px" />
				<col style="width: 60px" />
				<col style="width: 110px" />
				<col style="width: 320px">
				<col style="width: 50px" />
				<col style="width: 70px" />
				<col style="width: 70px" />
			</colgroup>
			<!--150515 수정 lyr-->
			<thead>
				<tr>
					<th scope="col"><div class="wrap pd_none left">
							<input type="checkbox" title="곡 목록 전체 선택"
								class="input_check d_checkall">
						</div></th>
					<th scope="col"><div class="wrap pd_none">NO</div></th>
					<th scope="col"><div class="wrap none">가수</div></th>
					<th scope="col"><div class="wrap">곡명</div></th>
					<th scope="col" class="t_left"><div class="wrap right_none">듣기</div></th>
					<th scope="col"><div class="wrap pd_none left">가사</div></th>

				</tr>
			</thead>
			<c:forEach var="musicVo" items="${list}">
				<tr align="center">
					<td><input type="checkbox"></td>
					<td>${musicVo.m_num}</td>
					<td>${musicVo.m_artist}</td>
					<td><a href="../songs_jsp/kard_holahola.jsp">${musicVo.m_name}</a></td>
					<td><input type="button" value="듣기"
						onclick="window.location='upCountPlay.do?m_name=${musicVo.m_name}'"></td>
					<td><input type="button" value="가사"
						onclick="window.open('lyrics.do?lyrics=${musicVo.m_lyrics}','get','height=500px, width=500px')"></td>

				</tr>
			</c:forEach>


		</table>
	</div>

	</section>




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