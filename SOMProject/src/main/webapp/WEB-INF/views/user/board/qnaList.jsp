<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Q&A 게시판</title>
<script>
	function hide() {
		var x = document.getElementById('dropbutton');
		x.style.display = 'none';
	}

	window.onload = loginResult("${result}");
	hide();

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

	function passCheck(value) {
		if (value == "successDelete") {
			alert("삭제되었습니다.");
		}
		if (value == "passerror") {
			alert("비번이틀립니다.")
		}
	}
	window.onload = passCheck("${value}");
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

		<div id="qna_board" class="tabcontent">

			<h4>QnA게시판</h4>
			<table id="write_btn" width="100%" cellspacing="1">
				<tr height="40">
					<td align="right">
						<button onclick="window.location='qnaWriteForm.do'">글쓰기</button>&nbsp;
						<button onclick="window.location='qnaBoardList.do'">전체목록</button>
					</td>
				</tr>
			</table>
			<table width="100%" border="1" cellspacing="2">
				<colgroup>
					<col width="40"></col>
					<col width="380"></col>
					<col width="90"></col>
					<col width="*"></col>
				</colgroup>
				<tr id="tr_head" align="center">
					<td>번호</td>
					<td>제목</td>
					<td>작성자</td>
					<td>작성일</td>
					<td>비고</td>
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
							<td align="center">${number}<c:set var="number"
									value="${number-1 }" scope="page" /></td>
							<td align="left"><c:if test="${vo.depth>0}">
									<img src="/som/images/main/reply.png" width="13" height="13">
								</c:if> <a align="center"
								href="passConfirm.do?num=${vo.num}&pageNum=${bp.cur_Page}">${vo.subject}</a>
							</td>
							<td align="center">${vo.writer}</td>
							<td align="center">${vo.formatdate}</td>
							<td align="center">${vo.commentOX}<c:if test="${vo.commentOX eq null}">답변없음</c:if></td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
			<br />
			<div class="pagination">
				<c:if test="${bp.isPre() }">
					<a href="qnaList.do?pageNum=${bp.getPage_Start()-bp.p_size}">[이전]</a>
				</c:if>
				<c:forEach var="counter" begin="${bp.getPage_Start() }"
					end="${bp.getPage_End() }">
					<c:if test="${search_text ne ''}">
						<a
							href="javascript:window.location='qnaList.do?pageNum=${counter }&search_type=${search_type}&search_text=${search_text}'">
							[${counter }]</a>
					</c:if>
					<c:if test="${search_text eq ''}">
						<a
							href="javascript:window.location='qnaList.do?pageNum=${counter }'">
							[${counter }]</a>
					</c:if>
				</c:forEach>
				<c:if test="${bp.isNext() }">
					<a href="noticeList.do?pageNum=${bp.getPage_Start()+bp.p_size }">[다음]</a>
				</c:if>
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