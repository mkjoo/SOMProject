<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
function hide(){
	var x = document.getElementById('dropbutton');
	x.style.display='none';
}

window.onload = loginResult("${result}");hide();

function myFunction2() {
    document.getElementById("myDropdown2").classList.toggle("show");
}
window.onclick = function(event) {
	  if (!event.target.matches('.dropbtn2')) {

	    var dropdowns = document.getElementsByClassName("dropdown2-content2");
	    var i;
	    for (i = 0; i < dropdowns.length; i++) {
	      var openDropdown = dropdowns[i];
	      if (openDropdown.classList.contains('show')) {
	        openDropdown.classList.remove('show');
	      }
	    }
	  }
	}
function passCheck(value){
	if(value=="successDelete"){
		alert("삭제됬습니다.");
		window.location="list.do";
	}
	if(value=="passerror"){
		alert("비번이틀립니다.")
	}
}
window.onload=passCheck("${value}");
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
<link type="text/css" rel="stylesheet" href="/som/css/myPage/myPage_style.css">
<link href="/som/css/board/board.css" rel="stylesheet" type="text/css">

</head>

<body>
	<!-- header -->
	<header>
	<div class="header_menu">
		<jsp:include page="../main/u_header.jsp" flush="false"/>
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
	<nav>
		<h2>게시판 목록</h2>
	</nav>
	
	<hr style="width: 90%; margin-left: 40px" />
	<div id="board_content">
		<div class="tab">
			<button class="tablinks" onclick="window.location='noticeList.do'">공지사항</button>				
			<button class="active" onclick="window.location='qnaList.do'">QNA</button>
			<button class="tablinks" onclick="window.location='freeboardList.do'">자유게시판</button>
		</div>
				
		<div id="notice_board" class="tabcontent">
		


<form method="GET" name="writeForm" action="qnaReplyWriteForm.do">
<input type="hidden" name="num" value="${vo.num}" />
<input type="hidden" name="ref" value="${vo.ref}" />
<input type="hidden" name="step" value="${vo.step}" />
<input type="hidden" name="depth" value="${vo.depth}" />
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
	<td colspan="7" height="100"><pre>${vo.content}</pre></td>
</tr>
</table>
<c:if test="${memberVO.email eq vo.email}">
<input type="button" value="글수정" onclick="window.location='qnaUpdateForm.do?num=${vo.num}'" />
<input type="button" value="글삭제" onclick="window.location='qnaDeleteProc.do?num=${vo.num}'" />
</c:if>
<input type="button" value="목록보기" onclick="window.location='qnaList.do'" />


     
	</nav>

	<content>
	
	</content>

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