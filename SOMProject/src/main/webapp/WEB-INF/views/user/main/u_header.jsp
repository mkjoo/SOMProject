<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
						<a class="dropmenu" href="newest.do">최신가요</a> <a class="dropmenu" href="popular.do">인기가요</a>
						<a class="dropmenu" href="busking.do">버스킹</a> <a class="dropmenu" href="noticeList.do">게시판</a>
					</div>
				</div>
			</li>
			<li class="menu"><a href="userMainPage_home.do" title="Home"
				class="hd_logo"><img src="/som/images/main/som_logo.png"
					width="70" height="25"></a></li>
			<c:if test="${loginID eq null}"><li class="menu"><button id="myBtn">Login/Join</button></li></c:if>
			<c:if test="${loginID ne null}">${loginID.name}님 환영</c:if>
					<c:if test="${loginID ne null}">
					<button onclick="myFunction2()" class="dropbtn2">
						<img src="/som/images/main/메뉴바.png" width="25" height="25" alt="" />
					</button>
					</c:if>
					<div id="myDropdown2" class="dropdown2-content2">
						<a class="dropmenu" href="myPage_home.do">마이페이지</a>
						<a class="dropmenu" href="myPoint.do">포인트충전</a>
						<a class="dropmenu" href="logout.do">로그아웃</a>
					</div>
			</li>			
		</ul>
	</div>
			<div class="header_search">
		<form action="search.do" method="get">
		<input id="seach" name="search_text" type="text" placeholder="Search Music"> 
		<input type="submit" value="Search" > <br />
		</form>
	</header>
</body>
</html>