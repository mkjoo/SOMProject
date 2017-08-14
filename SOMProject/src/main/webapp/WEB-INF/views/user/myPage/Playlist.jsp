<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Playlist</title>
<link type="text/css" rel="stylesheet" href="../htmls/myPage_style.css">
<style>
#song1, #song2, #song3, #song4, #song5 {
	margin : 24px 0 0 50px;
	font-size : small;
}
nav#title{
	margin : 20px 0 0 50px;
}
</style>
</head>
<body>
<header>
   <div class="header_menu">
      <ul class="header_menu_ul" style="color: white">
         <li class="menu"><a><img src="../images/menu_bar.png" width="40" height="40" alt="" /></a>
            <!-- <ul class="hide">
               <li>최신가요</li>
               <li>인기차트</li>
               <li>버스킹</li>
               <li>게시판</li>
            </ul> --></li>
         <li class="menu"><a href="myPage_home.jsp" title="Home"
            class="hd_logo"><img src="../images/som_logo.jpg" width="100" height="40"></a></li>
         <li class="menu" id=""><a href="#"><span
               class="hd_mn_ul_li_span">Login</span></a><a href="#"><span
               class="hd_mn_ul_li_span">/Join</span></a></li>
      </ul>
   </div>
   </header>
   <nav id="title">
	   <h2>내 음악 리스트</h2>
	   <br>
   </nav>
   <hr color="#7DBCBE"/>
	<div id="song1">
		<table border="1" width="320" height="160">
		<c:forEach var="list" items="${list}">
			
			<tr>
				<td rowspan="6"><a href="../songs_jsp/song1.jsp"><img src="../images/mannam.jpg"></a>
				<td colspan="2">..</td>
			</tr>
			<tr>
				<td colspan="2"><a href="../songs_jsp/song1.jsp">${list.m_name}</a></td>
			</tr>
			<tr>
				<td colspan="2">${list.m_artist}</td>
			</tr>
			<tr>
				<td colspan="2">${list.m_album}</td>
			</tr>
			<tr>
				<td align="center">${list.m_create_date}</td>
				<td align="center">3곡</td>
			</tr>
			<tr>
				<td align="center"><a href="">앨범듣기</a>&nbsp;&nbsp;
				<td align="center"><a href="">앨범다운</a>
			</td>	
			</tr>	
		</c:forEach>	
			
			
		</table>
	</div>
	<br><hr/>
	<br><br>
	<footer>
		<br><br>
		<div id="footer">
		<p id="about">
			Back to <a href="../jsp/myPage_home.jsp">main</a> / Go to <a href="../jsp/myMusic_list.jsp">Home</a>
		</p>
			<br><hr/>
			<table border="0" id="foot1" width="870" height="50">
				<tr>
					<td>회사소개&nbsp; | </td>
					<td>이용약관&nbsp; | </td>
					<td>개인정보처리방침&nbsp; | </td>
					<td>청소년보호정책&nbsp; | </td>
					<td>제휴/프로모션문의&nbsp; | </td>
					<td>이메일주소무단수집거부&nbsp; | </td>
					<td>파트너센터&nbsp; | </td>
					<td>사업자정보확인</td>
				</tr>
			</table>
			<table border="0" id="foot2" width="1000" height="80">
				<tr>
					<td>서울시 성동구 무학로2길 54 신방빌딩&nbsp; | </td>
					<td>대표 : 주민경,신가람,김한누리,최시온&nbsp; | </td>
					<td>사업자등록번호 : ***-**-*****&nbsp; | </td>
					<td>통신판매업 신고번호 : 제2017-서울성동-*****호</td>
				</tr>
				<tr>
					<td>문의전화(평일 13:00~15:00) : 1588-0000&nbsp; | </td>
					<td>이메일 : mymusic_som@gmail.com&nbsp; | </td>
					<td colspan="2" align="left">ⓒ2017. SOM Entertainment, Inc, ALL RIGHTS RESERVED.</td>
				</tr>
			</table>
		<br>
		<br>
		</div>
	</footer>
</body>
</html>