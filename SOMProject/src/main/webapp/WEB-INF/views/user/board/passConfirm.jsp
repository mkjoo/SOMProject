<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
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
</head>
<body>
<form method="GET" action="qnaContent.do">
<input type="hidden" name="num" value="${num}" />
<table>
<tr>
	<td>비번을 입력하세요</td>
</tr>
<tr>
	<td><input type="password" name="pass" ></td>
	<td><input type="submit" value="글보기"></td>
</tr> 
</table>
</form>
</body>
</html>