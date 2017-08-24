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
		<jsp:include page="../a_header.jsp" flush="false"/>
	</div>
	</header>
	
<div id="divide">
   <jsp:include page="../admin_tab.jsp" flush="false"/>
<div>

      <h4>자유게시판</h4>
      <table width="700" border="1">
      <tr>
          <td align="right" colspan="5">
 		    <input type="button" value="전체목록" onclick="window.location='adminFreeBoardList.mdo'" />
            <input type="button" value="글쓰기" onclick="window.location='adminFreeBoardWriteForm.mdo'"/>
      	  </td>
      </tr>
      <tr>
         <td align="center" width="60">번호</td>
         <td align="center" width="380">제목</td>
         <td align="center" width="100">작성자</td>
         <td align="center" width="100">작성일</td>
         <td align="center" width="60">조회수</td>
      </tr>
      <!-- 글이 없을 경우 -->
      <c:if test="${count==0 }">
      	
         <tr>
            <td colspan="6" align="center">게시판에 저장된 글이 없습니다.</td>
         </tr>
      </c:if>
      <c:if test="${count !=0 }">
         <c:forEach var="vo" items="${boardList }">
            <tr>
               <td align="center">${number}<c:set var="number" value="${number-1 }" scope="page"/></td>
               <td align="left">
               
               <a align="center" href="adminFreeBoardContent.mdo?num=${vo.num}&pageNum=${bp.cur_Page}">${vo.subject} (${vo.commentcount}) </a>

            </td>
               <td align="center">${vo.writer}</td>
               <td align="center">${vo.regdate }</td>
            </tr>
         </c:forEach>
      </c:if>
      </table>
      <br/>
      <c:if test="${bp.isPre() }">
      <a href="adminFreeBoardList.mdo?pageNum=${bp.getPage_Start()-bp.p_size}">[이전]</a>
      </c:if>
      <c:forEach var="counter" begin="${bp.getPage_Start() }" end="${bp.getPage_End() }">
      <c:if test="${search_text ne ''}">
      <a href="javascript:window.location='adminFreeBoardList.mdo?pageNum=${counter }&search_type=${search_type}&search_text=${search_text}'">
      [${counter }]</a>
      </c:if>
      <c:if test="${search_text eq ''}">
      <a href="javascript:window.location='adminFreeBoardList.mdo?pageNum=${counter }'">
      [${counter }]</a>
      </c:if>
      </c:forEach>
      <c:if test="${bp.isNext() }">
      <a href="adminFreeBoardList.mdo?pageNum=${bp.getPage_Start()+bp.p_size }">[다음]</a>
      </c:if>
      <p><p>
    

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