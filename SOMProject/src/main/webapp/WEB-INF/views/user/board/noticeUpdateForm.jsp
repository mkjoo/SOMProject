<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 게시판</title>
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
<link href="/som/css/myPage/myPage_style.css" rel="stylesheet" type="text/css">
<link href="/som/css/board/board_style.css" rel="stylesheet" type="text/css">
<script>
	function writeCheck() {
		document.writeForm.submit();
	}
	function check(value) {
		if (value == "success") {
			alert("삭제되었습니다.");
		}
	}
	window.onload = check("${value}");
</script>
</head>

<body>
	<div id="board_content">
		<div class="board_tab">
			<table width="120" height="80">
				<tr>
					<td><a onclick="window.location='noticeList.do'">공지사항</a></td>
				</tr>
				<tr>
					<td><a onclick="window.location='qnaList.do'">Q&A</a></td>
				</tr>
				<tr>
					<td><a onclick="window.location='freeboardList.do'">자유게시판</a></td>
				</tr>
			</table>
		</div>
		<div id="notice_board" class="tabcontent">

			<h4>공지사항</h4>
			<table id="write_btn" width="100%" cellspacing="1">
				<tr height="40">
					<td align="right">
						<button onclick="window.location='noticeList.do'">전체목록</button>
					</td>
				</tr>
			</table>
			<form method="post" name="writeForm" action="noticeUpdateProc.do">

				<input type="hidden" name="num" value="${vo.num}">
				<table width="100%" border="1" cellspacing="2">
					<colgroup>
						<col width="80"></col>
						<col width="400"></col>
					</colgroup>
					<tr>
						<td align="center">작성자</td>
						<td><input type="text" name="writer" value="${vo.writer}"></td>
					</tr>
					<tr>
						<td>제목</td>
						<td><input type="text" size="60" name="subject"
							value="${vo.subject}"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea name="content" cols="70" rows="20%">${vo.content}</textarea></td>
					</tr>
				</table>
				<table width="180" id="write_btn"
					style="float: right; margin-top: 5px; padding: 0">
					<colgroup>
						<col width="75"></col>
						<col width="85"></col>
					</colgroup>
					<tr>
						<td><input type="submit" value="글수정" onclick="writeCheck()">
						</td>
						<td><input type="button" value="목록보기" onclick="window.location='noticeList.do'"/></td>
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
				style="white-space: nowrap;">통신판매업신고번호 : 제 2011-서울강서-95051호 |</span>
			<span style="white-space: nowrap;">대표이사 : Swanson Choi |</span> <span
				style="white-space: nowrap;">주소 : 서울 특별시 강서구 가로공원로 184-11 |</span> <span
				style="white-space: nowrap;">대표전화 : 010-9252-2095 |</span> <span
				style="white-space: nowrap;">팩스 : 02-9252-2095</span>
		</p>
	</footer>
</body>
</html>