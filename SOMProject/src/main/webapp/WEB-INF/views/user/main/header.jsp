<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function a(genre) {
		window.location = genre + 'Newest.do?m_genre=' + genre;
	}
	function b(genre) {
		window.location = genre + 'Popular.do?m_genre=' + genre;
	}
</script>
</head>
<body>
	<header>
	<div class="header_menu">
		<ul class="header_menu_ul" style="color: white">
			<li class="menu">

				<div class="dropdown">

					<button onclick="myFunction()" class="dropbtn">
						<img src="/som/images/main/메뉴바.png" width="25" height="25" alt="" />
					</button>

					<div id="myDropdown" class="dropdown-content">
						<a class="dropmenu" onclick="a('k-pop');">최신가요</a> <a
							class="dropmenu" onclick="b('k-pop');">인기가요</a> <a
							class="dropmenu" href="busking.do">버스킹</a> <a class="dropmenu"
							href="noticeList.do">게시판</a>
					</div>
				</div>
			</li>
			<li class="menu">
				<ul class="logo_search">
					<li><a href="mainPage.do" title="Home" class="hd_logo"><img
							src="/som/images/main/som_logo.png" width="70" height="25"></a></li>
					<li><div class="header_search">
							<form action="search.do" method="get">
								<input id="header_search" name="search_text" type="text"
									placeholder="Search Music"> <input type="submit"
									value="Search"> <br />
							</form>
						</div></li>
				</ul>
			</li>
			<li class="menu"><button id="myBtn">Login/Join</button></li>
		</ul>
	</div>
	</header>
</body>
</html>