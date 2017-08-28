<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>앨범 업로드</title>
<link type="text/css" rel="stylesheet" href="../htmls/myPage_style.css">
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
		<jsp:include page="../main/u_header.jsp" flush="false"/>
	</div>
	</header>
	
	<div>
		${imageFileName} 업로드성공<br>
		${mp3FileName} 업로드성공<br>
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