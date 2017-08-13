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
function check(value){
	if(value=="success"){
		alert("삭제됬습니다.");
	}
}

window.onload=check("${value}");

</script>
</head>

<body>

<form method="post" name="writeForm" action="qnaUpdateProc.do">

<input type="hidden" name="num" value="${num}">
<table width="450" border="1">
<tr>
	<td align="center">작성자</td>
	<td><input type="text" name="writer" value="${vo.writer}"></td>
</tr>
<tr>
	<td>비밀번호</td>
	<td width="145"><input type="password" name="pass" value="${vo.pass}"></td>	
</tr>
<tr>
	<td>이메일</td>
	<td><input type="text" size="60" name="email" value="${vo.email}"></td>
</tr>
<tr>
	<td>제목</td>
	<td><input type="text" size="60" name="subject" value="${vo.subject}"></td>
</tr>
<tr>
	<td>내용</td>
	<td><textarea name="content" rows="13" cols="60" >${vo.content}</textarea></td>
</tr>
</table>
</form>
<input type="button" value="글수정" onclick="writeCheck()">
<input type="button" value="목록보기" onclick="window.location='qnaList.do'" />

</body>
</html>