<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 게시판입니다</title>
<link type="text/css" rel="stylesheet" href="/som/css/myPage/myPage_style.css">
<style>
nav {
	margin-left: 80px;
	margin-top: 50px;
}

* {
	box-sizing: border-box;
}

body {
	font-family: "Lato", sans-serif;
}

div#board_content {
	margin: 30px 40px 10px 40px;
}
/* 탭의 스타일에 대한 설정 */
div.tab {
	float: left;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
	width: 20%;
	height: 202px;
}

/* 탭안의 버튼에 대한 스타일 설정 */
div.tab button {
	display: block;
	background-color: inherit;
	color: black;
	padding: 22px 16px;
	width: 100%;
	border: none;
	outline: none;
	text-align: left;
	cursor: pointer;
	transition: 0.3s;
	font-size: 17px;
}
/* 버튼위에 마우스를 가져갈 때의 색상 변경 */
div.tab button:hover {
	background-color: #ddd;
}
/* 탭버튼이 눌러질 때의 색상 변경 */
div.tab button.active {
	background-color: #ccc;
}
/* 탭 내 내용의 스타일 */
.tabcontent {
	float: left;
	padding: 20px 10px 20px 10px;
	border: 1px solid #ccc;
	height: 500px;
	overflow : auto;
}

/* 페이징 처리의 스타일 설정 */
.pagination {
	margin-left : 250px;
	margin-top : 30px;
}
.pagination a {
	color : black;
	float : left;
	padding : 8px 16px;
	text-decoration : none;
	transition : background-color .3s;
}
.pagination a.active {
	background-color : #4CAF50;
	color : white;
}
.pagination a:hover:not(.active) {background-color : #ddd;}
</style>
</head>
<script>
</script>
<body>
	<nav>
		<h2>게시판 목록</h2>
	</nav>
	
	<hr style="width: 90%; margin-left: 40px" />
	<div id="board_content">
		<div class="tab">
			<button class="tablinks" onclick="b();openCity(event, 'notice_board')"
				id="defaultOpen">공지사항</button>				
			<button class="tablinks" onclick="a();openCity(event, 'qna_board');">QNA</button>
			<button class="tablinks" onclick="openCity(event, 'free_board')">자유게시판</button>
		</div>
		
		
		
		
		
		
		<div id="notice_board" class="tabcontent">
		
      <h4>공지사항</h4>
     
       <c:if test="${vo eq null}"> 
      <table width="700" border="1">
      <tr>
          <td align="right" colspan="5">
 		    <input type="button" value="전체목록" onclick="window.location='noticeList.do'" />
            <input type="button" value="글쓰기" onclick="window.location='noticeWriteForm.do'"/>
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
               
               <a align="center" href="noticeContent.do?num=${vo.num}&pageNum=${bp.cur_Page}">${vo.subject}</a>
  
            </td>
               <td align="center">${vo.writer}</td>
               <td align="center">${vo.regdate }</td>
            </tr>
         </c:forEach>
      </c:if>
      </table>
      <br/>
      <c:if test="${bp.isPre() }">
      <a href="noticeList.do?pageNum=${bp.getPage_Start()-bp.p_size}">[이전]</a>
      </c:if>
      <c:forEach var="counter" begin="${bp.getPage_Start() }" end="${bp.getPage_End() }">
      <c:if test="${search_text ne ''}">
      <a href="javascript:window.location='noticeList.do?pageNum=${counter }&search_type=${search_type}&search_text=${search_text}'">
      [${counter }]</a>
      </c:if>
      <c:if test="${search_text eq ''}">
      <a href="javascript:window.location='noticeList.do?pageNum=${counter }'">
      [${counter }]</a>
      </c:if>
      </c:forEach>
      <c:if test="${bp.isNext() }">
      <a href="noticeList.do?pageNum=${bp.getPage_Start()+bp.p_size }">[다음]</a>
      </c:if>
</c:if>
    
      <c:if test="${vo ne null}">
      	
<form method="post" name="writeForm">
<input type="hidden" name="num" value="${vo.num}" />
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
	<td align="center">${vo.regdate}</td>
</tr>
<tr>
	<td align="center">제목</td>
	<td align="center">${vo.subject}</td>
</tr>
<tr>
	<td align="center">내용</td>
	<td colspan="7" height="100"><pre>${vo.content}</pre></td>
</tr>
</table>

<!-- 수정삭제 바꺼라.. -->
<input type="button" value="글수정" onclick="window.location='noticeupdateForm.do?num=${vo.num}'" />
<input type="button" value="글삭제" onclick="window.location='noticedeleteForm.do?num=${vo.num}'" />
<input type="button" value="목록보기" onclick="window.location='noticeList.do'" />
</form>
      	
      </c:if>	
	  </div>
</div>


		<div id="qna_board" class="tabcontent">

		<h3> Q N A </h3>
		  <c:if test="${vo eq null}"> 
      <table width="700" border="1">
      <tr>
         <td align="right" colspan="5">
            <input type="button" value="전체목록" onclick="window.location='qnaList.do'" />
            <input type="button" value="글쓰기" onclick="window.location='qnaWriteForm.do'"/>
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
   			<label>답변- </label>
			</c:if>
               <a align="center" href="passConfirm.do?num=${qnaVo.num}&pageNum=${qnaBp.cur_Page}">${qnaVo.subject}</a>
               

            </td>
               <td align="center">${qnaVo.writer}</td>
               <td align="center">${qnaVo.regdate }</td>
            </tr>
         </c:forEach>
      </c:if>
      </table>
      <br/>
      <c:if test="${qnaBp.isPre() }">
      <a href="list.do?pageNum=${qnaBp.getPage_Start()-qnaBp.p_size}">[이전]</a>
      </c:if>
      <c:forEach var="counter" begin="${qnaBp.getPage_Start() }" end="${qnaBp.getPage_End() }">
 
      <a href="javascript:window.location='qnaList.do?pageNum=${qnaCounter}'">
      [${qnaCounter }]</a>
    
      </c:forEach>
      <c:if test="${qnaBp.isNext() }">
      <a href="qnaList.do?pageNum=${qnaBp.getPage_Start()+qnaBp.p_size }">[다음]</a>
      </c:if>
     </c:if>
   
		
		
		
		
		
		
		
		
		
		
		
		
		
		</div>



		<div id="free_board" class="tabcontent">
			cc
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
	</div>

	<footer>
		<br> <br>
		<div id="footer">
			<p id="about">
				Back to <a href="../jsp/myPage_home.jsp">main</a> / Go to <a
					href="../jsp/myMusic_list.jsp">Home</a>
			</p>
			<br>
			<hr />
			<table border="0" id="foot1" width="870" height="50">
				<tr>
					<td>회사소개&nbsp; |</td>
					<td>이용약관&nbsp; |</td>
					<td>개인정보처리방침&nbsp; |</td>
					<td>청소년보호정책&nbsp; |</td>
					<td>제휴/프로모션문의&nbsp; |</td>
					<td>이메일주소무단수집거부&nbsp; |</td>
					<td>파트너센터&nbsp; |</td>
					<td>사업자정보확인</td>
				</tr>
			</table>
			<table border="0" id="foot2" width="1000" height="80">
				<tr>
					<td>서울시 성동구 무학로2길 54 신방빌딩&nbsp; |</td>
					<td>대표 : 주민경,신가람,김한누리,최시온&nbsp; |</td>
					<td>사업자등록번호 : ***-**-*****&nbsp; |</td>
					<td>통신판매업 신고번호 : 제2017-서울성동-*****호</td>
				</tr>
				<tr>
					<td>문의전화(평일 13:00~15:00) : 1588-0000&nbsp; |</td>
					<td>이메일 : mymusic_som@gmail.com&nbsp; |</td>
					<td colspan="2" align="left">ⓒ2017. SOM Entertainment, Inc,
						ALL RIGHTS RESERVED.</td>
				</tr>
			</table>
			<br> <br>
		</div>
	</footer>

	<script>
	function a(){
		window.location='qnaList.do';
	}
	function b(){
		window.location='noticeList.do';
	}
		function openCity(evt, cityName) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
						tabcontent[i].style.display = "none";
			}
			document.getElementById(cityName).style.display="block";
			
		}
			
		//	tabcontent = document.getElementsByClassName("tabcontent");
		//	for (i = 0; i < tabcontent.length; i++) {
		//		tabcontent[i].style.display = "none";
		//	}
		//	tablinks = document.getElementsByClassName("tablinks");
		//	for (i = 0; i < tablinks.length; i++) {
		//		tablinks[i].className = tablinks[i].className.replace(
		//				" active", "");
		//	}
		//	document.getElementById(cityName).style.display = "block";
		//	evt.currentTarget.className += " active";
		//}

		//document.getElementById("defaultOpen").click();
	</script>
</body>
</html>
