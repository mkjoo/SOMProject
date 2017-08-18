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
		<form method="post" name="writeForm" action="adminNoticeWriteProc.mdo" >
<table width="450" border="1">
<tr>
	<td align="center">작성자</td>
	<td><input type="text" name="writer" value="${writer}"></td>
</tr>
<tr>
	<td>비밀번호</td>
	<td width="145"><input type="password" name="pass" value="${pass}"></td>	
</tr>
<tr>
	<td>이메일</td>
	<td><input type="text" size="60" name="email" value="${email}"></td>
</tr>
<tr>
	<td>제목</td>
	<td><input type="text" size="60" name="subject" value="${subject}"></td>
</tr>
<tr>
	<td>내용</td>
	<td><textarea name="content" rows="13" cols="60" ></textarea></td>
</tr>
</table>
<input type="submit" value="글쓰기" >
<input type="button" value="목록보기" onclick="window.location='adminNoticeList.mdo'" />
</form>

	</div>
   <footer>
      <br><br>
      <div id="footer">
      <p id="about">
         Back to <a href="../jsp/myPage_home.jsp">main</a> / Go to <a href="../jsp/myMusic_list.jsp">Home</a>
      </p>
         <br><hr/>
         <table border="0" id="foot1" width="870" height="50">
            <tr>
               <td>회사소개&nbsp; | </td>
               <td>이용약관&nbsp; | </td>
               <td>개인정보처리방침&nbsp; | </td>
               <td>청소년보호정책&nbsp; | </td>
               <td>제휴/프로모션문의&nbsp; | </td>
               <td>이메일주소무단수집거부&nbsp; | </td>
               <td>파트너센터&nbsp; | </td>
               <td>사업자정보확인</td>
            </tr>
         </table>
         <table border="0" id="foot2" width="1000" height="80">
            <tr>
               <td>서울시 성동구 무학로2길 54 신방빌딩&nbsp; | </td>
               <td>대표 : 주민경,신가람,김한누리,최시온&nbsp; | </td>
               <td>사업자등록번호 : ***-**-*****&nbsp; | </td>
               <td>통신판매업 신고번호 : 제2017-서울성동-*****호</td>
            </tr>
            <tr>
               <td>문의전화(평일 13:00~15:00) : 1588-0000&nbsp; | </td>
               <td>이메일 : mymusic_som@gmail.com&nbsp; | </td>
               <td colspan="2" align="left">ⓒ2017. SOM Entertainment, Inc, ALL RIGHTS RESERVED.</td>
            </tr>
         </table>
      <br>
      <br>
      </div>
      
   </footer>
<script>
function logout(){
   alert('로그아웃 하시겠습니까?');
   alert('로그아웃 되었습니다.');
}
</script>
</body>
</html>