<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function writeCheck(){
	document.writeForm.submit();
}
</script>
</head>

<body>

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

<input type="button" value="글수정" onclick="window.location='qnaUpdateForm.do?num=${vo.num}'" />
<input type="button" value="글삭제" onclick="window.location='qnaDeleteProc.do?num=${vo.num}'" />
<input type="button" value="목록보기" onclick="window.location='qnaList.do'" />
<input type="button" value="답글쓰기" onclick="writeCheck()" />
</form>
</body>
</html>