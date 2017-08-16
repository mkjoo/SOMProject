<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
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
			<table border="0" style="width: 50%" height="300">
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
				<c:forEach var="musicVo" items="${list}">
				<tr align="center">
					<td><input type="checkbox"></td>
					<td>${musicVo.m_num}</td>
					<td>${musicVo.m_artist}</td>
					<td><a href="../songs_jsp/kard_holahola.jsp">${musicVo.m_name}</a></td>
					<td><input type="button" value="듣기" onclick="window.location='upCountPlay.do?m_name=${musicVo.m_name}'"></td>
					<td><input type="button" value="가사" onclick="window.open('lyrics.do?lyrics=${musicVo.m_lyrics}','get','height=500px, width=500px')"></td>

				</tr>
				</c:forEach>
			
				
			</table>
	
</body>
</html>