<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
.comment{
	width:200px;height:200px;border:1px solid black;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>앨범 업로드</title>
<link type="text/css" rel="stylesheet" href="../htmls/myPage_style.css">
<script>
function writeCheck(){
	document.writeForm.submit();
}
</script>
<script type="text/javascript" src="/som/js/main/slider.js"></script>
<script type="text/javascript" src="/som/js/main/login.js"></script>
<script type="text/javascript" src="/som/js/main/menu.js"></script>
<script type="text/javascript" src="/som/js/main/signUp.js"></script>


<link href="/som/css/main/modal.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/login.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/slider.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/content.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/footer.css" rel="stylesheet" tyep="text/css">
<link href="/som/css/main/menu.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/mp_header.css" rel="stylesheet" type="text/css">

</head>
<body>
 	<header>
	<div class="header_menu">
		<jsp:include page="../a_header.jsp" flush="false"/>
	</div>
	</header>
	
<div id="divide">
   <jsp:include page="../admin_tab.jsp" flush="false"/>
   <div>
<form method="get" name="writeForm" action="adminFreeBoardUpdateProc.mdo">
<input type="hidden" name="num" value="${vo.num}" />
<input type="hidden" name="writer" value="${vo.writer}" />
<input type="hidden" name="readcount" value="${vo.readcount}" />
<table width="600" border="1">
<tr>
	<td align="center" width="100">번호</td>
	<td align="center" width="200">${vo.num}</td>
	<td align="center" width="100">작성일</td>
	<td align="center" width="200">${vo.regdate}</td>
</tr>
<tr>
	<td align="center">작성자</td>
	<td align="center">${vo.writer}</td>
	<td align="center">조회수</td>
	<td align="center">${vo.readcount}</td>
</tr>
<tr>
	<td align="center">제목</td>
	<td align="center"><input type="text" name="subject" value="${vo.subject}"></td>
</tr>
<tr>
	<td align="center">내용</td>
	<td colspan="7" height="100"><input type="text" name="content" value="${vo.content}"></td>
</tr>
</table>

<!-- 수정삭제 바꺼라.. -->
<input type="submit" value="글수정" />
<input type="button" value="목록보기" onclick="window.location='adminFreeBoardList.mdo'" />
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

이름:<>

</body>
</html>