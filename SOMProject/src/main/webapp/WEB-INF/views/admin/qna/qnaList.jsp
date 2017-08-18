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
   <table width="700" border="1">
      <tr>
         <td align="right" colspan="5">
            <input type="button" value="전체목록" onclick="window.location='adminQnaList.mdo'" />
            <input type="button" value="글쓰기" onclick="window.location='adminQnaWriteForm.mdo'"/>
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
      <c:if test="${qnaCount==0 }">
         <tr>
            <td colspan="6" align="center">게시판에 저장된 글이 없습니다.</td>
         </tr>
      </c:if>
      <c:if test="${qnaCount !=0 }">
         <c:forEach var="qnaVo" items="${qnaList }">
            <tr>
               <td align="center">${qnaNumber}<c:set var="qnaNumber" value="${qnaNumber-1 }" scope="page"/></td>
               <td align="left">
             <c:if test="${qnaVo.depth>0}">
   			<img src=re.gif />
			</c:if>
               <a align="center" href="adminQnaContent.mdo?num=${qnaVo.num}&pageNum=${qnaBp.cur_Page}">${qnaVo.subject}</a>
               

            </td>
               <td align="center">${qnaVo.writer}</td>
               <td align="center">${qnaVo.regdate }</td>
            </tr>
         </c:forEach>
      </c:if>
      </table>
      <br/>
      <c:if test="${qnaBp.isPre() }">
      <a href="adminQnaList.mdo?pageNum=${qnaBp.getPage_Start()-qnaBp.p_size}">[이전]</a>
      </c:if>
      <c:forEach var="counter" begin="${qnaBp.getPage_Start() }" end="${qnaBp.getPage_End() }">
 
      <a href="javascript:window.location='adminQnaList.mdo?pageNum=${counter}'">
      [${counter}]</a>
    
      </c:forEach>
      <c:if test="${qnaBp.isNext() }">
      <a href="adminQnaList.mdo?pageNum=${qnaBp.getPage_Start()+qnaBp.p_size }">[다음]</a>
      </c:if>
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