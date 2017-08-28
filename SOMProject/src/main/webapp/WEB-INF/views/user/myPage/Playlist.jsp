<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<style>
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script>
function updateResult(value) {
	if (value == "success") {
		alert('구매성공');
	}
}
window.onload = updateResult("${value}");


function myFunction2() {
    document.getElementById("myDropdown2").classList.toggle("show");
}
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
<link type="text/css" rel="stylesheet" href="/som/css/myPage/myPage_style.css">
<link href="/som/css/board/board.css" rel="stylesheet" type="text/css">
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
		<h2>&nbsp;MyPage</h2>
		<hr/>
	</nav>
	<section>
		<div class="container-fluid"></div>
		<div id="box1">
<c:forEach var="playListVo" items="${list}">
	<input type="button" value="${playListVo.list_name}" onclick="window.location='Playlist.do?list_num=${playListVo.list_num}'"/>
</c:forEach>
		</div>
	</section>
	
	
	<table border="0" style="width: 50%" height="30">
				<caption><br><br></caption>
				<colgroup>
					<col style="width: 29px" />
					<col style="width: 60px" />
					<col style="width: 110px" />
					<col style="width: 320px">
					<col style="width: 50px" />
					<col style="width: 70px" />
					<col style="width: 70px" />
				</colgroup>
				<!--150515 수정 lyr-->
				<thead>
					<tr>
						<th scope="col"><div class="wrap pd_none left">
								<th><input type="checkbox" name="all" class="checkall" id="checkall"></th>
							</div></th>
						<th scope="col"><div class="wrap pd_none">NO</div></th>
						<th scope="col"><div class="wrap none">가수</div></th>
						<th scope="col"><div class="wrap">곡명</div></th>
						<th scope="col" class="t_left"><div class="wrap right_none">듣기</div></th>
						<th scope="col"><div class="wrap pd_none left">가사</div></th>
						
					</tr>
				</thead>
				<c:forEach var="musicVo" items="${list2}">
				<tr align="center">
					<td><input type="checkbox" name="chk" value="${musicVo.m_num}"></td>
					<td>${musicVo.m_num}</td>
					<td>${musicVo.m_artist}</td>
					<td><a href="../songs_jsp/kard_holahola.jsp">${musicVo.m_name}</a></td>
					<td><a href="#" onclick="javascript:window.open('addPlay.do?m_num=${musicVo.m_num}','aa','height=310px, width=500px')"><img src="버튼/듣기버튼.png"
								width="25" height="25"></a></td>
					<td><input type="button" value="가사" onclick="window.open('lyrics.do?lyrics=${musicVo.m_lyrics}','get','height=500px, width=500px')"></td>

				</tr>
				</c:forEach>
			
				
			</table>


	<!-- footer -->


	<script src="/som/js/main/slider.js" type="text/javascript"></script>
</body>
</html>