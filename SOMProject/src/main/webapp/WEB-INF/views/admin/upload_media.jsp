<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>미디어 업로드</title>
<link type="text/css" rel="stylesheet" href="../htmls/myPage_style.css">
<style>
div#divide {
	margin : 90px 40px;
	padding : 50px 0 0 50px;
	border : 2px solid gray;
	border-radius : 15px;
	width : 880px;
	height : 400px;
}
#setTable {
	float : right;
	padding : 0 50px 0 0;
}

.admin_tab {
	float : left;
	overflow : hidden;
	background-color : white;
	border-right : 2px solid red;
	width : 150px;
	height : 200px;
}
.admin_tab a {
	display : block;
	color : black;
	text-align : left;
	text-decoration : none;
}
.admin_tab a:hover {
	background-color : gray;
	color : white;
}
.admin_tab .icon {
	display : none;
}
</style>
</head>
<body>
	<header>
		<div class="header_menu" width="300">
			<ul class="header_menu_ul" style="color: white">
				<li class="menu"><a><img src="../images/menu_bar.png" width="40" height="40" alt="" /></a> 
				<!-- <ul class="hide">
               <li>최신가요</li>
               <li>인기차트</li>
               <li>버스킹</li>
               <li>게시판</li>
            </ul> --></li>
				<li class="menu"><a href="myPage_home.jsp" title="Home" class="hd_logo">
					<img src="../images/som_logo.jpg" width="100" height="40"></a></li>
				<li class="menu" id=""><a href="#"><span class="hd_mn_ul_li_span">Login&nbsp;</span></a>
					<a href="#"><span class="hd_mn_ul_li_span">/&nbsp;Join</span></a></li>
			</ul>
		</div>
	</header>
<div id="divide">	
	<div class="admin_tab" id="maintable">
	<table width="140">
		<tr>
			<td><a href="">관리자 페이지</a></td>
		</tr>
		<tr>
			<td><a href="">회원 관리</a></td>
		</tr>
		<tr>
			<td><a href="">공지사항 관리</a></td>
		</tr>
		<tr>
			<td><a href="">Q&A게시판 관리</a></td>
		</tr>
		<tr>
			<td><a href="">자유게시판 관리</a></td>
		</tr>
		<tr>
			<td><a href="">음악 등록</a></td>
		</tr>
		<tr>
			<td><a href="">뮤직비디오 등록</a></td>
		</tr>
		<tr>
			<td><a href="">로그아웃</a></td>
		</tr>
	</table>	
	</div>
	<div id="setTable">
	<table width="394" height="370" border="1">
		<colgroup>
			<col width="80"></col>
			<col width="*"></col>
		</colgroup>
		<tr>
			<th scope="row" colspan="2" bgcolor="grey" height="30"><font size="3">미디어 링크 업로드</font></th>
		</tr>
		<tr>
			<th scope="row"><font size="2"><label for="songtitle">노래 제목:</label></font></th>
			<td align="left"><input id="songtitle" type="text" name="songname" size="25"></input></td>
		</tr>
		<tr>
			<th scope="row"><font size="2"><label for="linkaddress">링크 주소:</label></font></th>
			<td align="left"><input id="linkaddress" type="text" name="linkaddress" size="25"></input></td>
		</tr>
		<tr>
			<th scope="row"><font size="2"><label for="content">내용:</label></font></th>
			<td align="left"><textarea id="content" name="content" cols="40" rows="10"></textarea></td>
		</tr>
		<tr>
			<th scope="row"><font size="2">장르:</font></th>
			<td align="left">
				<input id="gayo" type="checkbox" name="genre" onclick="checkGenre(0)" value="가요" />
				<label for="gayo"><font size="2" face="돋움">가요</font></label>
				<input id="pop" type="checkbox" name="genre" onclick="checkGenre(1)" value="팝송" />
				<label for="pop"><font size="2" face="돋움">팝송</font></label>
			</td>
		</tr>
		<tr>
			<th scope="row"><font size="2"><label for="image">이미지:</label></font></th>
			<td align="left"><input type="file" name="mediaimg"></input></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input id="image" type="submit" value="upload"></input>
				<input type="button" value="cancel" onclick="#"></input>
			</td>
		</tr>
	</table>
	</div>
</div>
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
<script>
function logout(){
	alert('로그아웃 하시겠습니까?');
	alert('로그아웃 되었습니다.');
}
</script>
</body>
</html>