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
	function chkBoxCheck(intChkNumber) {
		for (j = 0; j < 8; j++) {
			if (eval("document.myForm.m_point[" + j + "].checked") == true) {
				document.myForm.m_point[j].checked = false;
				if (j == intChkNumber) {
					document.myForm.m_point[j].checked = true;
				}
			}
		}
	}

	function updateResult(value) {
		if (value == "success") {
			alert('충전성공');
		}
	}

	window.onload = updateResult("${value}");
	function myFunction2() {
		document.getElementById("myDropdown2").classList.toggle("show");
	}
	window.onclick = function(event) {
		if (!event.target.matches('.dropbtn2')) {

			var dropdowns = document
					.getElementsByClassName("dropdown2-content2");
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
<link href="/som/css/myPage/pointpage_style.css" rel="stylesheet" type="text/css">
</head>

<body>

	<!-- header -->
	<header>
	<div class="header_menu">
		<jsp:include page="../main/u_header.jsp" flush="false" />
	</div>
	</header>

	<nav id="myp_title">
	<h2>&nbsp;MyPage</h2>
	<pre>
		<h3>${money}원 소유</h3>
	</pre>
	<hr />
	</nav>
	
	<div class="container-fluid"></div>
	<div class="point_main">
		<table id="point_category">
			<tr>
				<td><ul><li style="color:#5ABEFF"><a href="">포인트 결제</a></li></ul></td>
			</tr>
			<tr>
				<td><ul><li style="color:#5ABEFF"><a href="">최근 결제내역</a></li></ul></td>
			</tr>
			<tr>
				<td height="170"></td>
			</tr>
			<tr>
				<td height="170"></td>
			</tr>
		</table>
		<div id="point_list">
		<form name="myForm" action="payment.do" method="post">
			<table border="1" width="600" height="400">
				<tr align="center">
					<td></td>
					<td>결제금액 선택</td>
					<td>-></td>
					<td>충전 금액</td>
				</tr>
				<tr align="center">
					<td><input type="checkbox" name="m_point" value="5000"
						onClick="chkBoxCheck(0)"></td>
					<td>5,000원</td>
					<td>-></td>
					<td>5,500원</td>
				</tr>
				<tr align="center">
					<td><input type="checkbox" name="m_point" value="10000"
						onClick="chkBoxCheck(1)"></td>
					<td>10,000원</td>
					<td>-></td>
					<td>11,500원</td>
				</tr>
				<tr align="center">
					<td><input type="checkbox" name="m_point" value="15000"
						onClick="chkBoxCheck(2)"></td>
					<td>15,000원</td>
					<td>-></td>
					<td>16,500원</td>
				</tr>
				<tr align="center">
					<td><input type="checkbox" name="m_point" value="20000"
						onClick="chkBoxCheck(3)"></td>
					<td>20,000원</td>
					<td>-></td>
					<td>21,500원</td>
				</tr>
				<tr align="center">
					<td><input type="checkbox" name="m_point" value="25000"
						onClick="chkBoxCheck(4)"></td>
					<td>25,000원</td>
					<td>-></td>
					<td>26,500원</td>
				</tr>
				<tr align="center">
					<td><input type="checkbox" name="m_point" value="30000"
						onClick="chkBoxCheck(5)"></td>
					<td>30,000원</td>
					<td>-></td>
					<td>35,000원</td>
				</tr>
				<tr>
					<td colspan="4" align="center"><a href=""><img
							src="../images/credit-card.jpg">신용카드</a>&nbsp;&nbsp; <a href=""><img
							src="../images/bank-transfer.jpg">계좌이체</a>&nbsp;&nbsp; <a
						href=""><img src="../images/mobile-pay.jpg">핸드폰</a>&nbsp;&nbsp;
						<a href=""><img src="../images/depositless-pay.jpg">무통장
							입금</a> <input type="submit" value="충전"></td>
			</table>
		</form>
	</div>
	</div>

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