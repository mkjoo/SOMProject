<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
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
<script type="text/javascript" src="/som/js/main/slider.js"></script>
<script type="text/javascript" src="/som/js/main/login.js"></script>
<script type="text/javascript" src="/som/js/main/menu.js"></script>
<script type="text/javascript" src="/som/js/main/signUp.js"></script>


<link href="/som/css/main/login.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/slider.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/menu.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/mp_header.css" rel="stylesheet" type="text/css">
<link type="text/css" rel="stylesheet" href="/som/css/myPage/myPage_style.css">

<link href="/som/css/popular/popular.css" rel="stylesheet" type="text/css">
<link href="/som/css/popular/verticalTabs.css" rel="stylesheet"	type="text/css">
</head>

<body>

	<!-- header -->
	<header>
	<div class="header_menu">
		<jsp:include page="../main/u_header.jsp" flush="false"/>
	</div>
	</header>
	
	
	<hr style="width: 90%; margin-left: 40px" />
	
		
		 
<nav id="myp_title">
		<h2>&nbsp;인기가요</h2>
		<hr/>
	</nav>
	<section>
		<div class="container-fluid"></div>
		<div id="list" class="tab">
			<ul class="music">
				<li><button class="tablinks" onclick="a('k-pop');"
						>가요</button></li>
				<li><button class="tablinks" onclick="a('pop');">POP</button></li>
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
		<c:forEach var="musicVo" items="${list}" varStatus="status">
			<tr>
						<td><input type="checkbox" name="chk" value="${musicVo.m_num}" title="전체선택" ></td>
						<td><h4>${status.count}</h4></td>
						<td><img src="버튼/캡처.PNG" width="50" height="50"></td>
						<td>${musicVo.m_name}</td>
						<td>${musicVo.m_artist}</td>
						<td>${musicVo.m_album}</td>
				<td><a href="#" onclick="javascript:window.open('getPopularMovie.do?m_musicvideo=${musicVo.m_musicvideo}','aa','height=500px, width=500px')"><img src="/som/images/myPage/뮤비버튼.png" width="25" height="25"></a></td>
						<td><a href="#" onclick="javascript:window.open('buy.do?path=${musicVo.m_path}&fileName=${musicVo.m_name}','get','height=500px, width=500px')"><img src="/som/images/myPage/다운버튼.png" width="25" height="25"></a></td>
						<td><a href="#" onclick="javascript:window.open('addPlay.do?m_num=${musicVo.m_num}','aa','height=310px, width=500px')"><img src="/som/images/myPage/듣기버튼.png" width="25" height="25"></a></td>
						<td><a href="#" onclick="javascript:window.open('lyrics.do?lyrics=${musicVo.m_lyrics}','get','height=500px, width=500px')"><img src="/som/images/myPage/가사버튼.png" width="25" height="25"></a></td>	
						<td><a href="#" onclick="window.open('selectPlayList.do?m_num=${musicVo.m_num}','get','height=400px, width=400px')"><img src="/som/images/myPage/담기버튼.png" width="25" height="25"></a></td></tr>
			
		</c:forEach>
		<input type="submit" value="선택한곡듣기">
		</form>
				</table>
			</div>
		</div>
	</div>

	</section>
	


	<script src="/som/js/main/slider.js" type="text/javascript"></script>
</body>
</html>