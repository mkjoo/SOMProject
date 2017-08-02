<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../htmls/myPage_style.css">

</head>
<body>
	<header>
	<div class="header_menu">
		<ul class="header_menu_ul" style="color: white">
			<li class="menu"><a><img src="../images/menu_bar.png"
					width="40" height="40" alt="" /></a> <!-- <ul class="hide">
               <li>최신가요</li>
               <li>인기차트</li>
               <li>버스킹</li>
               <li>게시판</li>
            </ul> --></li>
			<li class="menu"><a href="myPage_home.jsp" title="Home"
				class="hd_logo"><img src="../images/som_logo.jpg" width="100"
					height="40"></a></li>
			<li class="menu" id=""><a href="#"><span
					class="hd_mn_ul_li_span">Login</span></a><a href="#"><span
					class="hd_mn_ul_li_span">/Join</span></a></li>
		</ul>
	</div>
	</header>
	<div id="point_list">
		<table border="1" width="600" height="400">
			<tr align="center">
				<td></td>
				<td>결제금액 선택</td>
				<td> -> </td>
				<td>충전 금액</td>
			</tr>
			<tr align="center">
				<td><input type="checkbox" ></td>
				<td>5,000원</td>
				<td> -> </td>
				<td>5,500원</td>
			</tr>
			<tr align="center">
				<td><input type="checkbox" ></td>
				<td>10,000원</td>
				<td> -> </td>
				<td>11,500원</td>
			</tr>
			<tr align="center">
				<td><input type="checkbox" ></td>
				<td>15,000원</td>
				<td> -> </td>
				<td>16,500원</td>
			</tr>
			<tr align="center">
				<td><input type="checkbox" ></td>
				<td>20,000원</td>
				<td> -> </td>
				<td>21,500원</td>
			</tr>
			<tr align="center">
				<td><input type="checkbox" ></td>
				<td>25,000원</td>
				<td> -> </td>
				<td>26,500원</td>
			</tr>
			<tr align="center">
				<td><input type="checkbox" ></td>
				<td>30,000원</td>
				<td> -> </td>
				<td>35,000원</td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<a href=""><img src="../images/credit-card.jpg">신용카드</a>&nbsp;&nbsp;
					<a href=""><img src="../images/bank-transfer.jpg">계좌이체</a>&nbsp;&nbsp;
					<a href=""><img src="../images/mobile-pay.jpg">핸드폰</a>&nbsp;&nbsp;
					<a href=""><img src="../images/depositless-pay.jpg">무통장 입금</a>
				</td>
		</table>
	</div>

</body>
</html>