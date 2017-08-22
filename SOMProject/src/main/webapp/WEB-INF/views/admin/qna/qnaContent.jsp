<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>앨범 업로드</title>
<link type="text/css" rel="stylesheet" href="../htmls/myPage_style.css">
<script>
function writeCheck(){
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
<form method="GET" name="writeForm" action="adminQnaReplyWriteForm.mdo">
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
	<td colspan="7" height="100"><pre>${vo.content}</pre></td>
</tr>
</table>

<input type="button" value="글수정" onclick="window.location='adminQnaUpdateForm.mdo?num=${vo.num}'" />
<input type="button" value="글삭제" onclick="window.location='adminQnaDeleteProc.mdo?num=${vo.num}'" />
<input type="button" value="목록보기" onclick="window.location='adminQnaList.mdo'" />
<input type="button" value="답글쓰기" onclick="writeCheck()" />
</form>
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