<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Insert title here</title>
<script type="text/javascript" src="/som/js/main/menu.js"></script>
<link href="/som/css/busking/busking.css" rel="stylesheet"
	type="text/css">
<link href="/som/css/main/menu.css" rel="stylesheet" type="text/css">
</head>
<body>
	<!-- header -->
		<header>
	<div class="header_menu">
		<jsp:include page="../main/u_header.jsp" flush="false"/>
	</div>
	</header>
	<nav>
		<div class="nav1">
			<h1>BUSKING</h1>
			<hr>

		</div>
		<div class="nav2">
			<h3>Busking음원올리기</h3>
			<input type="button" onclick="window.location='buskingUploadForm.do'" value="Upload">
		</div>
	</nav>

	<section>
		<div id="new">

			<h2>New</h2>
			<br /> <br />
			<c:forEach var="list" items="${list}">
				<table>
					<tr>
						<td rowspan="2" width="8%"><img
							src="/som/images/main/new.gif" class="newImg" width="25" height="25" ></td>
						<td rowspan="2" width="15%"><img
							src="/som/images/myPage/악동뮤지션.PNG" class="img" width="60" height="60"></td>
						<td width="53%">${list.m_name}</td>
						<td rowspan="2" width="8%"><a><input type="image"
								src="images/myPage/듣기버튼.png" onClick="" width="25" height="25">&nbsp;&nbsp;</a></td>
						<td rowspan="2" width="8%"><a><input type="image"
								src="images/myPage/가사버튼.png" onClick="" width="25" height="25">&nbsp;&nbsp;</a></td>
						<td rowspan="2" width="8%"><a><input type="image"
								src="images/myPage/담기버튼.png" onClick="" width="25" height="25">&nbsp;&nbsp;</a></td>
					</tr>
					<tr>
						<td>${list.m_artist}</td>
					</tr>

				</table>
			</c:forEach>
		</div>

		<div id="popular">
			<br />
			<h2>Popular</h2>
			<br />
			<br />
			<c:forEach var="list" items="${list}" varStatus="number">
				<table>
					<tr>
						<td rowspan="2" width="8%"><h4>${number.count}</h4></td>
						<td rowspan="2" width="15%"><img
							src="images/myPage/악동뮤지션.PNG" class="img" width="60" height="60"></td>
						<td width="53%">${list.m_name}</td>

						<td rowspan="2" width="8%"><a  onclick="javascript:window.open('addPlay.do?m_num=${list.m_num}','aa','height=310px, width=500px')" ><input type="image"
								src="images/myPage/듣기버튼.png" onclick="javascript:window.open('addPlay.do?m_num=${list.m_num}','aa','height=310px, width=500px')" width="25" height="25">&nbsp;&nbsp;</a></td>
						<td rowspan="2" width="8%"><a><input type="image"
								src="images/myPage/가사버튼.png" onclick="window.open('lyrics.do?lyrics=${list.m_lyrics}','get','height=500px, width=500px')" width="25" height="25">&nbsp;&nbsp;</a></td>
						<td rowspan="2" width="8%"><a><input type="image"
								src="images/myPage/담기버튼.png" onclick="window.open('selectPlayList.do?m_num=${list.m_num}','get','height=400px, width=400px')" width="25" height="25">&nbsp;&nbsp;</a></td>
					</tr>
					<tr>
						<td>${list.m_artist}</td>
					</tr>
				</table>
			</c:forEach>


		</div>


	</section>
</body>
</html>