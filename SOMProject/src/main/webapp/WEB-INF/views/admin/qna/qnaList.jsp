<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Q&A게시판-관리자-</title>
<script type="text/javascript" src="/som/js/main/slider.js"></script>
<script type="text/javascript" src="/som/js/main/login.js"></script>
<script type="text/javascript" src="/som/js/main/menu.js"></script>
<script type="text/javascript" src="/som/js/main/signUp.js"></script>

<link href="/som/css/main/modal.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/login.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/slider.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/content.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/footer.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/menu.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/mp_header.css" rel="stylesheet" type="text/css">
<link href="/som/css/myPage/myPage_style.css" rel="stylesheet" type="text/css">
<link href="/som/css/board/board_style.css" rel="stylesheet" type="text/css">

</head>
<body>
	<header>
		<div class="header_menu">
			<jsp:include page="../a_header.jsp" flush="false" />
		</div>
	</header>

	<div id="board_divide">
		<jsp:include page="../admin_tab.jsp" flush="false" />
		
		<div id="qna_board" class="admin_tabcontent">
			<h4>Q&A게시판</h4>
			<table id="write_btn" width="100%" cellspacing="1">
				<tr height="40">
					<td align="right">
					</td>
				</tr>
			</table>
			<table width="100%" border="1" cellspacing="2">
				<colgroup>
					<col width="40"></col>
					<col width="380"></col>
					<col width="90"></col>
					<col width="120"></col>
					<col width="50"></col>
				</colgroup>
				<tr id="tr_head" align="center">
					<td>번호</td>
					<td>제목</td>
					<td>작성자</td>
					<td>작성일</td>
					<td>비고</td>
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
							<td align="center">${qnaNumber}<c:set var="qnaNumber"
									value="${qnaNumber-1 }" scope="page" /></td>
							<td align="left"><c:if test="${qnaVo.depth>0}">
								<img src="/som/images/main/reply.png" width="13" height="13">
								</c:if> <a align="center"
								href="adminQnaContent.mdo?num=${qnaVo.num}&pageNum=${qnaBp.cur_Page}">${qnaVo.subject}</a>
							</td>
							<td align="center">${qnaVo.writer}</td>
							<td align="center">${qnaVo.formatdate}</td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
			<br />
			<div class="pagination">
				<c:if test="${qnaBp.isPre() }">
					<a
						href="adminQnaList.mdo?pageNum=${qnaBp.getPage_Start()-qnaBp.p_size}">[이전]</a>
				</c:if>
				<c:forEach var="counter" begin="${qnaBp.getPage_Start() }"
					end="${qnaBp.getPage_End() }">

					<a
						href="javascript:window.location='adminQnaList.mdo?pageNum=${counter}'">
						[${counter}]</a>

				</c:forEach>
				<c:if test="${qnaBp.isNext() }">
					<a
						href="adminQnaList.mdo?pageNum=${qnaBp.getPage_Start()+qnaBp.p_size }">[다음]</a>
				</c:if>
			</div>
		</div>
	</div>

	<footer>
		<hr>
		<div class="">
			<div class="">Copyright ⓒ 2017 Apple Inc. 모든 권리 보유.</div>
			<div class="">
				<a class="" href="">개인정보 취급방침</a> <a class="" href="">약관</a> <a
					class="" href="">판매 및 환불</a> <a class="" href="">법적 고지</a> <a
					class="" href="">사이트 맵</a>
			</div>
		</div>
		<br />
		<p style="margin-top: -20px; margin-bottom: 20px; color: #999;">
			<span style="white-space: nowrap;">사업자등록번호 : 120-95-0515 |</span> <span
				style="white-space: nowrap;">통신판매업신고번호 : 제 2011-서울강서-95051호 |</span>
			<span style="white-space: nowrap;">대표이사 : Swanson Choi |</span> <span
				style="white-space: nowrap;">주소 : 서울 특별시 강서구 가로공원로 184-11 |</span> <span
				style="white-space: nowrap;">대표전화 : 010-9252-2095 |</span> <span
				style="white-space: nowrap;">팩스 : 02-9252-2095</span>
		</p>
		</footer>
</body>
</html>