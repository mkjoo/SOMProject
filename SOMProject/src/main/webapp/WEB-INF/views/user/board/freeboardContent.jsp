<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
function writeCheck(){
	document.writeForm.submit();
}
function hide(){
	var x = document.getElementById('dropbutton');
	x.style.display='none';
}

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
<link href="/som/css/myPage/myPage_style.css" rel="stylesheet" type="text/css">
<link href="/som/css/board/board_style.css" rel="stylesheet" type="text/css">

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
	<td align="center">${vo.readcount}</td>
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
<c:if test="${vo.writer eq name}">
<input type="button" value="글수정" onclick="window.location='freeBoardUpdateForm.do?num=${vo.num}'" />
<input type="button" value="글삭제" onclick="window.location='freeBoardDeleteProc.do?num=${vo.num}'" />
</c:if>
<input type="button" value="목록보기" onclick="window.location='freeboardList.do'" />
</form>

<!-- 포문돌려서 댓글찍기 -->
<c:forEach var="commentList" items="${list}" varStatus="number">
	<div id="comment">
		${commentList.name}   /     ${commentList.content}     /     ${commentList.regdate} 
		
	<c:if test="${name eq commentList.name}">
	<input type="button" value="삭제" onclick="window.location='deleteComment.do?cnum=${commentList.cnum}&num=${commentList.num}'">
	<input type="button" value="수정" onclick="window.location='updateCommentForm.do?cnum=${commentList.cnum}&num=${commentList.num}&name=${commentList.name}&content=${commentList.content}'">
	</c:if>
	</div>
</c:forEach>
<br><br>
<c:if test="${name ne noLogin}">
<form action="insertComment.do" method="get">
<input type="hidden" name="num" value="${vo.num}">
<input type="hidden" name="name" value="${name}">
이름: <label>${name}</label>
<textarea name="content" cols="30" rows="4" ></textarea>
<input type="submit" value="댓글등록">
</form>
</c:if>    

</div>

	<!-- footer -->


	<script src="/som/js/main/slider.js" type="text/javascript"></script>
</body>
</html>