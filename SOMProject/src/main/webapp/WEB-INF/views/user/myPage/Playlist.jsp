<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<tr>
				<td rowspan="6"><a href="../songs_jsp/song1.jsp"><img src="../images/mannam.jpg"></a>
				<td colspan="2">[EP]</td>
			</tr>
			<tr>
				<td colspan="2"><a href="../songs_jsp/song1.jsp">음악이 사랑이 흐르네</a></td>
			</tr>
			<tr>
				<td colspan="2">권진원</td>
			</tr>
			<tr>
				<td colspan="2">KWON JIN WON & M..</td>
			</tr>
			<tr>
				<td align="center">2017.07.19</td>
				<td align="center">3곡</td>
			</tr>
			<tr>
				<td align="center"><a href="">앨범듣기</a>&nbsp;&nbsp;
				<td align="center"><a href="">앨범다운</a>
			</td>
		</table>
	</div>
	<br><hr/>
	<div id="song2">
		<table border="1" width="320" height="160">
			<tr>
				<td rowspan="6"><a href="../songs_jsp/song2.jsp"><img src="../images/milktea.jpg"></a>
				<td colspan="2">싱글</td>
			</tr>
			<tr>
				<td colspan="2"><a href="../songs_jsp/song2.jsp">궁금해</a></td>
			</tr>
			<tr>
				<td colspan="2">밀크티</td>
			</tr>
			<tr>
				<td colspan="2">궁금해 (싱글)</td>
			</tr>
			<tr>
				<td align="center">2017.07.19</td>
				<td align="center">1곡</td>
			</tr>
			<tr>
				<td align="center"><a href="">앨범듣기</a>&nbsp;&nbsp;
				<td align="center"><a href="">앨범다운</a>
			</td>
		</table>
	</div>
	<br><hr/>
	<div id="song3">
		<table border="1" width="320" height="160">
			<tr>
				<td rowspan="6"><a href="../songs_jsp/song3.jsp"><img src="../images/nassho.jpg"></a>
				<td colspan="2">[EP]</td>
			</tr>
			<tr>
				<td colspan="2"><a href="../songs_jsp/song3.jsp">Show Live Vol.008 (광탈)</a></td>
			</tr>
			<tr>
				<td colspan="2">나쑈</td>
			</tr>
			<tr>
				<td colspan="2">Show Live Vol.008 (광탈)</td>
			</tr>
			<tr>
				<td align="center">2017.07.19</td>
				<td align="center">2곡</td>
			</tr>
			<tr>
				<td align="center"><a href="">앨범듣기</a>&nbsp;&nbsp;
				<td align="center"><a href="">앨범다운</a>
			</td>
		</table>
	</div>
	<br><hr/>
	<div id="song4">
		<table border="1" width="320" height="160">
			<tr>
				<td rowspan="6"><a href="../songs_jsp/song4.jsp"><img src="../images/oppa.jpg"></a>
				<td colspan="2">싱글</td>
			</tr>
			<tr>
				<td colspan="2"><a href="../songs_jsp/song4.jsp">오빠 (PROD. Brother Su)</a></td>
			</tr>
			<tr>
				<td colspan="2">유승우, 산들 (B1A4)</td>
			</tr>
			<tr>
				<td colspan="2">오빠</td>
			</tr>
			<tr>
				<td align="center">2017.07.06</td>
				<td align="center">1곡</td>
			</tr>
			<tr>
				<td align="center"><a href="">앨범듣기</a>&nbsp;&nbsp;
				<td align="center"><a href="">앨범다운</a>
			</td>
		</table>
	</div>
	<br><hr/>
	<div id="song5">
		<table border="1" width="320" height="160">
			<tr>
				<td rowspan="6"><a href="../songs_jsp/song5.jsp"><img src="../images/rain and so.jpg"></a>
				<td colspan="2">///</td>
			</tr>
			<tr>
				<td colspan="2"><a href="../songs_jsp/song5.jsp">널 너무 모르고</a></td>
			</tr>
			<tr>
				<td colspan="2">헤이즈 (Heize)</td>
			</tr>
			<tr>
				<td colspan="2">/// (너 먹구름 비)</td>
			</tr>
			<tr>
				<td align="center">2017.06.26</td>
				<td align="center">5곡</td>
			</tr>
			<tr>
				<td align="center"><a href="">앨범듣기</a>&nbsp;&nbsp;
				<td align="center"><a href="">앨범다운</a>
			</td>
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