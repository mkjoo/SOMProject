<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
div#comment {
	display : block;
	width: 100%;
	height: 30px;
}
div.commentField {
	border : solid 2px #ddd;
	float : right;
	width : 80%;
	margin : 5% 0 5% 0;
	padding : 10px 0 10px 0;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판</title>
<script>
	function hide() {
		var x = document.getElementById('dropbutton');
		x.style.display = 'none';
	}
	function writeCheck() {
		document.writeForm.submit();
	}
	function myFunction2() {
		document.getElementById("myDropdown2").classList.toggle("show");
	}
	window.onclick = function(event) {
		if (!event.target.matches('.dropbtn2')) {

			var dropdowns = document
					.getElementsByClassName("dropdown2-content2");
			var i;
			for (i = 0; i < dropdowns.length; i++) {
				var openDropdown = dropdowns[i];
				if (openDropdown.classList.contains('show')) {
					openDropdown.classList.remove('show');
				}
			}
		}
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
	<!-- header -->
	<header>
	<div class="header_menu">
		<jsp:include page="../main/u_header.jsp" flush="false" />
	</div>
	</header>

	<!-- The Modal -->
	<div id="myModal" class="modal">

		<!-- Modal content -->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close">
					<span aria-hidden="true">&times;</span>
				</button>

				<h4 class="modal-title" id="myModalLabel">Login Page</h4>
			</div>

			<div class="modal-body">
				<div class="login-container animated fadeInDown bootstrap snippets">
					<div class="loginbox bg-white">
						<div class="loginbox-title">Log In</div>
						<div class="loginbox-social">
							<div class="social-title ">sns 계정으로 LogIn 하기</div>
							<div class="social-buttons">
								<a href="" class="button-facebook"> <i
									class="social-icon fa fa-facebook"></i>
								</a> <a href="" class="button-twitter"> <i
									class="social-icon fa fa-twitter"></i>
								</a> <a href="" class="button-google"> <i
									class="social-icon fa fa-google-plus"></i>
								</a>
							</div>
						</div>
						<div class="loginbox-or">
							<div class="or-line"></div>
							<div class="or">OR</div>
						</div>
						<form method="post" action="loginProc.do">
							<div class="loginbox-textbox">
								<input type="text" name="email" class="form-control"
									placeholder="Email">
							</div>
							<div class="loginbox-textbox">
								<input type="text" name="pass" class="form-control"
									placeholder="Password">
							</div>

							<div class="loginbox-submit">
								<input type="submit" class="btn btn-primary btn-block"
									value="Login">
							</div>
						</form>
						<div class="loginbox-forgot">
							<a href="">ID/Password 찾기</a>
						</div>


						<div class="loginbox-signup">
							<button onclick="openSignUp()">회원가입</button>
						</div>
					</div>
					<div class="logobox"></div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>

	</div>

	<script type="text/javascript" src="/som/js/main/modal.js"></script>



	<!-- navigation -->
	<nav>
	<h2>게시판 목록</h2>
	</nav>

	<hr style="width: 90%; margin-left: 40px" />
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

		<div id="free_board" class="tabcontent">

			<form method="post" name="writeForm">
				<input type="hidden" name="num" value="${vo.num}" />
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
						<td align="center">${vo.readcount}</td>
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

				<!-- 수정삭제 바꺼라.. -->
				<c:if test="${vo.writer eq name}">
					<table width="230" id="write_btn"
						style="float: right; margin-top: 5px; padding: 0">
						<colgroup>
							<col width="75"></col>
							<col width="60"></col>
							<col width="90"></col>
						</colgroup>
						<tr align="center">
							<td><input type="button" value="글수정"
								onclick="window.location='freeBoardUpdateForm.do?num=${vo.num}'">
							</td>
							<td><input type="button" value="글삭제"
								onclick="window.location='freeBoardDeleteProc.do?num=${vo.num}'">
							</td>
							<td><input type="button" value="목록보기"
								onclick="window.location='freeboardList.do'"></td>
						</tr>
					</table>
				</c:if>
			</form>

			<!-- 포문돌려서 댓글찍기 -->
			<div class="commentField">
				<c:forEach var="commentList" items="${list}" varStatus="number">
					<div id="comment">
						<form action="updateCommentProc.do" method="get">
							<c:if test="${cnum == commentList.cnum}">
								<table width="100%" style="border-bottom: solid 1px #ccc">
									<colgroup>
										<col width="110"></col>
										<col width=""></col>
										<col width="240"></col>
										<col width="40"></col>
										<col width="40"></col>
									</colgroup>
									<tr>
										<td align="right"><input type="hidden" name="cnum"
											value="${commentList.cnum}">
											${commentList.name}&nbsp;:</td>
										<td><input type="hidden" name="num"
											value="${commentList.num}"> &nbsp;<input type="text"
											name="content" value="${commentList.content}" size="25">
										</td>
										<td><input type="hidden" name="name"
											value="${commentList.name}"> ${commentList.regdate}</td>
										<td align="center">
											<input type="button" value="수정">
										</td>
										<td align="center">
											<input type="button" value="취소" onclick="window.location='freeboardList.do'">
										</td>
									</tr>
								</table>
							</c:if>
						</form>

						<c:if test="${cnum != commentList.cnum}">
							<c:if test="${name eq commentList.name}">
								<table width="100%" style="border-bottom: solid 1px #ccc">
									<colgroup>
										<col width="110"></col>
										<col width=""></col>
										<col width="240"></col>
										<col width="40"></col>
										<col width="40"></col>
									</colgroup>
									<tr>
										<td align="right">${commentList.name}&nbsp;:</td>
										<td>&nbsp;${commentList.content}</td>
										<td>${commentList.regdate}</td>
										<td align="center"><input type="button" value="삭제"
											onclick="window.location='deleteComment.do?cnum=${commentList.cnum}&num=${commentList.num}'">
										</td>
										<td align="center"><input type="button" value="수정"
											onclick="window.location='updateCommentForm.do?cnum=${commentList.cnum}&num=${commentList.num}&name=${commentList.name}&content=${commentList.content}'">
										</td>
									</tr>
								</table>
							</c:if>
						</c:if>
					</div>
				</c:forEach>
				<br>

				<!-- 댓글폼 -->
				<form action="insertComment.do" method="get">
					<table width="95%"
						style="float: right; padding: 0 0 10px 0; margin-right: 1%">
						<colgroup>
							<col width=""></col>
							<col width=""></col>
							<col width=""></col>
						</colgroup>
						<tr>
							<td><input type="hidden" name="num" value="${vo.num}">
								<input type="hidden" name="name" value="${writer}"><label>${writer}
									: </label></td>
							<td rowspan="3" align="center"><textarea name="content"
									cols="70" rows="6">${commentVo.content}</textarea></td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td><input type="submit" value="댓글등록"></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>


	<!-- footer -->
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

	<script src="/som/js/main/slider.js" type="text/javascript"></script>
</body>
</html>