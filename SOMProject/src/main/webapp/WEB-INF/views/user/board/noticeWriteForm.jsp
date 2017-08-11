<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
function writeCheck(){
	document.writeForm.submit();
}
</script>
</head>

<body>
<form method="post" name="writeForm" action="noticeWriteProc.do" >
<table width="450" border="1">
<tr>
	<td align="center">작성자</td>
	<td><input type="text" name="writer" value="${writer}"></td>
</tr>
<tr>
	<td>비밀번호</td>
	<td width="145"><input type="password" name="pass" value="${pass}"></td>	
</tr>
<tr>
	<td>이메일</td>
	<td><input type="text" size="60" name="email" value="${email}"></td>
</tr>
<tr>
	<td>제목</td>
	<td><input type="text" size="60" name="subject" value="${subject}"></td>
</tr>
<tr>
	<td>내용</td>
	<td><textarea name="content" rows="13" cols="60" ></textarea></td>
</tr>
</table>
<input type="button" value="글쓰기" onclick="writeCheck()">
<input type="button" value="목록보기" onclick="window.location='noticeList.do'" />
</form>
</body>
</html>
