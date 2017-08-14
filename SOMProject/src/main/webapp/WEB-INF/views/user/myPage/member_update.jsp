<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 수정</title>
<link type="text/css" rel="stylesheet" href="/som/css/myPage/myPage_style.css">
<script>
function updateResult(value) {
	if (value == "success") {
		alert('변경성공');
	}
}
function openSignUp() {
	window.open("regForm1.do", "_blank", "width=550, height=800");
}
window.onload = updateResult("${value}");

</script>
</head>
<body>
<header>
   <div class="header_menu">
      <ul class="header_menu_ul" style="color: white">
         <li class="menu"><a><img src="../images/menu_bar.png" width="40" height="40" alt="" /></a>
            <!-- <ul class="hide">
               <li>최신가요</li>
               <li>인기차트</li>
               <li>버스킹</li>
               <li>게시판</li>
            </ul> --></li>
         <li class="menu"><a href="myPage_home.jsp" title="Home"
            class="hd_logo"><img src="../images/som_logo.jpg" width="100" height="40"></a></li>
         <li class="menu" id=""><a href="#"><span
               class="hd_mn_ul_li_span">Login</span></a><a href="#"><span
               class="hd_mn_ul_li_span">/Join</span></a></li>
      </ul>
   </div>
   </header>
   <form method="post" action="member_updateProc.do">
	<input type="hidden" name="email" value="${vo.email}">
	<div id="updt_info">
		<table border="0" width="300" height="480">
			<tr>
				<td colspan="2" align="center">
					<h2>회원정보 수정</h2>
				</td>
			</tr>
			<tr>
				<td>
					<label for="id">회원 ID</label>
				</td>
				<td>
					ID:${vo.email}
				</td>
			</tr>
			<tr>
				<td>
					<label for="password1">패스워드</label>
				</td>
				<td>
					<input type="password" name="pass" value="${vo.pass}"/>
				</td>
			</tr>
			<tr>
				<td>
					<label for="password2">패스워드확인</label>
				</td>
				<td>
					<input type="password" name="password2" value="${vo.pass}"/>
				</td>
			</tr>
			<tr>
				<td>
					<label for="dob">생년월일</label>
				</td>
				<td>
					<input type="date" name="birth" value="${vo.birth}"/>
				</td>
			</tr>
			<tr>
				<td>
					<label for="name">이름</label>
				</td>
				<td>
					<input type="text" name="name" value="${vo.name}"/>
				</td>
			</tr>
			<tr>
				<td>
					<label for="tel">휴대폰 번호</label>
				</td>
				<td>
					<input type="tel" name="phone" value="${vo.phone}"/>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br>
					<a href="myPage_home.jsp"><input type="submit" value="수정"></a>&nbsp;&nbsp;
					<a href="myPage_home.do"><input type="button" value="취소" onclick="window.location='myPage_home.do'"></a>
				</td>
			</tr>
		</table>
	</div>
	</form>
</body>
</html>