<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
			<ul class="header_menu_ul" style="color: white">
			<li class="menu">

				<div class="dropdown">

					<button onclick="myFunction()" class="dropbtn">
						<img src="/som/images/main/메뉴바.png" width="25" height="25" alt="" />
					</button>

					<div id="myDropdown" class="dropdown-content">
						<a class="dropmenu" href="newest.do">최신가요</a> <a class="dropmenu" href="popular.do">인기가요</a>
						<a class="dropmenu" href="busking.do">버스킹</a> <a class="dropmenu" href="noticeList.do">게시판</a>
						<a class="dropmenu" href="admin_home.mdo">관리자홈</a>
					</div>
				</div>
			</li>
			<li class="menu"><a href="adminMainPage_home.mdo" title="Home"
				class="hd_logo"><img src="/som/images/main/som_logo.png"
					width="70" height="25"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${loginID.name}님 환영</li>
			
		</ul>
			
		<div class="header_search">
		<form action="search.mdo" method="get">
		<input id="seach" name="search_text" type="text" placeholder="Search Music"> 
		<input type="submit" value="Search" > <br />
		</form>
	</div>
</body>
</html>