<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../htmls/myPage_style.css">
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
	<div id="passAcc">
	<p><h4>암호를 입력해주세요 :D </h4></p>
	<br/>
		<label for="password">
			<input type="password"  name="access_pw">
		</label>
	<br></br>
		<div id="pass_submit">
			<a href="member_update.jsp" target="_self"><input type="submit" value="확인"></a>
			&nbsp;&nbsp;&nbsp;
			<a href="myPage_home.jsp" target="_self"><input type="submit" value="취소"></a>
		</div>
	</div>
</body>
</html>