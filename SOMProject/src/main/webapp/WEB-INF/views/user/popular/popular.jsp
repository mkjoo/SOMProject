<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/som/js/main/menu.js"></script>
<link href="/som/css/popular/popular.css" rel="stylesheet"
	type="text/css">
<link href="/som/css/main/menu.css" rel="stylesheet" type="text/css">
<link href="/som/css/popular/verticalTabs.css" rel="stylesheet"
	type="text/css">
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
	<div class="header_search">
		<input id="seach" type="search" placeholder="Search Music"> <input
			type="submit" value="Search"> <br />
	</div>
	<div id="content_body">
		<nav>
			<h1>인기 음악</h1>
		</nav>
		<div id="list" class="tab">
			<ul class="music">
				<li><button class="tablinks" onclick="openCity(event, 'kpop')"
						id="defaultOpen">가요</button></li>
				<li><button class="tablinks" onclick="openCity(event, 'pop')">POP</button></li>
				<li><button class="tablinks" onclick="openCity(event, 'ost')">OST</button></li>
				<li><button class="tablinks" onclick="openCity(event, 'edm')">DEM</button></li>
				<li><button class="tablinks" onclick="openCity(event, 'jazz')">JAZZ</button></li>
				<li><button class="tablinks"
						onclick="openCity(event, 'classic')">CLASSIC</button></li>
				<li><button class="tablinks" onclick="openCity(event, 'jpop')">J-POP</button></li>
				<li><button class="tablinks" onclick="openCity(event, 'ccm')">CCM</button></li>
			</ul>
		</div>
		<div id="kpop" class="tabcontent">
			<div id="content">
				<table>
					<tr>
						<th><input type="checkbox" title="전체선택" class="checkall"></th>
						<th>No</th>
						<th></th>
						<th>곡명</th>
						<th>가수</th>
						<th>앨범명</th>
						<th>뮤비</th>
						<th>다운</th>
						<th>듣기</th>
						<th>가사</th>
						<th>담기</th>
					</tr>

					<tr>
						<td><input type="checkbox" title="전체선택" class="checkall"></td>
						<td><h4>1</h4></td>
						<td><img src="버튼/캡처.PNG" width="50" height="50"></td>
						<td>오빠(PROD.Brother Su)</td>
						<td>유승우,산들(B1A4)</td>
						<td>오빠</td>
						<td><a href="movie.html"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
						<td><a href="down.html"><img src="버튼/다운버튼.png" width="25"
								height="25"></a></td>
						<td><a href="listen.html"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><a href="lycis.html"><img src="버튼/가사버튼.png"
								width="25" height="25"></a></td>
						<td><a href="put.html"><img src="버튼/담기버튼.png" width="25"
								height="25"></a></td>
					</tr>
					<tr>
						<td><input type="checkbox" title="전체선택" class="checkall"></td>
						<td><h4>2</h4></td>
						<td><img src="버튼/악동뮤지션.PNG" width="50" height="50"></td>
						<td>DINOSAUR</td>
						<td>악동뮤지션</td>
						<td>SUMMER EPISODE</td>
						<td><a href="movie.html"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
						<td><a href="down.html"><img src="버튼/다운버튼.png" width="25"
								height="25"></a></td>
						<td><a href="listen.html"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><a href="lycis.html"><img src="버튼/가사버튼.png"
								width="25" height="25"></a></td>
						<td><a href="put.html"><img src="버튼/담기버튼.png" width="25"
								height="25"></a></td>
					</tr>
					<tr>
						<td><input type="checkbox" title="전체선택" class="checkall"></td>
						<td><h4>3</h4></td>
						<td><img src="버튼/엑소.PNG" width="50" height="50"></td>
						<td>Ko Ko Bop</td>
						<td>EXO</td>
						<td>THE WAR-THE 4th Album</td>
						<td><a href="movie.html"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
						<td><a href="down.html"><img src="버튼/다운버튼.png" width="25"
								height="25"></a></td>
						<td><a href="listen.html"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><a href="lycis.html"><img src="버튼/가사버튼.png"
								width="25" height="25"></a></td>
						<td><a href="put.html"><img src="버튼/담기버튼.png" width="25"
								height="25"></a></td>
					</tr>
					<tr>
						<td><input type="checkbox" title="전체선택" class="checkall"></td>
						<td><h4>4</h4></td>
						<td><img src="버튼/레드벨벳.PNG" width="50" height="50"></td>
						<td>빨간 맛</td>
						<td>레드벨벳</td>
						<td>The Red Summer-Summer Mini Album</td>
						<td><a href="movie.html"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
						<td><a href="down.html"><img src="버튼/다운버튼.png" width="25"
								height="25"></a></td>
						<td><a href="listen.html"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><a href="lycis.html"><img src="버튼/가사버튼.png"
								width="25" height="25"></a></td>
						<td><a href="put.html"><img src="버튼/담기버튼.png" width="25"
								height="25"></a></td>
					</tr>
					<tr>
						<td><input type="checkbox" title="전체선택" class="checkall"></td>
						<td><h4>5</h4></td>
						<td><img src="버튼/지코.PNG" width="50" height="50"></td>
						<td>Artist</td>
						<td>지코</td>
						<td>TELEVISION</td>
						<td><a href="movie.html"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
						<td><a href="down.html"><img src="버튼/다운버튼.png" width="25"
								height="25"></a></td>
						<td><a href="listen.html"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><a href="lycis.html"><img src="버튼/가사버튼.png"
								width="25" height="25"></a></td>
						<td><a href="put.html"><img src="버튼/담기버튼.png" width="25"
								height="25"></a></td>
					</tr>
					<tr>
						<td><input type="checkbox" title="전체선택" class="checkall"></td>
						<td><h4>6</h4></td>
						<td><img src="버튼/블랙핑크.PNG" width="50" height="50"></td>
						<td>마지막처럼</td>
						<td>BLACKPINK</td>
						<td>마지막처럼</td>
						<td><a href="movie.html"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
						<td><a href="down.html"><img src="버튼/다운버튼.png" width="25"
								height="25"></a></td>
						<td><a href="listen.html"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><a href="lycis.html"><img src="버튼/가사버튼.png"
								width="25" height="25"></a></td>
						<td><a href="put.html"><img src="버튼/담기버튼.png" width="25"
								height="25"></a></td>
					</tr>
					<tr>
						<td><input type="checkbox" title="전체선택" class="checkall"></td>
						<td><h4>7</h4></td>
						<td><img src="버튼/마마무.PNG" width="50" height="50"></td>
						<td>나로 말할것 같으면</td>
						<td>마마무</td>
						<td>Purple</td>
						<td><a href="movie.html"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
						<td><a href="down.html"><img src="버튼/다운버튼.png" width="25"
								height="25"></a></td>
						<td><a href="listen.html"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><a href="lycis.html"><img src="버튼/가사버튼.png"
								width="25" height="25"></a></td>
						<td><a href="put.html"><img src="버튼/담기버튼.png" width="25"
								height="25"></a></td>
					</tr>
					<tr>
						<td><input type="checkbox" title="전체선택" class="checkall"></td>
						<td><h4>8</h4></td>
						<td><img src="버튼/에이핑크.PNG" width="50" height="50"></td>
						<td>FIVE</td>
						<td>에이핑크</td>
						<td>Pink UP</td>
						<td><a href="movie.html"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
						<td><a href="down.html"><img src="버튼/다운버튼.png" width="25"
								height="25"></a></td>
						<td><a href="listen.html"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><a href="lycis.html"><img src="버튼/가사버튼.png"
								width="25" height="25"></a></td>
						<td><a href="put.html"><img src="버튼/담기버튼.png" width="25"
								height="25"></a></td>
					</tr>

				</table>
			</div>
		</div>

		<div id="pop" class="tabcontent">
			<div id="content">
				<table>
					<tr>
						<th><input type="checkbox" title="전체선택" class="checkall"></th>
						<th>No</th>
						<th></th>
						<th>곡명</th>
						<th>가수</th>
						<th>앨범명</th>
						<th>뮤비</th>
						<th>다운</th>
						<th>듣기</th>
						<th>가사</th>
						<th>담기</th>
					</tr>

					<tr>
						<td><input type="checkbox" title="전체선택" class="checkall"></td>
						<td><h4>1</h4></td>
						<td><img src="버튼/캡처.PNG" width="50" height="50"></td>
						<td>(PROD.Brother Su)</td>
						<td>유승우,산들(B1A4)</td>
						<td>오빠</td>
						<td><a href="movie.html"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
						<td><a href="down.html"><img src="버튼/다운버튼.png" width="25"
								height="25"></a></td>
						<td><a href="listen.html"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><a href="lycis.html"><img src="버튼/가사버튼.png"
								width="25" height="25"></a></td>
						<td><a href="put.html"><img src="버튼/담기버튼.png" width="25"
								height="25"></a></td>
					</tr>
					<tr>
						<td><input type="checkbox" title="전체선택" class="checkall"></td>
						<td><h4>2</h4></td>
						<td><img src="버튼/악동뮤지션.PNG" width="50" height="50"></td>
						<td>DINOSAUR</td>
						<td>악동뮤지션</td>
						<td>SUMMER EPISODE</td>
						<td><a href="movie.html"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
						<td><a href="down.html"><img src="버튼/다운버튼.png" width="25"
								height="25"></a></td>
						<td><a href="listen.html"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><a href="lycis.html"><img src="버튼/가사버튼.png"
								width="25" height="25"></a></td>
						<td><a href="put.html"><img src="버튼/담기버튼.png" width="25"
								height="25"></a></td>
					</tr>
					<tr>
						<td><input type="checkbox" title="전체선택" class="checkall"></td>
						<td><h4>3</h4></td>
						<td><img src="버튼/엑소.PNG" width="50" height="50"></td>
						<td>Ko Ko Bop</td>
						<td>EXO</td>
						<td>THE WAR-THE 4th Album</td>
						<td><a href="movie.html"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
						<td><a href="down.html"><img src="버튼/다운버튼.png" width="25"
								height="25"></a></td>
						<td><a href="listen.html"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><a href="lycis.html"><img src="버튼/가사버튼.png"
								width="25" height="25"></a></td>
						<td><a href="put.html"><img src="버튼/담기버튼.png" width="25"
								height="25"></a></td>
					</tr>
					<tr>
						<td><input type="checkbox" title="전체선택" class="checkall"></td>
						<td><h4>4</h4></td>
						<td><img src="버튼/레드벨벳.PNG" width="50" height="50"></td>
						<td>빨간 맛</td>
						<td>레드벨벳</td>
						<td>The Red Summer-Summer Mini Album</td>
						<td><a href="movie.html"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
						<td><a href="down.html"><img src="버튼/다운버튼.png" width="25"
								height="25"></a></td>
						<td><a href="listen.html"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><a href="lycis.html"><img src="버튼/가사버튼.png"
								width="25" height="25"></a></td>
						<td><a href="put.html"><img src="버튼/담기버튼.png" width="25"
								height="25"></a></td>
					</tr>
					<tr>
						<td><input type="checkbox" title="전체선택" class="checkall"></td>
						<td><h4>5</h4></td>
						<td><img src="버튼/지코.PNG" width="50" height="50"></td>
						<td>Artist</td>
						<td>지코</td>
						<td>TELEVISION</td>
						<td><a href="movie.html"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
						<td><a href="down.html"><img src="버튼/다운버튼.png" width="25"
								height="25"></a></td>
						<td><a href="listen.html"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><a href="lycis.html"><img src="버튼/가사버튼.png"
								width="25" height="25"></a></td>
						<td><a href="put.html"><img src="버튼/담기버튼.png" width="25"
								height="25"></a></td>
					</tr>
					<tr>
						<td><input type="checkbox" title="전체선택" class="checkall"></td>
						<td><h4>6</h4></td>
						<td><img src="버튼/블랙핑크.PNG" width="50" height="50"></td>
						<td>마지막처럼</td>
						<td>BLACKPINK</td>
						<td>마지막처럼</td>
						<td><a href="movie.html"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
						<td><a href="down.html"><img src="버튼/다운버튼.png" width="25"
								height="25"></a></td>
						<td><a href="listen.html"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><a href="lycis.html"><img src="버튼/가사버튼.png"
								width="25" height="25"></a></td>
						<td><a href="put.html"><img src="버튼/담기버튼.png" width="25"
								height="25"></a></td>
					</tr>
					<tr>
						<td><input type="checkbox" title="전체선택" class="checkall"></td>
						<td><h4>7</h4></td>
						<td><img src="버튼/마마무.PNG" width="50" height="50"></td>
						<td>나로 말할것 같으면</td>
						<td>마마무</td>
						<td>Purple</td>
						<td><a href="movie.html"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
						<td><a href="down.html"><img src="버튼/다운버튼.png" width="25"
								height="25"></a></td>
						<td><a href="listen.html"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><a href="lycis.html"><img src="버튼/가사버튼.png"
								width="25" height="25"></a></td>
						<td><a href="put.html"><img src="버튼/담기버튼.png" width="25"
								height="25"></a></td>
					</tr>
					<tr>
						<td><input type="checkbox" title="전체선택" class="checkall"></td>
						<td><h4>8</h4></td>
						<td><img src="버튼/에이핑크.PNG" width="50" height="50"></td>
						<td>FIVE</td>
						<td>에이핑크</td>
						<td>Pink UP</td>
						<td><a href="movie.html"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
						<td><a href="down.html"><img src="버튼/다운버튼.png" width="25"
								height="25"></a></td>
						<td><a href="listen.html"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><a href="lycis.html"><img src="버튼/가사버튼.png"
								width="25" height="25"></a></td>
						<td><a href="put.html"><img src="버튼/담기버튼.png" width="25"
								height="25"></a></td>
					</tr>

				</table>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="/som/js/popular/verticalTab.js"></script>
</body>
</html>