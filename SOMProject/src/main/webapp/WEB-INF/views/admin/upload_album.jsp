<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>앨범 업로드</title>
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
	border-right : 2px solid orange;
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
<script type="text/javascript" src="/som/js/main/slider.js"></script>
<script type="text/javascript" src="/som/js/main/login.js"></script>
<script type="text/javascript" src="/som/js/main/menu.js"></script>
<script type="text/javascript" src="/som/js/main/signUp.js"></script>


<link href="/som/css/main/modal.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/login.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/slider.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/content.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/footer.css" rel="stylesheet" tyep="text/css">
<link href="/som/css/main/menu.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/mp_header.css" rel="stylesheet" type="text/css">

</head>
<body>
	<header>
	<div class="header_menu">
		<jsp:include page="a_header.jsp" flush="false"/>
	</div>
	</header>
	
<div id="divide">
	<jsp:include page="admin_tab.jsp" flush="false"/>
	<div>

	<form action="uploadProc.mdo" method="post" enctype="multipart/form-data">
	<div id="setTable">
		<table border="1" width="394">
			<tr bgcolor="black" align="center">
				<td colspan="3" rowspan="1" height="30">
					<font color="white" size="3">앨범 올리기 (관리자모드)</font>
				</td>
			</tr>
						<tr>
				<th scope="row">
					<font size="2" color="#F29661">
					<label for="albumname">노래이름:</label></font>
				</th>
				<td align="left">
					<input id="albumname" name="m_name" type="text" size="20" ></input>
				</td>
			</tr>
			
			
			<tr>
				<th scope="row">
					<font size="2" color="#F29661">
					<label for="albumname">앨범이름:</label></font>
				</th>
				<td align="left">
					<input id="albumname" name="m_album" type="text" size="20" ></input>
				</td>
			</tr>
			
	
			<tr>
				<th scope="row"><font size="2" color="#F29661">
					<label for="singername">가수이름:</label></font>
				</th>
				<td align="left">
					<input id="singername" name="m_artist" type="text" size="20"></input>
				</td>
			</tr>
			<tr>
				<th scope="row">
					<font size="2" color="#F29661">
					<label for="content">가사:</label></font>
				</th>
				<td align="left">
					<textarea id="content" name="m_lyrics" cols="35" rows="10"></textarea>
				</td>
			</tr>
			<tr>
				<th scope="row"><font size="1" color="#F29661">장르</font></th>
				<td><font size="2"> <input id="pop" type="checkbox"
						name="m_genre" value="pop" onclick="genreCheckBoxValidation(0)" /><label
						for="pop">pop</label> <input id="dance" type="checkbox"
						name="m_genre" value="ccm" onclick="genreCheckBoxValidation(1)" /><label
						for="dance">ccm</label> <input id="hiphop" type="checkbox"
						name="m_genre" value="classic" onclick="genreCheckBoxValidation(2)" /><label
						for="hiphop">classic</label> <input id="balad" type="checkbox"
						name="m_genre" value="jazz" onclick="genreCheckBoxValidation(3)" /><label
						for="balad">jazz</label><br /> <input id="trot" type="checkbox"
						name="m_genre" value="j-pop" onclick="genreCheckBoxValidation(4)" /><label
						for="trot">j-pop</label> <input id="ost" type="checkbox"
						name="m_genre" value="ost" onclick="genreCheckBoxValidation(5)" /><label
						for="ost">OST</label> <input id="jpop" type="checkbox"
						name="m_genre" value="edm" onclick="genreCheckBoxValidation(6)" /><label
						for="jpop">edm</label> <input id="ccm" type="checkbox"
						name="m_genre" value="k-pop" onclick="genreCheckBoxValidation(7)" /><label
						for="ccm">k-pop</label>
				</font></td>
			</tr>
			<tr>
				<th scope="row"><font size="1" color="#F29661"><label
						for="uploadfilecount">mp3파일:</label></font></th>
				<td align="left"><input type="file" name="mp3" />
				</td>
			</tr>
			<tr>
				<th bgcolor="grey"><font size="2">앨범이미지:</font></th>
				<td align="left"><input type="file" name="image" size="22"></input></td>
			</tr>
			<tr>
				<th bgcolor="grey"><font size="2">무비:</font></th>
				<td align="left"><input type="text" size="22" name="m_musicvideo"></input></td>
			</tr>
			
			<tr>
				<td bgcolor="grey" colspan="2" align="center">
						<input type="submit" value="upload"/> 
						<input type="button" value="cancel" onclick="" />
				</td>
			</tr>
		</table>
	
	</div>
</div>	</form>

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