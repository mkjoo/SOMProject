<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
function updateResult(value) {
	if (value == "success") {alert('구매성공');}
	if (value == "succes")	{alert('담기성공');}
}

window.onload = updateResult("${value}");

$(document).ready(function(){
    //최상단 체크박스 클릭
    $("#checkall").click(function(){
        //클릭되었으면
        if($("#checkall").prop("checked")){

            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[name=chk]").prop("checked",true);
            //클릭이 안되있으면
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[name=chk]").prop("checked",false);
        }
    });
});

function a(genre){
	window.location=genre+'Popular.do?m_genre='+genre;
}
</script>
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
				<li><button class="tablinks" onclick="a('k-pop');"
						>가요</button></li>
				<li><button class="" onclick="a('pop');">POP</button></li>
				<li><button class="tablinks" onclick="a('ost');">OST</button></li>
				<li><button class="tablinks" onclick="a('edm');">DEM</button></li>
				<li><button class="tablinks" onclick="a('jazz')">JAZZ</button></li>
				<li><button class="tablinks"
						onclick="a('classic')">CLASSIC</button></li>
				<li><button class="tablinks" onclick="a('j-pop')">J-POP</button></li>
				<li><button class="active" onclick="a('ccm')">CCM</button></li>
				</ul>
		</div>
		<div id="kpop" class="tabcontent">
			<div id="content">
			
				<table>
					<tr>
						<th><input type="checkbox" name="all" class="checkall" id="checkall"></th>
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
		<form action="addAllPlay.do" method="get" name="my_form">
		<c:forEach var="musicVo" items="${list}">
			<tr>
						<td><input type="checkbox" name="chk" value="${musicVo.m_num}" ></td>
						<td><h4>${musicVo.m_num}</h4></td>
						<td><img src="버튼/캡처.PNG" width="50" height="50"></td>
						<td>${musicVo.m_name}</td>
						<td>${musicVo.m_artist}</td>
						<td>${musicVo.m_album}</td>
						<td><a href="movie.html"><img src="버튼/뮤비버튼.png"
								width="25" height="25"></a></td>
		
					<td><input type="button" value="구매" onclick="window.location='buyProc.do?usepoint=500&usecontent=buymusic'"></td>
						<td><a href="#" onclick="javascript:window.open('addPlay.do?m_num=${musicVo.m_num}','aa','height=310px, width=500px')"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
						<td><input type="button" value="가사" onclick="window.open('lyrics.do?lyrics=${musicVo.m_lyrics}','get','height=500px, width=500px')"></td>
						<!-- <td><input type="button" value="담기" onclick="window.location='insertPlay.do?email=${email}&m_name=${musicVo.m_name}&m_artist=${musicVo.m_artist}&m_album=${musicVo.m_album}&m_genre=${musicVo.m_genre}&m_lyrics=${musicVo.m_lyrics}'"></td>-->
						<td><input type="button" value="담기" onclick="window.open('selectPlayList.do?m_num=${musicVo.m_num}','get','height=400px, width=400px')"></td>
					</tr>
			
		</c:forEach>
		<input type="submit" value="선택한곡듣기">
		</form>
				</table>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="/som/js/popular/verticalTab.js"></script>
</body>
</html>