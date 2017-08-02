<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Playlist</title>
<link type="text/css" rel="stylesheet" href="../htmls/myPage_style.css">
<style>
div#content {
	width: 660px;
	margin: 0px auto 30px auto;
	font-family: Arial, Helvetica;
	font-size: small;
	background: #FDF5E6;
}

p#about{
	text-align : center;
	padding : 0 0 50px 0;
}
#about a:link {
	color : #4BAF4B;
}
#about a:visited {
	color : #006400;
}
#about a:hover {
	color : #FF1493;
}

/* ------------------------------------------------- */
#tabs {
	overflow: hidden;
	width: 100%;
	margin: 0;
	padding: 0;
	list-style: none;
	position : relative;
}

#tabs li {
	float : left;
	margin: 0 .5em 0 8px;
}

#tabs a {
	position: relative;
	float : left;
	left : 140px;
	background: #ddd;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#fff), to(#ddd));
	background-image: -webkit-linear-gradient(top, #fff, #ddd);
	background-image: -moz-linear-gradient(top, #fff, #ddd);
	background-image: -ms-linear-gradient(top, #fff, #ddd);
	background-image: -o-linear-gradient(top, #fff, #ddd);
	background-image: linear-gradient(to bottom, #fff, #ddd);
	padding: .7em 3.5em;
	text-decoration: none;
	color: #444;
	text-shadow: 0 1px 0 rgba(255, 255, 255, .8);
	-webkit-border-radius: 5px 0 0 0;
	-moz-border-radius: 5px 0 0 0;
	border-radius: 5px 0 0 0;
	-moz-box-shadow: 0 2px 2px rgba(0, 0, 0, .4);
	-webkit-box-shadow: 0 2px 2px rgba(0, 0, 0, .4);
	box-shadow: 0 2px 2px rgba(0, 0, 0, .4);
}

#tabs a:hover, #tabs a:hover::after, #tabs a:focus, #tabs a:focus::after
	{
	background: #fff;
}

#tabs a:focus {
	outline: 0;
}

#tabs a::after {
	content: '';
	position: absolute;
	z-index: 1;
	top: 0;
	right: -.5em;
	bottom: 0;
	width: 1em;
	background: #ddd;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#fff),
		to(#ddd));
	background-image: -webkit-linear-gradient(top, #fff, #ddd);
	background-image: -moz-linear-gradient(top, #fff, #ddd);
	background-image: -ms-linear-gradient(top, #fff, #ddd);
	background-image: -o-linear-gradient(top, #fff, #ddd);
	background-image: linear-gradient(to bottom, #fff, #ddd);
	-moz-box-shadow: 2px 2px 2px rgba(0, 0, 0, .4);
	-webkit-box-shadow: 2px 2px 2px rgba(0, 0, 0, .4);
	box-shadow: 2px 2px 2px rgba(0, 0, 0, .4);
	-webkit-transform: skew(10deg);
	-moz-transform: skew(10deg);
	-ms-transform: skew(10deg);
	-o-transform: skew(10deg);
	transform: skew(10deg);
	-webkit-border-radius: 0 5px 0 0;
	-moz-border-radius: 0 5px 0 0;
	border-radius: 0 5px 0 0;
}

#tabs #current a {
	background: #fff;
	z-index: 3;
}

#tabs #current a::after {
	background: #fff;
	z-index: 3;
}

#btn {
	position: absolute;
	right: 60px;
}
/* ------------------------------------------------- */
#content {
	background: #fff;
	padding: 2em;
	height: 620px;
	position: relative;
	z-index: 2;
	-moz-border-radius: 0 5px 5px 5px;
	-webkit-border-radius: 0 5px 5px 5px;
	border-radius: 0 5px 5px 5px;
	-moz-box-shadow: 0 -2px 3px -2px rgba(0, 0, 0, .5);
	-webkit-box-shadow: 0 -2px 3px -2px rgba(0, 0, 0, .5);
	box-shadow: 0 -2px 3px -2px rgba(0, 0, 0, .5);
}

/* ------------------------------------------------- */
#about {
	color: #999;
}

#about a {
	color: #eee;
}
</style>
</head>

<body>
	<header>
	<div class="header_menu">
		<ul class="header_menu_ul" style="color : #FFFFFF">
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

	<ul id="tabs">
		<li><a href="#" name="tab1">최근 들은 음악</a></li>
		<li><a href="#" name="tab2">즐겨찾기한 음악</a></li>
		<li><a href="#" name="tab3">구매한 음악</a></li>
	</ul>

	<div id="content">
		<div id="tab1">
			<h2>최근 들은 음악</h2>
			<table border="0" style="width: 100%" height="450">
				<caption>곡별 순위차트입니다. 곡별 순위별 오름차순으로 정렬됩니다.<br><br></caption>
				<colgroup>
					<col style="width: 29px" />
					<col style="width: 60px" />
					<col style="width: 110px" />
					<col style="width: 320px">
					<col style="width: 50px" />
					<col style="width: 50px" />
					<col style="width: 50px" />
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
						<th scope="col"><div class="wrap pd_none">담기</div></th>
					</tr>
				</thead>
				<tr align="center">
					<td><input type="checkbox"></td>
					<td>1.</td>
					<td>KARD</td>
					<td><a href="../songs_jsp/kard_holahola.jsp">Hola Hola</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
				<tr align="center">
					<td><input type="checkbox"></td>
					<td>2.</td>
					<td>장문복</td>
					<td><a href="../songs_jsp/jangmb_wouldyouwalkwithme.jsp">같이 걸을래 (with. 황아영)</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
				<tr align="center">
					<td><input type="checkbox"></td>
					<td>3.</td>
					<td>이예준</td>
					<td><a href="../songs_jsp/Leeyj_worriedabout.jsp">괜한 걱정을 했나 봐</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
				<tr align="center">
					<td><input type="checkbox"></td>
					<td>4.</td>
					<td>프롬피</td>
					<td><a href="../songs_jsp/frompi_hopeone.jsp">HOPE 한 잔 (Feat. 소울맨)</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
				<tr align="center">
					<td><input type="checkbox"></td>
					<td>5.</td>
					<td>시윤</td>
					<td><a href="../songs_jsp/siyoon_beauty.jsp">BEAUTY</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
				<tr align="center">
					<td><input type="checkbox"></td>
					<td>6.</td>
					<td>Ways (웨이즈)</td>
					<td><a href="../songs_jsp/ways_sopretty.jsp">그렇게 예뻤다</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
				<tr align="center">
					<td><input type="checkbox"></td>
					<td>7.</td>
					<td>김현석</td>
					<td><a href="../songs_jsp/kimhs_youandi.jsp">You and I</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
				<tr align="center">
					<td><input type="checkbox"></td>
					<td>8.</td>
					<td>우디 (Woody)</td>
					<td><a href="../songs_jsp/woody_yahae.jsp">YAHAE (야해)</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
				<tr align="center">
					<td><input type="checkbox"></td>
					<td>9.</td>
					<td>윤하 (YOUNHA)</td>
					<td><a href="../songs_jsp/younha_takefive.jsp">Take Five</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
				<tr align="center">
					<td><input type="checkbox"></td>
					<td>10.</td>
					<td>디에이드 (The Ade)</td>
					<td><a href="../songs_jsp/theade_sweetsummernight.jsp">달콤한 여름밤</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
				
			</table>
		</div>
		<div id="tab2">
			<h2>즐겨찾기한 음악</h2>
			<table border="0" style="width: 100%" height="450">
				<caption>곡별 순위차트입니다. 곡별 순위별 오름차순으로 정렬됩니다.<br><br></caption>
				<colgroup>
					<col style="width: 29px" />
					<col style="width: 60px" />
					<col style="width: 110px" />
					<col style="width: 320px">
					<col style="width: 50px" />
					<col style="width: 50px" />
					<col style="width: 50px" />
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
						<th scope="col"><div class="wrap pd_none">담기</div></th>
					</tr>
				</thead>
					<tr align="center">
					<td><input type="checkbox"></td>
					<td>1.</td>
					<td>JoyPark (조이파크)</td>
					<td><a href="../songs_jsp/joypark_alive.jsp">Alive (Feat. 지애린)</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
					<tr align="center">
					<td><input type="checkbox"></td>
					<td>2.</td>
					<td>아웃사이더, 강남</td>
					<td><a href="../songs_jsp/outsider_streetlove.jsp">Street Love</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
					<tr align="center">
					<td><input type="checkbox"></td>
					<td>3.</td>
					<td>윤도현</td>
					<td><a href="../songs_jsp/yundohyun_realman.jsp">Real Man (상남자 English Chester Busking ver)</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
					<tr align="center">
					<td><input type="checkbox"></td>
					<td>4.</td>
					<td>Luda</td>
					<td><a href="../songs_jsp/luda_iwillgiveyou.jsp">I will give you all I got</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
					<tr align="center">
					<td><input type="checkbox"></td>
					<td>5.</td>
					<td>Dayday (데이데이)</td>
					<td><a href="../songs_jsp/dayday_callme.jsp">나를 불러 (Feat. GRAY, 박재범)</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
					<tr align="center">
					<td><input type="checkbox"></td>
					<td>6.</td>
					<td>김영철, 황치열</td>
					<td><a href="../songs_jsp/hwang_kim_pado.jsp">파도</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
					<tr align="center">
					<td><input type="checkbox"></td>
					<td>7.</td>
					<td>YEIN</td>
					<td><a href="../songs_jsp/yein_wave.jsp">물결</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
					<tr align="center">
					<td><input type="checkbox"></td>
					<td>8.</td>
					<td>Homme (창민, 이현)</td>
					<td><a href="../songs_jsp/homme_whereareyounow.jsp">어디쯤 왔니</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
					<tr align="center">
					<td><input type="checkbox"></td>
					<td>9.</td>
					<td>BENJAMIN FLAVOR</td>
					<td><a href="../songs_jsp/benjamin_flavor_astronaut.jsp">Astronaut</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
				<tr align="center">
					<td><input type="checkbox"></td>
					<td>10.</td>
					<td>폴킴</td>
					<td><a href="../songs_jsp/paul_kim.jsp">있잖아</a></td>
					<td><input type="button" value="듣기"></td>
					<td><input type="button" value="가사"></td>
					<td><input type="button" value="담기"></td>
				</tr>
				
			</table>
		</div>
		<div id="tab3">
			<h2>구매한 음악</h2>
			<table border="0" style="width: 100%" height="450">
				<caption>곡별 순위차트입니다. 곡별 순위별 오름차순으로 정렬됩니다.<br><br></caption>
				<colgroup>
					<col style="width: 29px" />
					<col style="width: 60px" />
					<col style="width: 110px" />
					<col style="width: 320px">
					<col style="width: 50px" />
					<col style="width: 50px" />
					<col style="width: 50px" />
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
						<th scope="col"><div class="wrap pd_none">담기</div></th>
					</tr>
				</thead>
					<tr align="center">
						<td><input type="checkbox"></td>
						<td>1.</td>
						<td>스컬&하하</td>
						<td><a href="myMusic_list.jsp">Nora (Feat. G.Soul)</a></td>
						<td><input type="button" value="듣기"></td>
						<td><input type="button" value="가사"></td>
						<td><input type="button" value="담기"></td>
					</tr>
					<tr align="center">
						<td><input type="checkbox"></td>
						<td>2.</td>
						<td>윤조</td>
						<td><a href="myMusic_list.jsp">Ponytail</a></td>
						<td><input type="button" value="듣기"></td>
						<td><input type="button" value="가사"></td>
						<td><input type="button" value="담기"></td>
					</tr>
					<tr align="center">
						<td><input type="checkbox"></td>
						<td>3.</td>
						<td>김페리</td>
						<td><a href="myMusic_list.jsp">우주고양이</a></td>
						<td><input type="button" value="듣기"></td>
						<td><input type="button" value="가사"></td>
						<td><input type="button" value="담기"></td>
					</tr>
					<tr align="center">
						<td><input type="checkbox"></td>
						<td>4.</td>
						<td>Del.Mo (델모)</td>
						<td><a href="myMusic_list.jsp">You</a></td>
						<td><input type="button" value="듣기"></td>
						<td><input type="button" value="가사"></td>
						<td><input type="button" value="담기"></td>
					</tr>
					<tr align="center">
						<td><input type="checkbox"></td>
						<td>5.</td>
						<td>박재정, 마크 (MARK)</td>
						<td><a href="myMusic_list.jsp">Lemonade Love</a></td>
						<td><input type="button" value="듣기"></td>
						<td><input type="button" value="가사"></td>
						<td><input type="button" value="담기"></td>
					</tr>
					<tr align="center">
						<td><input type="checkbox"></td>
						<td>6.</td>
						<td>윤종신</td>
						<td><a href="myMusic_list.jsp">Welcome Summer</a></td>
						<td><input type="button" value="듣기"></td>
						<td><input type="button" value="가사"></td>
						<td><input type="button" value="담기"></td>
					</tr>
					<tr align="center">
						<td><input type="checkbox"></td>
						<td>7.</td>
						<td>빈센트 앤 로즈</td>
						<td><a href="myMusic_list.jsp">안전벨트</a></td>
						<td><input type="button" value="듣기"></td>
						<td><input type="button" value="가사"></td>
						<td><input type="button" value="담기"></td>
					</tr>
			</table>
		</div>
	</div>

	<footer>
		<br> <br>
		<p id="about">
			Back to <a href="myPage_home.jsp">main</a> / Go to <a
				href="myMusic_list.jsp">Home</a>
		</p>
		<br>
		<br>
	</footer>

	<script src="../js/jquery-3.2.1.min.js"></script>
	<script>
$(document).ready(function() {
    $("#content").find("[id^='tab']").hide(); // Hide all content
    $("#tabs li:first").attr("id","current"); // Activate the first tab
    $("#content #tab1").fadeIn(); // Show first tab's content
    
    $('#tabs a').click(function(e) {
        e.preventDefault();
        if ($(this).closest("li").attr("id") == "current"){ //detection for current tab
         return;       
        }
        else{             
          $("#content").find("[id^='tab']").hide(); // Hide all content
          $("#tabs li").attr("id",""); //Reset id's
          $(this).parent().attr("id","current"); // Activate this
          $('#' + $(this).attr('name')).fadeIn(); // Show content for the current tab
        }
    });
});
</script>

</body>
</html>