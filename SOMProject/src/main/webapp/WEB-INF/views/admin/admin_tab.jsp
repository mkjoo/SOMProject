<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
div#divide {
	margin : 90px 40px;
	padding : 50px 0 0 50px;
	border : 2px solid gray;
	border-radius : 15px;
	width : 880px;
	height : 400px;
}
#setTable {
	float : right;
	padding : 0 50px 0 0;
}

.admin_tab {
	float : left;
	overflow : hidden;
	background-color : white;
	border-right : 2px solid orange;
	width : 150px;
	height : 200px;
}
.admin_tab a {
	display : block;
	color : black;
	text-align : left;
	text-decoration : none;
}
.admin_tab a:hover {
	background-color : gray;
	color : white;
}
.admin_tab .icon {
	display : none;
}

</style>
</head>
<body>
<div class="admin_tab" id="maintable">
	<table width="140">
	
		<!-- 
		<tr>
			<td><a href="admin_home.mdo">관리자 페이지</a></td>
		</tr>
		-->
		<tr>
			<td><a href="admin_home.mdo">회원 관리</a></td>
		</tr>
		
		<tr>
			<td><a href="adminNoticeList.mdo">공지사항 관리</a></td>
		</tr>
		<tr>
			<td><a href="adminQnaList.mdo">Q&A게시판 관리</a></td>
		</tr>
		<tr>
			<td><a href="adminFreeBoardList.mdo">자유게시판 관리</a></td>
		</tr>
		<tr>
			<td><a href="upload_album.mdo">음악 등록</a></td>
		</tr>
		<tr>
			<td><a href="logout.do">로그아웃</a></td>
		</tr>
	</table>	
	</div>	
</body>
</html>