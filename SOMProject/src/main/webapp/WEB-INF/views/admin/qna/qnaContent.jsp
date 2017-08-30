<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Q&A 게시판</title>
<script>
	function writeCheck() {
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
			<form method="GET" name="writeForm" action="adminQnaReplyWriteForm.mdo">
				<input type="hidden" name="num" value="${vo.num}" /> 
				<input type="hidden" name="ref" value="${vo.ref}" />
				<input type="hidden" name="step" value="${vo.step}" />
				<input type="hidden" name="depth" value="${vo.depth}" />
				<table width="100%" border="1" cellspacing="2">
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
						<td align="center">이메일</td>
						<td align="center">${vo.email}</td>
					</tr>
					<tr>
						<td align="center">제목</td>
						<td align="center">${vo.subject}</td>
					</tr>
					<tr>
						<td align="center">내용</td>
						<td colspan="7" height="300"><pre>${vo.content}</pre></td>
					</tr>
				</table>
				<table width="300" id="write_btn" style="float:right; margin-top:5px; padding:0">
					<colgroup>
						<col width="70"></col>
						<col width="50"></col>
						<col width="80"></col>
						<col width="80"></col>
					</colgroup>
					<tr align="center">
						<td>
							<button onclick="window.location='adminQnaUpdateForm.mdo?num=${vo.num}'">글수정</button>
						</td>
						<td>
							<button onclick="window.location='adminQnaDeleteProc.mdo?num=${vo.num}'">삭제</button>
						</td>
						<td>
							<button onclick="window.location='adminQnaList.mdo'">목록보기</button>
						</td>
						<td>
							<button onclick="writeCheck()">답글쓰기</button>
						</td>
					</tr>
				</table>
			</form>
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
					style="white-space: nowrap;">통신판매업신고번호 : 제 2011-서울강서-95051호
					|</span> <span style="white-space: nowrap;">대표이사 : Swanson Choi |</span> <span
					style="white-space: nowrap;">주소 : 서울 특별시 강서구 가로공원로 184-11 |</span>
				<span style="white-space: nowrap;">대표전화 : 010-9252-2095 |</span> <span
					style="white-space: nowrap;">팩스 : 02-9252-2095</span>
			</p>
		</footer>
</body>
</html>