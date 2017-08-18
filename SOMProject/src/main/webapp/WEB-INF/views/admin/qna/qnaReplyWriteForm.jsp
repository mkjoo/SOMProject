<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>앨범 업로드</title>
<link type="text/css" rel="stylesheet" href="../htmls/myPage_style.css">

</head>
<body>
   <header>
      <div class="header_menu" width="300">
         <ul class="header_menu_ul" style="color: white">
            <li class="menu"><a><img src="../images/menu_bar.png" width="40" height="40" alt="" /></a> 
            <!-- <ul class="hide">
               <li>최신가요</li>
               <li>인기차트</li>
               <li>버스킹</li>
               <li>게시판</li>
            </ul> --></li>
            <li class="menu"><a href="myPage_home.jsp" title="Home" class="hd_logo">
               <img src="../images/som_logo.jpg" width="100" height="40"></a></li>
            <li class="menu" id=""><a href="#"><span class="hd_mn_ul_li_span">Login&nbsp;</span></a>
               <a href="#"><span class="hd_mn_ul_li_span">/&nbsp;Join</span></a></li>
         </ul>
      </div>
   </header>
<div id="divide">
   <jsp:include page="../admin_tab.jsp" flush="false"/>
   <div>
<form method="post" name="writeForm" action="adminQnaReplyWriteProc.mdo">
<input type="hidden" name="num" value="${num}">
<input type="hidden" name="ref" value="${ref}">
<input type="hidden" name="step" value="${step}">
<input type="hidden" name="depth" value="${depth}">

<table>
<tr>
	<td>작성자</td>
	<td><input type="text" name="writer" value="${writer}"></td>
</tr>

<tr>
	<td>비밀번호</td>
	<td><input type="password" name="pass" value="${pass}"></td>
</tr>

<tr>
	<td>이메일</td>
	<td><input type="text" name="email" value="${email}"></td>
</tr>
<tr>
	<td>제목</td>
	<td><input type="text" name="subject" value="${subject}"></td>
</tr>

<tr>
	<td>내용</td>
	<td><textarea name="content" rows="13" cols="60"></textarea></td>
</tr>
</table>
<input type="button" value="글쓰기" onclick="writeCheck()" />
<input type="button" value="목록보기" onclick="window.location='list.do'" />
</form>
      </div>
      
   </footer>
<script>
function logout(){
   alert('로그아웃 하시겠습니까?');
   alert('로그아웃 되었습니다.');
}
function writeCheck(){
	document.writeForm.submit();
}
</script>
</body>
</html>